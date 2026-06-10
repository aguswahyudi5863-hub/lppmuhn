<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function kkn_login()
    {
        //falidasi form kalau kosong
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/home_header.php');
            $this->load->view('tamplate/home_navbar.php');
            $this->load->view('home/kkn/login.php');
            $this->load->view('tamplate/home_footer.php');
        } else {

            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $user = $this->db->get_where('tb_user_klmp', ['username' => $username])->row_array();

            if ($user) {
                if (password_verify($password, $user['password'])) {

                    $data = [
                        'no_kelompok' => $user['no_kelompok'],
                        'desa' => $user['desa']
                    ];

                    $this->session->set_userdata($data);

                    redirect('kkn/Lapkelompok');
                } else {

                    $this->session->set_flashdata('pesan', '<div class="alert alert-warning" role="alert">password anda salah!!</div>');
                    redirect('kkn/Auth/kkn_login');
                }
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-warning" role="alert">username salah, anda belum mendaftar</div>');
                redirect('kkn/Auth/kkn_login');
            }
        }
    }

    public function kkn_reg_klmp()
    {
        // form validasi
        $this->form_validation->set_rules('no_kelompok', 'No Kelompok', 'required|trim');
        $this->form_validation->set_rules('desa', 'Desa', 'required|trim');
        $this->form_validation->set_rules('hp', 'Hp', 'required|trim');
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password1', 'Password1', 'required|trim|matches[password2]');
        $this->form_validation->set_rules('password2', 'Password2', 'required|trim|matches[password1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/home_header.php');
            $this->load->view('tamplate/home_navbar.php');
            $this->load->view('home/kkn/reg_klmp.php');
            $this->load->view('tamplate/home_footer.php');
        } else {
            // menerima inputan form
            $data = [
                'no_kelompok' => $this->input->post('no_kelompok'),
                'desa' => $this->input->post('desa'),
                'hp' => $this->input->post('hp'),
                'username' => $this->input->post('username'),
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'date_created' => time()

            ];
            //input ke database 
            $this->db->insert('tb_user_klmp', $data);

            // membuat alert sukses input
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Regristrasi Berhasil!!!!</div>');
            redirect('kkn/Auth/kkn_login');
        }
    }

    public function log_out()
    {
        $this->session->unset_userdata('no_kelompok');
        $this->session->unset_userdata('desa');
        // membuat alert sukses log out
        $this->session->set_flashdata('pesan', '<div class="alert alert-info" role="alert">Anda Berhasil Keluar</div>');
        redirect('kkn/Kkn/home_kkn');
    }
}
