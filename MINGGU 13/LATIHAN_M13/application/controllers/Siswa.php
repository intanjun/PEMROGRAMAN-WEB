<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';

class Siswa extends REST_Controller
{
    //-------------------------------------------------------------------
    // Konfigurasi REST API
    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }
 
    //-------------------------------------------------------------------
    // Fitur Tampil Data REST API
    function index_get() {
        $id = $this->get('id');
        if ($id == '') {
            $data = $this->db->get('sekolah')->result();
        } else {
            $this->db->where('id', $id);
            $data = $this->db->get('sekolah')->result();
        }
        $this->response($data, 200);
    }

	function index_post() {
        $data = array(
            'id' 		=> $this->post('id'),
            'nama'      => $this->post('nama'),
            'alamat'    => $this->post('alamat'),
            'logo'      => $this->post('logo'));
        $insert = $this->db->insert('sekolah', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
	
	function index_put() {
        $id = $this->put('id');
        $data = array(
            'id' 		 => $this->post('id'),
            'nama'       => $this->post('nama'),
            'alamat'     => $this->post('alamat'),
            'logo'       => $this->post('logo'));
        $this->db->where('id', $id);
        $update = $this->db->update('sekolah', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
	
    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('sekolah');
        if ($delete) {
            $this->response(array('status' => 'Success'), 201);
        } else {
            $this->response(array('status' => 'Fail', 502));
        }
    }
}
