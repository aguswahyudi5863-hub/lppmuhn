<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manage_news extends CI_Controller
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
        //megambil data news
        $data['news'] = $this->db->get_where('tb_news')->result_array();
        //set rule validasi
        $this->form_validation->set_rules('created', 'Created By', 'required|trim');
        $this->form_validation->set_rules('slug', 'Slug', 'required|trim');
        $this->form_validation->set_rules('judul', 'Judul Berita', 'required|trim');
        // $this->form_validation->set_rules('detail', 'Detail Berita', 'required|trim');
        // $this->form_validation->set_rules('gambar', 'Gambar', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/manage_news.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            //menambahkan gambar ke folder
            $config['upload_path']   = './front_end/assets/img/news/';
            $config['allowed_types'] = 'png|jpg|jpeg|gif';
            $config['max_size']      = 5048;

            $this->load->library('upload', $config);
            //jika gambae tidak masuk
            if (!$this->upload->do_upload('gambar')) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Foto Berita Belum Diupload!</div>');
                redirect('admin/Manage_news');
            } else {

                $gambar         = $this->upload->data();
                $gambar         = $gambar['file_name'];
                $judul          = $this->input->post('judul', true);
                $slug           = $this->input->post('slug', true);
                $detail         = $this->input->post('detail', true);
                $created_by     = $this->input->post('created', true);
            }

            $data = [
                'judul'        => $judul,
                'slug'         => $slug,
                'detail'       => $detail,
                'created_by'   => $created_by,
                'date'         => time(),
                'gambar'       => $gambar

            ];

            //insert data ke tabel news
            $this->db->insert('tb_news', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Berita Berhasil Diupload!!</div>');
            redirect('admin/Manage_news');
        }
    }

    public function edit($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['editnews'] = $this->db->get_where('tb_news', ['id' => $id])->row_array();
        //set rule  edit
        $this->form_validation->set_rules('created_by', 'Created By', 'required|trim');
        $this->form_validation->set_rules('slug', 'Slug', 'required|trim');
        $this->form_validation->set_rules('judul', 'Judul Berita', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/edit_news.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            $judul       = $this->input->post('judul', true);
            $slug        = $this->input->post('slug', true);
            $detail      = $this->input->post('detail', true);
            $created_by  = $this->input->post('created_by', true);

            //cekjika ada gambar yang diedit
            $upload = $_FILES['gambar']['name'];
            if ($upload) {
                $config['upload_path']   = './front_end/assets/img/news/';
                $config['allowed_types'] = 'png|jpg|jpeg|gif';
                $config['max_size']      = 5048;

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('gambar')) {
                    $gambar_lama = $data['editnews']['gambar'];
                    unlink(FCPATH . '/front_end/assets/img/news/' . $gambar_lama);
                }

                //uploag gambar baru
                $gambar_baru = $this->upload->data('file_name');
                $this->db->set('gambar', $gambar_baru);
            } else {
                echo $this->upload->display_errors();
            }

            //set data yang akan diupdate
            $this->db->set('judul', $judul);
            $this->db->set('slug', $slug);
            $this->db->set('detail', $detail);
            $this->db->set('created_by', $created_by);
            $this->db->where('id', $this->input->post('id'));
            //update data ke tabel news
            $this->db->update('tb_news');
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Berita Berhasil Diupdate !!</div>');
            redirect('admin/Manage_news');
        }
    }

    public function hapus($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //hapus data news
        $data['deletenews'] = $this->db->get_where('tb_news', ['id' => $id])->row_array();
        $this->db->delete('tb_news', ['id' => $id]);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Berita Berhasil Dihapus !!</div>');
        //menghapus file gambar
        $gambar_lama = $data['deletenews']['gambar'];
        unlink(FCPATH . '/front_end/assets/img/news/' . $gambar_lama);
        redirect('admin/Manage_news');
    }

    public function detail_news($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['detailnews'] = $this->db->get_where('tb_news', ['id' => $id])->row_array();

        $this->load->view('tamplate/admin_header.php', $data);
        $this->load->view('tamplate/admin_sidebar.php', $data);
        // $this->load->view('tamplate/admin_topbar.php', $data);
        $this->load->view('admin/detail_news.php', $data);
        $this->load->view('tamplate/admin_footer.php', $data);
    }
}
