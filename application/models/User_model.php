<?php

class User_model extends CI_Model{
	public function __construct(){
   parent::__construct(); 

}	
public function get($user_id=null){

		

		if ($user_id===null) {
			
       $q=$this->db->get('users');
       
		}elseif(is_array($user_id)){ 
			 $q =$this->db->get_where('users',$user_id);
			       
		}
		else{
			$q =$this->db->get_where('users',['id'=>$user_id]);
		}
		return $q->result_array();
 
	}
	public function get_numbers(){

		/*$sql=
		"SELECT 
		 phone as 'num'
		
		FROM patients
		
		";*/
		$sql="SELECT DISTINCT  patients.fname,classes.phone, classes.first_class,
	         classes.second_class, classes.third_class, classes.gestation
	        FROM patients
	       INNER JOIN classes
	      ON patients.phone =classes.phone";



       $result=$this->db->query($sql);
       return $result->result_array();
 
	}
	public function get_students1(){

		$sql=$this->db->get('patients');

      // $result=$this->db->query($sql);
       return $sql->result_array();
		//return $sql->result();
		//$query=$this->db->get('data');

    	//return $query->result();
 
	}
	public function get_patients(){
		$sql=$this->db->get('patients');
		return $sql->result();
	}
	public function classes(){

		/*$sql=
		"SELECT *
		
		FROM classes
		
		
		";*/



		/*$sql="SELECT   patients.lname,classes.phone, classes.first_class,patients.datejoined,
	         classes.second_class, classes.third_class, classes.gestation,classes.first_class
	        FROM patients
	       INNER JOIN classes
	      ON patients.phone =classes.phone ";*/
	      $sql ="SELECT dob FROM patients";


       $result=$this->db->query($sql);
       return $result->result_array();
 
	}
	
	
	
	public function insert($data){
		$this->db->insert('patients',$data);
		return $this->db->insert_id();

		
	}
	public function insert_classes($data){
		$this->db->insert('classes',$data);
		return $this->db->insert_id();

		
	}
	function update($data){


    	$this->db->where('id',$this->uri->segment(3));
        $this->db->update('data',$data);


    }

    function delete_row(){

    	$this->db->where('id',$this->uri->segment(3));

    	$this->db->delete('data');
    }


}