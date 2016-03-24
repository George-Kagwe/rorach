<?php

class User extends CI_Controller{

	public function __construct(){
		parent:: __construct();
		$this->load->model('user_model');
  
	}


  public function register_users(){


     //validate the date being  entered by the user

    

		//save user data
       $username      =$this->input->post('email');
       
       
       $password    =$this->input->post('password');
       $Confirmpassword    =$this->input->post('Confirmpassword');
         
         $type='admin';
        
       
     
		// save the data to the users table
	$users_data=array(
      'type'             =>$type,
      'user_name'        =>$username,     
      'user_password'    =>md5($password)
    	);

	var_dump($users_data);
      
      $this->users_model->insert_users($users_data);
      

  }
  



}