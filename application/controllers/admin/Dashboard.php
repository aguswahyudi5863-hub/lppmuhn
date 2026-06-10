<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('id') == null) {
            redirect('admin/Auth_admin/login');
        }
    }
    public function index()
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        $this->load->view('tamplate/admin_header.php', $data);
        $this->load->view('tamplate/admin_sidebar.php', $data);
        $this->load->view('tamplate/admin_topbar.php', $data);
        $this->load->view('admin/dashboard.php', $data);
        $this->load->view('tamplate/admin_footer.php', $data);
    }
}
