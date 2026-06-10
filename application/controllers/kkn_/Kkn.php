<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kkn extends CI_Controller
{
    public function __construct(){
		parent::__construct();   
        $this->load->model('m_prodi');
        $this->load->model('m_akun_mhs');
    }

    public function home_kkn()
    {
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/kkn/homekkn.php');
        $this->load->view('tamplate/home_footer.php');
    }

    public function kkn_pendaftaran()
    {
        $data['data_prodi'] = $this->m_prodi->get_prodi();
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/kkn/pendaftaran.php',$data);
        $this->load->view('tamplate/home_footer.php');
    }

    public function create_akun(){
        $input = array(
            'nim' => $this->input->post('nim'),
            'nama' => $this->input->post('nama'),
            'no_hp' => $this->input->post('no_hp'),
            'email' => $this->input->post('email'),
            'alamat' => $this->input->post('alamat'),
            'prodi' => $this->input->post('prodi'),
            'password' => $this->input->post('password'),
        );

        $check_akun = $this->m_akun_mhs->check_akun($input['nim']);
        if($check_akun > 0){
            $response = array(
                'sts' => 'false',
                'msg' => 'Nim '.$input['nim'].' Sudah terdaftar !'
            );
        }else{
            $create_akun = $this->m_akun_mhs->create_akun($input);
            if($create_akun){
                $response = array(
                    'sts' => 'true',
                    'msg' => 'Berhasil membuat akun'
                );
            }else{
                $response = array(
                    'sts' => 'false',
                    'msg' => 'Gagal membuat akun'
                );
            }
        }
        
        echo json_encode($response);
       
    }
}
