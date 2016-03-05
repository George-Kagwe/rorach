<?php
// Be sure to include the file you've just downloaded
/**
* 
*/
class Classes extends CI_Controller
{
  
  public function __construct(){
    parent:: __construct();
    $this->load->model('user_model');
  }



  public function allocated_classes(){
  $this->load->view('includes/header_view');
  $this->load->view('includes/top_nav');
  $data['list']=$this->user_model->classes();
  $this->load->view('classes/classes_allocation_view',$data);

  
  }



}