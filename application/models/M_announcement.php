<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_announcement extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        //Codeigniter : Write Less Do More
    }

    function get_data_announcement()
    {

        $this->db->select('*');
        $this->db->from('tb_announcement');
        $this->db->order_by('id', 'desc');
        $getData = $this->db->get();
        return $getData->result_array();
    }

    function get_data_announcement2()
    {

        $this->db->select('*');
        $this->db->from('tb_announcement');
        $this->db->order_by('id', 'desc');
        $this->db->limit(3);
        $query = $this->db->get();
        return $query->result_array();;
    }
}
