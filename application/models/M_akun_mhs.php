<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_akun_mhs extends CI_Model
{
    // function check_akun($mhs_nim)
    // {
    //     $res = $this->db->query("SELECT * FROM tb_akun_mhs WHERE mhs_nim = '$mhs_nim'");
    //     $result = $res->num_rows();
    //     return $result;
    // }

    // function create_akun($input)
    // {
    //     $mhs_nim = $input['nim'];
    //     $mhs_nama = $input['nama'];
    //     $mhs_alamat = $input['alamat']; 
    //     $mhs_nohp = $input['no_hp'];
    //     $mhs_password = $input['password'];
    //     $mhs_email = $input['email'];
    //     $prodi_kode = $input['prodi'];


    //     $res = $this->db->query("INSERT INTO tb_akun_mhs 
    //                                     (mhs_nim,
    //                                     mhs_nama,
    //                                     mhs_alamat,
    //                                     mhs_nohp,
    //                                     mhs_password,
    //                                     mhs_email,
    //                                     prodi_kode)
    //                                     VALUES 
    //                                     ('$mhs_nim',
    //                                     '$mhs_nama',
    //                                     '$mhs_alamat',
    //                                     '$mhs_nohp',
    //                                     md5('$mhs_password'),
    //                                     '$mhs_email',
    //                                     '$prodi_kode')");
    //     $result = $res;
    //     return $result;
    // }

function check_akun($mhs_nim)
{
    $res = $this->db->query("SELECT * FROM tb_akun_mhs WHERE mhs_nim = '$mhs_nim'");
    $result = $res->num_rows();
    return $result;
}

function create_akun($input)
{
    $mhs_nim      = $input['nim'];
    $mhs_nama     = $input['nama'];
    $mhs_alamat   = $input['alamat']; 
    $mhs_nohp     = $input['no_hp'];
    $mhs_password = $input['password']; // Ini sudah berupa string aman hasil password_hash() dari controller
    $mhs_email    = $input['email'];
    $prodi_kode   = $input['prodi'];
    $mhs_berkas   = $input['mhs_berkas']; 

    // PERBAIKAN: Hapus fungsi md5() pada '$mhs_password' di bagian VALUES
    $res = $this->db->query("INSERT INTO tb_akun_mhs 
                                    (mhs_nim,
                                    mhs_nama,
                                    mhs_alamat,
                                    mhs_nohp,
                                    mhs_password,
                                    mhs_email,
                                    prodi_kode,
                                    mhs_berkas) 
                                    VALUES 
                                    ('$mhs_nim',
                                    '$mhs_nama',
                                    '$mhs_alamat',
                                    '$mhs_nohp',
                                    '$mhs_password', 
                                    '$mhs_email',
                                    '$prodi_kode',
                                    '$mhs_berkas')");
    $result = $res;
    return $result;
}

    function login($input)
    {
        $mhs_nim = $input['nim'];
        $mhs_password = $input['password'];

        $res = $this->db->query("SELECT * FROM tb_akun_mhs WHERE mhs_nim = '$mhs_nim' AND md5('$mhs_password')");
        $result = $res->num_rows();
        return $result;
    }

    function detail_akun($mhs_nim)
    {
        $res = $this->db->query("SELECT * FROM tb_akun_mhs a LEFT JOIN tb_prodi b ON a.prodi_kode = b.prodi_kode LEFT JOIN tb_kkn c ON a.kkn_kode = c.kkn_kode  WHERE mhs_nim = '$mhs_nim' ");
        $result = $res->row();
        return $result;
    }

    function jumlah_akun_kkn($kkn_kode)
    {
        $res = $this->db->query("SELECT * FROM tb_akun_mhs a INNER JOIN tb_prodi b ON a.prodi_kode = b.prodi_kode INNER JOIN tb_kkn c ON a.kkn_kode = c.kkn_kode  WHERE a.kkn_kode = '$kkn_kode' ");
        $result = $res->num_rows();
        return $result;
    }

    function daftar_akun_kkn($kkn_kode)
    {
        $res = $this->db->query("SELECT * FROM tb_akun_mhs a INNER JOIN tb_prodi b ON a.prodi_kode = b.prodi_kode INNER JOIN tb_kkn c ON a.kkn_kode = c.kkn_kode  WHERE a.kkn_kode = '$kkn_kode' ");
        $result = $res->result();
        return $result;
    }

    function daftar_akun_kkn_all()
    {
        $res = $this->db->query("SELECT * FROM tb_akun_mhs a INNER JOIN tb_prodi b ON a.prodi_kode = b.prodi_kode  ");
        $result = $res->result();
        return $result;
    }

    function delete_akun_mhs($id)
    {
        $res = $this->db->query("DELETE FROM tb_akun_mhs WHERE mhs_id = '$id'");
        $result = $res;
        return $result;
    }
}
