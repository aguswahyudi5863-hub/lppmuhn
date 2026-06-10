<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manage_visimisi extends CI_Controller
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
        $data['visimisi'] = $this->db->get_where('tb_visimisi')->row_array();

        $this->load->view('tamplate/admin_header.php', $data);
        $this->load->view('tamplate/admin_sidebar.php', $data);
        $this->load->view('tamplate/admin_topbar.php', $data);
        $this->load->view('admin/manage_visimisi.php', $data);
        $this->load->view('tamplate/admin_footer.php', $data);
    }

    public function edit()
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['editvisimisi'] = $this->db->get_where('tb_visimisi')->row_array();
        //set rule  edit
        $this->form_validation->set_rules('visimisi', 'visimisi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/manage_visimisi.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            $visimisi  = $this->input->post('visimisi', true);

            //cekjika ada gambar yang diedit
            $upload = $_FILES['gambar']['name'];
            if ($upload) {
                $config['upload_path']   = './front_end/assets/img/';
                $config['allowed_types'] = 'png|jpg|jpeg|gif';
                $config['max_size']      = 5048;

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('gambar')) {
                    $gambar_lama = $data['editvisimisi']['gambar'];
                    unlink(FCPATH . '/front_end/assets/img/' . $gambar_lama);
                }

                //uploag gambar baru
                $gambar_baru = $this->upload->data('file_name');
                $this->db->set('gambar', $gambar_baru);
            } else {
                echo $this->upload->display_errors();
            }

            //set data yang akan diupdate
            $this->db->set('visimisi', $visimisi);
            //update data ke tabel news
            $this->db->update('tb_visimisi');
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Data Berhasil Diupdate !!</div>');
            redirect('admin/Manage_visimisi');
        }
    }
}
