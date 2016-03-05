<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
public function __construct(){
parent:: __construct();
$user_id=$this->session->userdata('id');

		$this->load->model('user_model');

}
	

	public function get(){

    $data['list']=$this->user_model->get();

    print_r($data['list']);die;
    $this->load->view('student_registration',$data);
	}
	public function index()
	{
		$this->load->view('includes/header_view');
		$this->load->view('home_view');
		$this->load->view('includes/footer_view');
	}

	public function register(){
		$this->load->view('includes/header_view');
		$this->load->view('includes/top_nav');
		$this->load->view('patient_registration');
		$this->load->view('includes/footer_view');

	}
	public function dashboard(){
		$this->load->view('includes/header_view');
		$this->load->view('includes/top_nav');
		$this->load->view('includes/sidebar');
		$this->load->view('includes/footer_view');

	}
	public function logout(){
      $this->session->sess_destroy();
      redirect('/');

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */