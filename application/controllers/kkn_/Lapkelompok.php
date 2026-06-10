<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lapkelompok extends CI_Controller
{

    public function index()
    {
        $data['user'] = $this->db->get_where('tb_user_klmp', ['no_kelompok' => $this->session->userdata('no_kelompok')])->row_array();

        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('tamplate/kkn_navbar.php', $data);
        $this->load->view('kkn_backend/lapkelompok');
        $this->load->view('tamplate/kkn_footer.php');
    }

    public function lapinput()
    {
        var_dump($data);
        die;
        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('tamplate/kkn_navbar.php');
        $this->load->view('kkn_backend/inputlap');
        $this->load->view('tamplate/kkn_footer.php');
    }
}
