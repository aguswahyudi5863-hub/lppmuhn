<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_prodi extends CI_Model
{
    function get_prodi(){
        $res = $this->db->query("SELECT * FROM tb_prodi");
        $result = $res->result();
        return $result;
    }
}