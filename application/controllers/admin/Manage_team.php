<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manage_team extends CI_Controller
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
        $data['team'] = $this->db->get_where('tb_team')->result_array();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nip', 'NIP.', 'required|trim');
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/manage_team.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            //menambahkan gambar ke folder
            $config['upload_path']   = './front_end/assets/img/team/';
            $config['allowed_types'] = 'png|jpg|jpeg|gif';
            $config['max_size']      = 5048;

            $this->load->library('upload', $config);
            //jika gambae tidak masuk
            if (!$this->upload->do_upload('foto')) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Foto Team Belum Diupload!</div>');
                redirect('admin/Manage_team');
            } else {

                $foto          = $this->upload->data();
                $foto         = $foto['file_name'];
                $nama         = $this->input->post('nama', true);
                $nip          = $this->input->post('nip', true);
                $jabatan      = $this->input->post('jabatan', true);
            }

            $data = [
                'nama'        => $nama,
                'nip'         => $nip,
                'jabatan'     => $jabatan,
                'foto'        => $foto
            ];

            //insert data ke tabel news
            $this->db->insert('tb_team', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Data Team Berhasil Diupload!!</div>');
            redirect('admin/Manage_team');
        }
    }

    public function edit($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //mengmbil data yang akan diedit
        $data['editteam'] = $this->db->get_where('tb_team', ['id' => $id])->row_array();
        //set rule  edit
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nip', 'NIP', 'required|trim');
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/edit_team.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {

            $nama      = $this->input->post('nama', true);
            $nip        = $this->input->post('nip', true);
            $jabatan      = $this->input->post('jabatan', true);

            //cekjika ada gambar yang diedit
            $upload = $_FILES['foto']['name'];
            if ($upload) {
                $config['upload_path']   = './front_end/assets/img/team/';
                $config['allowed_types'] = 'png|jpg|jpeg|gif';
                $config['max_size']      = 5048;

                $this->load->library('upload', $config);
                if ($this->upload->do_upload('foto')) {
                    $gambar_lama = $data['editteam']['foto'];
                    unlink(FCPATH . '/front_end/assets/img/team/' . $gambar_lama);
                }

                //uploag gambar baru
                $gambar_baru = $this->upload->data('file_name');
                $this->db->set('foto', $gambar_baru);
            } else {
                echo $this->upload->display_errors();
            }

            //set data yang akan diupdate
            $this->db->set('nama', $nama);
            $this->db->set('nip', $nip);
            $this->db->set('jabatan', $jabatan);
            $this->db->where('id', $this->input->post('id'));
            //update data ke tabel news
            $this->db->update('tb_team');
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Data Team Berhasil Diupdate !!</div>');
            redirect('admin/Manage_team');
        }
    }

    public function hapus($id)
    {
        //mengambil data sesuai session yang menggunakan id
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        //hapus data news
        $data['deleteteam'] = $this->db->get_where('tb_team', ['id' => $id])->row_array();
        $this->db->delete('tb_team', ['id' => $id]);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Data Team Berhasil Dihapus !!</div>');
        //menghapus file gambar
        $gambar_lama = $data['deleteteam']['foto'];
        unlink(FCPATH . '/front_end/assets/img/team/' . $gambar_lama);
        redirect('admin/Manage_team');
    }
}
