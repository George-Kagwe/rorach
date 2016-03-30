<?php

//session_start(); //we need to start session in order to access it through CI

Class User_Authentication extends CI_Controller {

public function __construct() {
parent::__construct();

// Load form helper library
$this->load->helper('form');

// Load form validation library
$this->load->library('form_validation');

// Load session library
//$this->load->library('session');

// Load database
$this->load->model('login_database');
}

// Show login page
public function index() {
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
        //$this->load->view('Backend/Footer_view');
      }
     
      elseif ($usertype ==null) {
      
        $this->load->view('website/header_view');
        $this->load->view('website/topnav');
       $this->load->view('login_form');
       
       $this->load->view('website/footer_view');
      }
}

// Show registration page
public function user_registration_show() {
         $this->load->view('includes/header_view');
         $this->load->view('includes/top_nav');

         $this->load->view('registration_form');
}

// Validate and store registration data in database
public function new_user_registration() {

      // Check validation for user input in SignUp form
        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('email_value', 'Email', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
      if ($this->form_validation->run() == FALSE) {
          $this->load->view('includes/header_view');
          $this->load->view('includes/top_nav');
          $this->load->view('registration_form');
      } else {
            $data = array(
            'user_name' => $this->input->post('username'),
            'user_email' => $this->input->post('email_value'),
            'user_password' => $this->input->post('password')
            );
            $result = $this->login_database->registration_insert($data);
      if ($result == TRUE) {
          $data['message_display'] = 'Registration Successfully !';
          $this->load->view('includes/header_view');
          $this->load->view('includes/logged_top_nav');
          $this->load->view('login_form', $data);
      } 
      else {
        $data['message_display'] = 'Username already exist!';
        $this->load->view('includes/header_view');
        $this->load->view('includes/logged_top_nav');
        $this->load->view('registration_form', $data);
      }
      }
}

// Check for user login process
public function user_login_process() {

      $this->form_validation->set_rules('username', 'Username', 'trim|required');
      $this->form_validation->set_rules('password', 'Password', 'trim|required');

  if ($this->form_validation->run() == FALSE){
  
    if(isset($this->session->userdata['logged_in']))
    {
      $this->load->view('admin_page');
    }

    else{
        
            $this->load->view('Backend/header_view');
            $this->load->view('website/topnav');
            $this->load->view('Backend/login_form');
    }
  } 
    else {
          $data = array(
          'username' => $this->input->post('username'),
          'password' => md5($this->input->post('password'))
          );
          $result = $this->login_database->login($data);
    if ($result == TRUE) {

    $username = $this->input->post('username');
    $result = $this->login_database->read_user_information($username);
    // var_dump($result);die();
    if ($result != false) {
    $session_data = array(
    'username' => $result[0]->user_name,
    'type'     =>$result[0]->TYPE,
    'user_id'  =>$result[0]->USER_ID
    );

    $this->session->set_userdata('logged_in', $session_data);

    $usertype = ($this->session->userdata['logged_in']['type']);
    $userid = ($this->session->userdata['logged_in']['user_id']);
    //echo "$usertype";die();
if($usertype =='admin'){

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


// Add user data in session

}
} else {
$data = array(
'error_message' => 'Invalid Username or Password'
);
    $this->load->view('Backend/header_view');
   $this->load->view('website/topnav');
    $this->load->view('login_form', $data);
   // $this->load->view('includes/footer_view');
}
}
}

// Logout from admin page
public function logout() {

// Removing session data
$sess_array = array(
'username' => ''
);
$this->session->unset_userdata('logged_in', $sess_array);
$data['message_display'] = 'Successfully Logout';

$this->load->view('website/header_view');
$this->load->view('website/topnav');
$this->load->view('website/home_view');
$this->load->view('website/footer_view');
}

}

?>