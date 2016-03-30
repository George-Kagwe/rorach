<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Backend extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('data');

        // protect this page
       //$this->index();
	}  


public function index() //this page shows the login page
{
     /*
    $this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');
    $this->load->view('login_form');
    $this->load->view('Backend/Footer_view');
    */

       $usertype =null;
       $userid =null;
       if (isset($this->session->userdata['logged_in'])) {
            $usertype = ($this->session->userdata['logged_in']['type']);
            $userid = ($this->session->userdata['logged_in']['user_id']);
            //$sessionid = ($this->session->userdata['logged_in']['session_id']);
           //first check if the user is already logged in
       
       }
      if ($usertype =="admin") {
        //select the data specific to that user by use of  userid
        $query = $this->db->get_where('users', array('user_id' =>$userid));
      
       $mydata['information']=$query->result();

        $this->load->view('Backend/header_view');
        $this->load->view('Backend/Top_nav');
        $this->load->view('Backend/Footer_view');
      }
     
      elseif ($usertype ==null) {
      
        $this->load->view('website/header_view');
        $this->load->view('website/topnav');
       $this->load->view('login_form');
       
       $this->load->view('website/footer_view');
      }

}
 
public function sms(){
    $this->load->view('Backend/header_view');
    $this->load->view('Backend/Top_nav');
    $this->load->view('Backend/sms_view');
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