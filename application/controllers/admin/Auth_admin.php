<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_admin extends CI_Controller

{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function register()
    {
        //falidasi form
        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('username', 'username', 'required|trim');
        $this->form_validation->set_rules('password1', 'password1', 'required|trim|matches[password2]');
        $this->form_validation->set_rules('password2', 'password2', 'required|trim|matches[password1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('admin/register.php');
        } else {
            //menyiapkan data 
            $data = [
                'name'          => $this->input->post('name'),
                'username'      => $this->input->post('username'),
                'password'      => password_hash($this->input->post('password1'), PASSWORD_DEFAULT)

            ];

            //memasukkan data ke dalam database
            $this->db->insert('tb_akun', $data);
            //alert jika data berhasil dimasukkan
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">
            Selamat, anda sudah terdaftar!</div>');

            redirect('admin/Auth_admin/login');
        }
    }


    public function login()
    {
        //falidasi form 
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {

            $this->load->view('admin/login.php');
        } else {

            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $user = $this->db->get_where('tb_akun', ['username' => $username])->row_array();


            if ($user) {
                if (password_verify($password, $user['password'])) {

                    $data = [
                        'username' => $user['username'],
                        'id' => $user['id']
                    ];

                    $this->session->set_userdata($data);

                    redirect('admin/Dashboard');
                } else {

                    $this->session->set_flashdata('pesan', '<div class="alert alert-warning" role="alert">password anda salah!!</div>');
                    redirect('admin/Auth_admin/login');
                }
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-warning" role="alert">username salah, anda belum mendaftar</div>');
                redirect('admin/Auth_admin/login');
            }
        }
    }

    public function log_out()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('id');
        $this->session->set_flashdata('pesan', '<div class="alert alert-warning" role="alert">anda berhasil keluar!!</div>');
        redirect('admin/Auth_admin/login');
    }
}
