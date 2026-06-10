<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_news');
        $this->load->model('M_announcement');
    }


    public function index()
    {

        //ambil data leader
        $data['dataleader'] = $this->db->get_where('tb_leader')->row_array();
        $data['dataannouncemet'] = $this->M_announcement->get_data_announcement2();


        $rows = $this->db->get('tb_news')->num_rows();

        // membuat paginatioan
        $this->load->library('pagination');

        //fungsi search
        if ($this->input->post('submit')) {
            $data['keyword'] = $this->input->post('keyword');
            // $this->session->set_userdata('keyword', $data['keyword']);
        } else {
            $data['keyword'] = null;
        }


        $config['base_url'] = 'http://localhost/lppm-uhn/Home/index';
        //menentukan jumlah data yang ditampilkan baik menggunakan search atau tidak
        $this->db->like('judul', $data['keyword']);
        $this->db->from('tb_news');
        $config['total_rows'] = $this->db->count_all_results();
        $config['per_page'] = 8;
        $data['start'] = $this->uri->segment(3);

        //styl pagination
        $config['full_tag_open'] = '<nav><ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '<nav><ul class="pagination">';

        $config['first_link'] = 'first';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';

        $config['last_link'] = 'Last';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>';

        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';

        $config['prev_link'] = '&raquo';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';

        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
        $config['cur_tag_close'] = '</a></li>';

        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';

        $config['attributes'] = array('class' => 'page-link');





        //initialize paginatioan
        $this->pagination->initialize($config);
        // ambil data news
        $data['datanews'] = $this->M_news->get_data_news($config['per_page'], $data['start'], $data['keyword']);
        // $data['datanews'] = $this->db->get('tb_news', $config['per_page'], $data['start'])->result_array();


        $this->load->view('tamplate/home_header.php', $data);
        $this->load->view('tamplate/home_navbar.php', $data);
        $this->load->view('home/index', $data);
        $this->load->view('tamplate/home_footer.php', $data);
    }

    public function visi_misi()
    {
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/visi_misi');
        $this->load->view('tamplate/home_footer.php');
    }

    public function sambutan()
    {
        $data['leader'] = $this->db->get_where('tb_leader')->row_array();
        $this->load->view('tamplate/home_header.php', $data);
        $this->load->view('tamplate/home_navbar.php', $data);
        $this->load->view('home/sambutan', $data);
        $this->load->view('tamplate/home_footer.php', $data);
    }

    public function struktur()
    {
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/struktur');
        $this->load->view('tamplate/home_footer.php');
    }

    public function detail_news($slug)
    {
        $data['datanews'] = $this->db->get_where('tb_news', ['slug' => $slug])->row_array();
        $data['dataannouncemet'] = $this->M_announcement->get_data_announcement();



        //mengambil data untuk tampilan ketua
        $data['leader'] = $this->db->get_where('tb_leader')->row_array();
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/detail_news', $data);
        $this->load->view('tamplate/home_footer.php');
    }

    public function team()
    {
        //ambil data news
        $data['datateam'] = $this->db->get_where('tb_team')->result_array();
        $this->load->view('tamplate/home_header.php', $data);
        $this->load->view('tamplate/home_navbar.php', $data);
        $this->load->view('home/team', $data);
        $this->load->view('tamplate/home_footer.php', $data);
    }

    public function pengumuman()
    {
        //ambil data news
        $data['datanews'] = $this->M_news->get_data_news2();
        $data['dataannouncement'] = $this->M_announcement->get_data_announcement();
        $data['leader'] = $this->db->get_where('tb_leader')->row_array();
        $this->load->view('tamplate/home_header.php', $data);
        $this->load->view('tamplate/home_navbar.php', $data);
        $this->load->view('home/pengumuman.php', $data);
        $this->load->view('tamplate/home_footer.php', $data);
    }

    public function detail_announcement($slug)
    {
        $data['dataannouncement'] = $this->db->get_where('tb_announcement', ['slug' => $slug])->row_array();
        $data['datanews'] = $this->M_news->get_data_news2();


        //mengambil data untuk tampilan ketua
        $data['leader'] = $this->db->get_where('tb_leader')->row_array();
        $this->load->view('tamplate/home_header.php');
        $this->load->view('tamplate/home_navbar.php');
        $this->load->view('home/detail_announcement', $data);
        $this->load->view('tamplate/home_footer.php');
    }
}
