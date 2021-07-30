<?php

defined('BASEPATH') or exit('No direct script access allowed');

class aftershop_model extends CI_Model
{
    public function getallproduct()
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->join('user', 'user.id = product.id_user', 'left');
        $query = $this->db->get();
        return $query->result();
    }
    public function getproductbyid($id)
    {
        $this->db->select('*');
        $this->db->from('product');
        $this->db->join('user', 'user.id = product.id_user', 'left');
        $this->db->where('id_product', $id);
        $query = $this->db->get();
        return $query->row();
    }
    public function getreview($id)
    {
        $this->db->select('*');
        $this->db->from('review');
        $this->db->join('user', 'user.id = review.id_user', 'left');
        $this->db->where('id_product', $id);
        $query = $this->db->get();
        return $query->result();
    }
    // public function countallreview($id)
    // {
    //     $this->db->get_where('review', array('id_product' => $id));
    //     return $this->db->count_all_results('review');
    // }

    public function countitem($id)
    {
        $sql="select count(id_review) as jumlah from review where id_product=$id";
        return $this->db->query($sql)->result_array();  
    }

    public function totalreview($id)
    {
        $this->db->select_sum('rating');
        $this->db->from('review');
        $this->db->where('id_product', $id);
        $query = $this->db->get();
        return $query->row();
    }
    public function tambahreview($data)
    {
        $this->db->insert('review', $data);
    }

    

    // public function getreview2($id)
    // {
    //    $sql='select count(id_review) as jumlah from review where id_product=id group by id_product ';
    //    return $this->db->query($sql)->result();  
    // }
}


