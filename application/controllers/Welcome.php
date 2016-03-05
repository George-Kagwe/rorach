<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
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
}
