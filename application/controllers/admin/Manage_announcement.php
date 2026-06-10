<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manage_announcement extends CI_Controller
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
        $data['announcement'] = $this->db->get_where('tb_announcement')->result_array();
        //set rule validasi
        $this->form_validation->set_rules('judul', 'Created By', 'required|trim');
        $this->form_validation->set_rules('detail', 'Detail', 'required|trim');
        $this->form_validation->set_rules('slug', 'Slug', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/manage_announcement.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            //menambahkan gambar ke folder
            $config['upload_path']   = './front_end/assets/img/pengumuman/';
            $config['allowed_types'] = 'png|jpg|jpeg|gif';
            $config['max_size']      = 5048;

            $this->load->library('upload', $config);
            //jika gambae tidak masuk
            if (!$this->upload->do_upload('gambar')) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Gambar Pengumuman Belum Diupload!</div>');
                redirect('admin/Manage_announcement');
            } else {

                $gambar          = $this->upload->data();
                $gambar          = $gambar['file_name'];
                $judul          = $this->input->post('judul', true);
                $slug           = $this->input->post('slug', true);
                $detail         = $this->input->post('detail', true);
            }

            $data = [
                'judul'        => $judul,
                'detail'       => $detail,
                'slug'         => $slug,
                'date'         => time(),
                'gambar'       => $gambar

            ];

            //insert data ke tabel news
            $this->db->insert('tb_announcement', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Pengumuman Berhasil Diupload!!</div>');
            redirect('admin/Manage_announcement');
        }
    }

    public function hapus($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //hapus data news
        $data['deleteannouncement'] = $this->db->get_where('tb_announcement', ['id' => $id])->row_array();
        $this->db->delete('tb_announcement', ['id' => $id]);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Berita Berhasil Dihapus !!</div>');
        //menghapus file gambar
        $gambar_lama = $data['deleteannouncement']['gambar'];
        unlink(FCPATH . '/front_end/assets/img/pengumuman/' . $gambar_lama);
        redirect('admin/Manage_announcement');
    }


    public function edit($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['editannouncement'] = $this->db->get_where('tb_announcement', ['id' => $id])->row_array();
        //set rule  edit
        $this->form_validation->set_rules('judul', 'Judul Pengumuman', 'required|trim');
        $this->form_validation->set_rules('detail', 'Detail Pengumuman', 'required|trim');
        $this->form_validation->set_rules('slug', 'Slug Pengumuman', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/edit_announcement.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            $judul       = $this->input->post('judul', true);
            $detail      = $this->input->post('detail', true);
            $slug        = $this->input->post('slug', true);


            //cekjika ada gambar yang diedit
            $upload = $_FILES['gambar']['name'];
            if ($upload) {
                $config['upload_path']   = './front_end/assets/img/pengumuman/';
                $config['allowed_types'] = 'png|jpg|jpeg|gif';
                $config['max_size']      = 5048;

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('gambar')) {
                    $gambar_lama = $data['editannouncement']['gambar'];
                    unlink(FCPATH . '/front_end/assets/img/pengumuman/' . $gambar_lama);
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
            $this->db->where('id', $this->input->post('id'));
            //update data ke tabel news
            $this->db->update('tb_announcement');
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Pengumuman Berhasil Diupdate !!</div>');
            redirect('admin/Manage_announcement');
        }
    }


    public function detail($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['detailannouncement'] = $this->db->get_where('tb_announcement', ['id' => $id])->row_array();

        $this->load->view('tamplate/admin_header.php', $data);
        $this->load->view('tamplate/admin_sidebar.php', $data);
        // $this->load->view('tamplate/admin_topbar.php', $data);
        $this->load->view('admin/detail_announcement.php', $data);
        $this->load->view('tamplate/admin_footer.php', $data);
    }
}
