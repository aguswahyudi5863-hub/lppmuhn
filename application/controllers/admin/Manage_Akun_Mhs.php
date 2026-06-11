<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manage_Akun_Mhs extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('id') == null) {
            redirect('admin/Auth_admin/login');
        }
    }

    //mengambil data sesuai session yang menggunakan id
        // $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();
        
   public function index()
    {
        // 1. Mengambil data admin yang sedang login berdasarkan session
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();
        
        // 2. Mengambil semua data dari tabel tb_akun_mhs
        $data['mhs'] = $this->db->get_where('tb_akun_mhs')->result_array();

        // 🌟 SOLUSI ERROR: Menyediakan variabel $dataakunmhs agar dikenali oleh View di baris 30
        $data['dataakunmhs'] = $data['mhs']; 

        // 3. Aturan Validasi Form Form Input
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nip', 'NIP.', 'required|trim');
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');

        if ($this->form_validation->run() == false) {
            // Jika validasi gagal atau baru pertama kali buka halaman
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/manage_akun_mhs.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {
            // Jika validasi sukses, lakukan proses upload gambar
            $config['upload_path']   = './uploads/berkas/';
            $config['allowed_types'] = 'pdf|jpg|jpeg|gif';
            $config['max_size']      = 5048;

            $this->load->library('upload', $config);
            
            if (!$this->upload->do_upload('foto')) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Berkas Mahasiswa Belum Diupload!</div>');
                redirect('admin/Manage_Akun_Mhs');
            } else {
                $foto         = $this->upload->data();
                $foto         = $foto['file_name'];
                $nama         = $this->input->post('nama', true);
                $nip          = $this->input->post('nip', true);
                $jabatan      = $this->input->post('jabatan', true);
            }

            // Gunakan nama variabel berbeda ($insert_data) agar array $data utama tidak tertimpa
            $insert_data = [
                'nama'        => $nama,
                'nip'         => $nip,
                'jabatan'     => $jabatan,
                'foto'        => $foto
            ];

            // Insert ke database
            $this->db->insert('tb_akun_mhs', $insert_data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Data Mahasiswa Berhasil Diupload!!</div>');
            redirect('admin/Manage_Akun_Mhs');
        }
    }

   public function edit($id)
    {
        $data['tb_akun'] = $this->db->get_where('tb_akun', ['id' => $this->session->userdata('id')])->row_array();

        // Mengambil data spesifik mahasiswa yang akan diedit
        $data['editakunmhs'] = $this->db->get_where('tb_akun_mhs', ['mhs_id' => $id])->row_array();
        
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nip', 'NIP/NIM', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('tamplate/admin_header.php', $data);
            $this->load->view('tamplate/admin_sidebar.php', $data);
            $this->load->view('tamplate/admin_topbar.php', $data);
            $this->load->view('admin/editakunmhs.php', $data);
            $this->load->view('tamplate/admin_footer.php', $data);
        } else {
            $nama = $this->input->post('nama', true);
            $nip  = $this->input->post('nip', true);

            // Cek jika ada lampiran berkas baru yang diupload
            $upload = $_FILES['foto']['name'];
            if ($upload) {
                // 🔒 KUNCI FOLDER: Menggunakan ./uploads/berkas/
                $config['upload_path']   = './uploads/berkas/';
                $config['allowed_types'] = 'pdf|jpg|jpeg|png';
                $config['max_size']      = 5048;

                $this->load->library('upload', $config);
                
                if ($this->upload->do_upload('foto')) {
                    // Hapus berkas lama secara fisik dari folder uploads/berkas/
                    $gambar_lama = $data['editakunmhs']['mhs_berkas'];
                    if ($gambar_lama && file_exists(FCPATH . 'uploads/berkas/' . $gambar_lama)) {
                        unlink(FCPATH . 'uploads/berkas/' . $gambar_lama);
                    }
                    $gambar_baru = $this->upload->data('file_name');
                    $this->db->set('mhs_berkas', $gambar_baru);
                }
            }

            $this->db->set('mhs_nama', $nama);
            $this->db->set('mhs_nim', $nip);
            $this->db->where('mhs_id', $id);
            $this->db->update('tb_akun_mhs');
            
            $this->session->set_flashdata('pesan', '<div class="alert alert-primary" role="alert">Data Mahasiswa Berhasil Diupdate !!</div>');
            redirect('admin/Manage_Akun_Mhs');
        }
    }

   public function hapus($id)
    {
        // Mencari data target sebelum dihapus untuk mendapatkan nama filenya
        $data_mhs = $this->db->get_where('tb_akun_mhs', ['mhs_id' => $id])->row_array();
        
        if ($data_mhs) {
            // Hapus file dokumen dari folder local uploads/berkas/
            $gambar_lama = $data_mhs['mhs_berkas'];
            if ($gambar_lama && file_exists(FCPATH . 'uploads/berkas/' . $gambar_lama)) {
                unlink(FCPATH . 'uploads/berkas/' . $gambar_lama);
            }
            
            $this->db->delete('tb_akun_mhs', ['mhs_id' => $id]);
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Data Mahasiswa Berhasil Dihapus !!</div>');
        }
        
        redirect('admin/Manage_Akun_Mhs');
    }
}
