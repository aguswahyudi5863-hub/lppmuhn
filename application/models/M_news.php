<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_news extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        //Codeigniter : Write Less Do More
    }

    function get_data_news($per_page, $start, $keyword = null)
    {
        if ($keyword) {
            $this->db->like('judul', $keyword);
        }

        $this->db->select('*');
        $this->db->from('tb_news');
        $this->db->order_by('id', 'desc');
        $getData = $this->db->get('', $per_page, $start);
        return $getData->result_array();
    }


    function get_data_news2()
    {

        $this->db->select('*');
        $this->db->from('tb_news');
        $this->db->order_by('id', 'desc');
        $this->db->limit(3);
        $query = $this->db->get();
        return $query->result_array();;
    }
}
