<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class toko extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data kontak
    function index_get() {
        $id = $this->get('cat_id');
        if ($id == '') {
            $data = $this->db->get('categories')->result();
        } else {
            $this->db->where('cat_id', $id);
            $data = $this->db->get('categories')->result();
        }
        $this->response($data, 200);
    }

	function index_post() {
        $data = array(
            'cat_id' 			=> $this->post('cat_id'),
            'cat_name'      	=> $this->post('cat_name'),
            'cat_describtion'   => $this->post('cat_describtion'),
            'cat_created'       => $this->post('cat_created'),
			'cat_modified'      => $this->post('cat_modified'));
        $insert = $this->db->insert('categories', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
	
	function index_put() {
        $id = $this->put('cat_id');
        $data = array(
            'cat_id' 			=> $this->post('cat_id'),
            'cat_name'      	=> $this->post('cat_name'),
            'cat_describtion'   => $this->post('cat_describtion'),
            'cat_created'       => $this->post('cat_created'),
			'cat_modified'      => $this->post('cat_modified'));
        $this->db->where('cat_id', $id);
        $update = $this->db->update('categories', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
	
    function index_delete() {
        $id = $this->delete('cat_id');
        $this->db->where('cat_id', $id);
        $delete = $this->db->delete('categories');
        if ($delete) {
            $this->response(array('status' => 'Success'), 201);
        } else {
            $this->response(array('status' => 'Fail', 502));
        }
    }
}
?>