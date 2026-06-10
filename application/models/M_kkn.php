<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_kkn extends CI_Model
{      

    function pilih_lokasi($input){
        $mhs_nim = $input['mhs_nim']; 
        $prodi_kode = $input['prodi_kode'];
        $kkn_kode = $input['kkn_kode'];

        //Err kode
        // 00 berhasil
        // 01 mahasiswa sudah memilih lokasi KKN 
        // 02 lokasi kkn untuk prodi tidak ditemukan
        // 03 Kuota KKN untuk prodi telah habis
        // 04 gagal memilih lokasi kkn
        // 05 data mahasiswa tidak ditemukan

        //Check NIM sudah memilih atau tidak 
        $query = $this->db->query("SELECT * FROM tb_akun_mhs WHERE mhs_nim = '$mhs_nim' AND prodi_kode = '$prodi_kode'");
        $cn = $query->num_rows();
        $mhs = $query->row();
        if($cn == '0'){
            return array(
                'sts' => '05',
                'msg' => 'data mahasiswa tidak ditemukan',
            );
        }
        
        if($mhs->kkn_kode != ''){
            return array(
                'sts' => '01',
                'msg' => 'anda sudah memilih lokasi KKN',
            );
        }

        //Check Kuota KKN di mahasiswa
        $query = $this->db->query("SELECT * FROM tb_akun_mhs WHERE kkn_kode = '$kkn_kode' AND prodi_kode = '$prodi_kode'");
        $ck = $query->num_rows();

        //Check Kuota KKN
        $query = $this->db->query("SELECT * FROM tb_kkn a INNER JOIN tb_kkn_prodi b ON a.kkn_kode = b.kkn_kode WHERE b.prodi_kode = '$prodi_kode' AND b.kkn_kode = '$kkn_kode'");
        $kkn = $query->row();
        if($kkn->qty == $ck){
            return array(
                'sts' => '03',
                'msg' => 'Kuota KKN untuk prodi telah habis',
            );
        }

        $this->db->trans_start();
        //Update kode KKN pada mahasiswa
        $this->db->query("UPDATE tb_akun_mhs SET kkn_kode = '$kkn_kode' WHERE mhs_nim = '$mhs_nim' AND prodi_kode = '$prodi_kode'");
        //Check semua mahasiswa yang memilih 
        $kkn_mhs = $this->db->query("SELECT * FROM tb_akun_mhs WHERE kkn_kode = '$kkn_kode'")->num_rows();
        $sisa_kuota = $kkn->kkn_kuota - $kkn_mhs;
        //Update sisa kuota pada tabel KKN
        $this->db->query("UPDATE tb_kkn SET kkn_sisa_kuota = '$sisa_kuota' WHERE kkn_kode = '$kkn_kode' ");
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE){
            $this->db->trans_rollback();
            return array(
                'sts' => '04',
                'msg' => 'gagal memilih lokasi kkn',
            );
        }else{
            $this->db->trans_commit();
            return array(
                'sts' => '00',
                'msg' => 'Sukses',
            );
        }
    }

    function daftar_lokasi($input){
        $kkn_kabupaten = ($input['kkn_kabupaten']) ? $input['kkn_kabupaten'] : '';
        $kkn_kecamatan = ($input['kkn_kecamatan']) ? $input['kkn_kecamatan'] : '';
        $kkn_desa = ($input['kkn_desa']) ? $input['kkn_desa'] : '';
        $prodi_kode = $input['prodi_kode'];
        $query = "SELECT * FROM tb_kkn a RIGHT JOIN tb_kkn_prodi b ON a.kkn_kode = b.kkn_kode INNER JOIN tb_prodi c ON b.prodi_kode = c.prodi_kode WHERE b.prodi_kode='$prodi_kode' AND b.qty <> '' ";
        if($kkn_kabupaten != ''){
            $query .= " AND a.kkn_kabupaten LIKE CONCAT('%','$kkn_kabupaten','%')";
        }

        if($kkn_kecamatan != ''){
            $query .= " AND a.kkn_kecamatan LIKE CONCAT('%','$kkn_kecamatan','%')";
        }

        if($kkn_desa != ''){
            $query .= " AND a.kkn_desa LIKE CONCAT('%','$kkn_desa','%')";
        }
      
        $res = $this->db->query($query);
        $data = $res->result();
        $result = array(
            "txt" => "Menampilkan ".$res->num_rows()." untuk jurusan ".$res->row()->prodi_nama,
            "data" => $data
        );

        return $result;
    }

}