<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	
	public function index()
	{$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/home_view');
$this->load->view('website/footer_view');
	}

	public function rorach(){
		
$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/home_view');
$this->load->view('website/footer_view');
	}
	public function rorach_about(){
		
$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/aboutus_view');
$this->load->view('website/footer_view');
	}


	public function rorach_gallery(){
		
$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/gallery_view');
$this->load->view('website/footer_view');
	}
	public function rorach_services(){
		
$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/services_view');
$this->load->view('website/footer_view');
	}
	public function rorach_contact(){
		
$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/gallery_view');
$this->load->view('website/footer_view');
	}


	public function rorach_login(){
		$this->load->view('Backend/header_view');
        $this->load->view('website/topnav');
        $this->load->view('Backend/login_form');
        //$this->load->view('website/footer_view');

    }
}
