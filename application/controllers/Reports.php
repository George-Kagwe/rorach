<?php
// Be sure to include the file you've just downloaded
/**
* 
*/
class Reports extends CI_Controller
{
  
  public function __construct(){
    parent:: __construct();
    $this->load->model('user_model');
  }
  public function index(){

   $this->load->view('includes/header_view');
   $this->load->view('includes/top_nav');
   $this->load->view('charts/charts');

  }


  public function charts(){
  $this->load->view('includes/header_view');
  $this->load->view('includes/top_nav');
  $lists = null;
  $data['list']=$this->user_model->classes();
  //$this->load->view('classes/classes_allocation_view',$data);

   $json  = json_encode($data['list']);
  

  echo $json;

  
  }



}