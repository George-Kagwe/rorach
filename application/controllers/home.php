<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* 
*/
class Home extends CI_Controller
{

public function index()	{
 $q=$this->db->get('users');
 $k=$q->result();
 print_r(json_encode($k));
 //print_r($k);

}

public function code(){
	//$this->load->library('encrypt');
	echo hash('sha256','maryann'.SALT);
}
public function register(){
        $this->load->view('includes/header_view');
		$this->load->view('student_registration');
		$this->load->view('includes/footer_view');


}
}