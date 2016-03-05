<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Rorach extends CI_Controller {
public function __construct(){
parent:: __construct();


}
	

	
	public function index()
	{
		$this->load->view('ufanisi/includes/website_header');
		$this->load->view('ufanisi/contents/home_view');
		$this->load->view('ufanisi/includes/website_footer');
	}

	public function calendar()
	{   
		//$this->load->view('ufanisi/includes/website_header');
		//$this->load->view('ufanisi/contents/home_view');
		//$this->load->view('ufanisi/includes/website_footer');
		$this->load->view('includes/top_nav');
		$this->load->view('calendar/calendar_view');
	}

	
    


    public function aboutus()
	{
		$this->load->view('ufanisi/includes/website_header');
		$this->load->view('ufanisi/contents/aboutus_view');
		$this->load->view('ufanisi/includes/website_footer');
	}
    
    public function services()
	{
		$this->load->view('ufanisi/includes/website_header');
		$this->load->view('ufanisi/contents/facilities_view');
		$this->load->view('ufanisi/includes/website_footer');
	}
	
	public function contact()
	{
		$this->load->view('ufanisi/includes/website_header');
		$this->load->view('ufanisi/contents/contact_view');
		$this->load->view('ufanisi/includes/website_footer');
	}
	public function gallery()
	{
        $this->load->view('ufanisi/includes/website_header');
		$this->load->view('ufanisi/contents/gallery_view');
		$this->load->view('ufanisi/includes/website_footer');

	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */