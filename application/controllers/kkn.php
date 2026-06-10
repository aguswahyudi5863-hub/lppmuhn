<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kkn extends CI_Controller{
    public function __construct(){
		parent::__construct();   
        $this->load->model('m_prodi');
        $this->load->model('m_akun_mhs');
        $this->load->model('m_kkn');
    }
    
    /*
    |--------------------------------------------------------------------------
    | Fungsi ubah tanggal komputer ke tanggal indonesia
    |--------------------------------------------------------------------------
    */
    function tgl_indo($tanggal){
        $bulan = array (
            1 =>   'Januari',
            'Februari',
            'Maret',
            'April',
            'Mei',
            'Juni',
            'Juli',
            'Agustus',
            'September',
            'Oktober',
            'November',
            'Desember'
        );
        $pecahkan = explode('-', $tanggal);
        
        // variabel pecahkan 0 = tanggal
        // variabel pecahkan 1 = bulan
        // variabel pecahkan 2 = tahun
     
        return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
    }

    /* 
    |--------------------------------------------------------------------------
    | Session redirect ke halaman awal ketika tidak login
    |--------------------------------------------------------------------------
    */
    public function check_session_not_login(){
        $sess_id = $this->session->userdata('sess_id');
        $sess_login = $this->session->userdata('sess_login');
        if(@$sess_id && @$sess_login){
            if($sess_login != '1'){
                redirect('/kkn', 'refresh');
            }
        }else{
            redirect('/kkn', 'refresh');
        }
    }
    /*
    |--------------------------------------------------------------------------
    |  Session redirect ke halaman dashboard ketika  login
    |--------------------------------------------------------------------------
    */
    public function check_session_login(){
        $sess_id = $this->session->userdata('sess_id');
        $sess_login = $this->session->userdata('sess_login');
        if(@$sess_id && @$sess_login){
            if($sess_login == '1'){
                redirect('/kkn/dashboard', 'refresh');
            }
        }
    }   
    /*
    |--------------------------------------------------------------------------
    | Halaman Awal KKN
    |--------------------------------------------------------------------------
    */
    public function index(){
        $this->check_session_login();
        $data['data_prodi'] = $this->m_prodi->get_prodi();
        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('kkn/home.php',$data);
        $this->load->view('tamplate/kkn_footer.php');
    }
    /*
    |--------------------------------------------------------------------------
    | Halaman Dashboard KKN
    |--------------------------------------------------------------------------
    */
    public function dashboard(){
        $this->check_session_not_login();
        $nim = $this->session->userdata('sess_nim');
        $data['profil'] = $this->m_akun_mhs->detail_akun($nim);
        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('tamplate/kkn_sidebar.php');
        $this->load->view('kkn/dashboard.php',$data);
        $this->load->view('tamplate/kkn_footer.php');
    }
    /*
    |--------------------------------------------------------------------------
    | Halaman Update Data Diri Mahasiswa
    |--------------------------------------------------------------------------
    */
    public function profil(){
        $this->check_session_not_login();
        $nim = $this->session->userdata('sess_nim');
        $data['profil'] = $this->m_akun_mhs->detail_akun($nim);
        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('tamplate/kkn_sidebar.php');
        $this->load->view('kkn/update_profil.php',$data);
        $this->load->view('tamplate/kkn_footer.php');
    }
    /*
    |--------------------------------------------------------------------------
    | Halaman Lokasi KKN
    |--------------------------------------------------------------------------
    */
    public function lokasi(){
        $this->check_session_not_login();
        $nim = $this->session->userdata('sess_nim');
        $mhs = $this->m_akun_mhs->detail_akun($nim);
        $data['profil'] = $mhs;
        $data['jumlah_mhs'] = $this->m_akun_mhs->jumlah_akun_kkn($mhs->kkn_kode);
        $data['daftar_mhs'] = $this->m_akun_mhs->daftar_akun_kkn($mhs->kkn_kode);

        $this->load->view('tamplate/kkn_header.php');
        $this->load->view('tamplate/kkn_sidebar.php');
        if($mhs->kkn_kode != ''){
            $this->load->view('kkn/lokasi.php',$data);
        }else{
            $this->load->view('kkn/pilih_lokasi.php',$data);
        }
        $this->load->view('tamplate/kkn_footer.php');
        
    }

    public function login(){
    $input = array(
        'nim'      => $this->input->post('nim'),
        'password' => $this->input->post('password'),
    );

    // 1. Ambil data akun dari model hanya berdasarkan NIM-nya saja
    // Pastikan fungsi 'detail_akun' di model kamu mengembalikan data object mahasiswa
    $mhs = $this->m_akun_mhs->detail_akun($input['nim']);

    if($mhs){
        // 2. Verifikasi password yang diinput dengan password terenkripsi di database
        // Asumsi: Nama kolom password di database kamu adalah 'password' (sesuaikan jika berbeda, misal: $mhs->mhs_password)
        if (password_verify($input['password'], $mhs->mhs_password)) {
            
            // 3. Cek Tanggal Login jika password sudah benar
            $tanggal_sekarang = date('Y-m-d');
            if($mhs->prodi_tanggal_login == $tanggal_sekarang){
                $session = array(
                    'sess_id'          => rand(11111111111,99999999999),
                    'sess_uid'         => $mhs->mhs_id,
                    'sess_nim'         => $mhs->mhs_nim,
                    'sess_nama'        => $mhs->mhs_nama,
                    'sess_prodi_kode'  => $mhs->prodi_kode,
                    'sess_prodi'       => $mhs->prodi_nama,
                    'sess_lokasi_kkn'  => $mhs->kkn_kode,
                    'sess_login'       => 1,
                );
                $this->session->set_userdata($session);
    
                $response = array(
                    'sts'   => 'true',
                    'msg'   => 'Sukses login'
                );
            } else {
                $response = array(
                    'sts' => 'false',
                    'msg' => 'Anda hanya boleh login pada tanggal '.$this->tgl_indo($mhs->prodi_tanggal_login)
                );
            }

        } else {
            // Jika password_verify menghasilkan false
            $response = array(
                'sts' => 'false',
                'msg' => 'Gagal login username/password tidak sesuai'
            );
        }
        
    } else {
        // Jika NIM tidak ditemukan di database
        $response = array(
            'sts' => 'false',
            'msg' => 'Gagal login username/password tidak sesuai' 
            // Sengaja disamakan pesannya demi keamanan agar hacker tidak tahu NIM mana yang terdaftar
        );
    }

    echo json_encode($response);
}

    /*
    |--------------------------------------------------------------------------
    | Fungsi Login
    |--------------------------------------------------------------------------
    */
    // public function login(){
    //     $input = array(
    //         'nim' => $this->input->post('nim'),
    //         'password' => $this->input->post('password'),
    //     );

    //     $login = $this->m_akun_mhs->login($input);
    //     if($login){
    //         //Set Session Disini
    //         $mhs = $this->m_akun_mhs->detail_akun($input['nim']);
    //         if($mhs){
    //             //Cek Tanggal Login
    //             $tanggal_sekarang = date('Y-m-d');
    //             if($mhs->prodi_tanggal_login == $tanggal_sekarang){
    //                 $session = array(
    //                     'sess_id'  => rand(11111111111,99999999999),
    //                     'sess_uid' => $mhs->mhs_id,
    //                     'sess_nim' => $mhs->mhs_nim,
    //                     'sess_nama' => $mhs->mhs_nama,
    //                     'sess_prodi_kode' => $mhs->prodi_kode,
    //                     'sess_prodi' => $mhs->prodi_nama,
    //                     'sess_lokasi_kkn' => $mhs->kkn_kode,
    //                     'sess_login' => 1,
    //                 );
    //                 $this->session->set_userdata($session);
        
    //                 $response = array(
    //                     'sts'   => 'true',
    //                     'msg'   => 'Sukses login'
    //                 );
    //             }else{
    //                 $response = array(
    //                     'sts' => 'false',
    //                     'msg' => 'Anda hanya boleh login pada tanggal '.$this->tgl_indo($mhs->prodi_tanggal_login)
    //                 );
    //             }
                
    //         }else{
    //             $response = array(
    //                 'sts' => 'false',
    //                 'msg' => 'Gagal user tidak ditemukan'
    //             );
    //         }
            
    //     }else{
    //         $response = array(
    //             'sts' => 'false',
    //             'msg' => 'Gagal login username/password tidak sesuai'
    //         );
    //     }
    //     echo json_encode($response);

    // }
    /*
    |--------------------------------------------------------------------------
    | Fungsi Logout
    |--------------------------------------------------------------------------
    */
    public function logout(){
        $this->session->sess_destroy();
            redirect('/kkn', 'refresh');
    }
    /*
    |--------------------------------------------------------------------------
    | Fungsi Membuat Akun Baru Login
    |--------------------------------------------------------------------------
    */
    // public function create_akun(){
    //     $input = array(
    //         'nim' => $this->input->post('nim'),
    //         'nama' => $this->input->post('nama'),
    //         'no_hp' => $this->input->post('no_hp'),
    //         'email' => $this->input->post('email'),
    //         'alamat' => $this->input->post('alamat'),
    //         'prodi' => $this->input->post('prodi'),
    //         'password' => $this->input->post('password'),
    //     );

    //     $check_akun = $this->m_akun_mhs->check_akun($input['nim']);
    //     if($check_akun > 0){
    //         $response = array(
    //             'sts' => 'false',
    //             'msg' => 'Nim '.$input['nim'].' Sudah terdaftar !'
    //         );
    //     }else{
    //         $create_akun = $this->m_akun_mhs->create_akun($input);
    //         if($create_akun){
    //             $response = array(
    //                 'sts' => 'true',
    //                 'msg' => 'Berhasil membuat akun'
    //             );
    //         }else{
    //             $response = array(
    //                 'sts' => 'false',
    //                 'msg' => 'Gagal membuat akun'
    //             );
    //         }
    //     }
        
    //     echo json_encode($response);
    // }

   public function create_akun(){
    // 1. Ambil data input teks terlebihi dahulu & BUNGKUS PASSWORD DENGAN HASH
    $input = array(
        'nim'      => $this->input->post('nim'),
        'nama'     => $this->input->post('nama'),
        'no_hp'    => $this->input->post('no_hp'),
        'email'    => $this->input->post('email'),
        'alamat'   => $this->input->post('alamat'),
        'prodi'    => $this->input->post('prodi'),
        // PERBAIKAN DI SINI: Password wajib di-hash agar bisa dibaca oleh fungsi login nantinya
        'password' => password_hash($this->input->post('password'), PASSWORD_BCRYPT), 
    );

    // 2. Cek apakah NIM sudah terdaftar
    $check_akun = $this->m_akun_mhs->check_akun($input['nim']);
    if($check_akun > 0){
        $response = array(
            'sts' => 'false',
            'msg' => 'NIM '.$input['nim'].' Sudah terdaftar !'
        );
        echo json_encode($response);
        return; // Hentikan proses jika akun sudah ada
    }

    // 3. Konfigurasi Upload File
    $config['upload_path']   = './uploads/berkas/'; 
    $config['allowed_types'] = 'pdf|jpg|jpeg|png';
    $config['max_size']      = 2048; // 2MB
    $config['file_name']     = 'berkas_kkn_' . $input['nim'] . '_' . time(); 

    $this->load->library('upload', $config);

    // 4. Proses Upload File
    if (!$this->upload->do_upload('berkas')) {
        $response = array(
            'sts' => 'false',
            'msg' => 'Gagal upload berkas: ' . $this->upload->display_errors(' ', ' ')
        );
    } else {
        $upload_data = $this->upload->data();
        $input['mhs_berkas'] = $upload_data['file_name']; 

        // 5. Simpan ke Database
        $create_akun = $this->m_akun_mhs->create_akun($input);
        if($create_akun){
            $response = array(
                'sts' => 'true',
                'msg' => 'Berhasil membuat akun dan mengunggah berkas'
            );
        } else {
            if(file_exists($config['upload_path'] . $upload_data['file_name'])){
                unlink($config['upload_path'] . $upload_data['file_name']);
            }
            $response = array(
                'sts' => 'false',
                'msg' => 'Gagal membuat akun'
            );
        }
    }
    
    echo json_encode($response);
}


    /*
    |--------------------------------------------------------------------------
    | Fungsi Pilih Lokasi KKN
    |--------------------------------------------------------------------------
    */

    public function trans_pilih_lokasi(){
        $mhs_nim = $this->session->userdata('sess_nim');
        $prodi_kode = $this->session->userdata('sess_prodi_kode');
        $kkn_kode = $this->input->post('kode');

        $input = array(
            "mhs_nim" => $mhs_nim,
            "prodi_kode" => $prodi_kode,
            "kkn_kode" => $kkn_kode
        );

        $pilih = $this->m_kkn->pilih_lokasi($input);
        if($pilih['sts'] != '00'){
            $response = array(
                'sts' => 'false',
                'msg' => $pilih['msg']
            );
        }else{
            $response = array(
                'sts' => 'true',
                'msg' => 'Berhasil memilih lokasi'
            );
        }
        echo json_encode($response);
    }

    /*
    |--------------------------------------------------------------------------
    | Fungsi daftar Lokasi KKN
    |--------------------------------------------------------------------------
    */

    public function daftar_lokasi(){
        $kkn_kabupaten = $this->input->post('kabupaten');
        $kkn_kecamatan = $this->input->post('kecamatan');
        $kkn_desa = $this->input->post('desa');
        $prodi_kode = $this->session->userdata('sess_prodi_kode');
        $input = array(
            "kkn_kabupaten" => $kkn_kabupaten,
            "kkn_kecamatan" => $kkn_kecamatan,
            "kkn_desa" => $kkn_desa,
            "prodi_kode" => $prodi_kode
        );
        $lokasi = $this->m_kkn->daftar_lokasi($input);
        echo json_encode($lokasi );

    }
}