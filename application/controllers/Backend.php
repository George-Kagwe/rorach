<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Backend extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('data');
	}  


public function index() //this page shows the login page
{

    $this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');
    $this->load->view('login_form');
    $this->load->view('Backend/Footer_view');

}


public function dashboard(){

    $this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');
    $this->load->view('person/index');
    $this->load->view('Backend/Footer_view');


}

public function feedback(){

    $this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');
    $this->load->view('Backend/feedback_form');
   // $this->load->view('Backend/Footer_view');


}


public function register_clients(){

	$this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');

    $this->load->view('Backend/patient_registration');



}



public function change_password(){
	$this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');

   $this->load->view('Backend/change_password');


}





}