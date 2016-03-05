<?php

class Marks_model extends CI_Model{
	public function __construct(){
   parent::__construct(); 

}	
public function get($user_id=null){

		

		if ($user_id===null) {
			
       $q=$this->db->get('marks');
       
		}elseif(is_array($user_id)){ 
			 $q =$this->db->get_where('marks',$user_id);
			       
		}
		else{
			$q =$this->db->get_where('marks',['studentid'=>$user_id]);
		}
		return $q->result_array();
 
	}
	//this function is for generating reportforms
	public function get_marks(){

		$sql=
		"SELECT 
		studentid as 'id',
		sname    as 'name',
		clas   as  'class',
		dayborder as  'day/border'
		FROM marks
		";

       $result=$this->db->query($sql);
       return $result->result_array();
 
	}
	public function insert($data){
		$this->db->insert_batch('exams',$data);
		return $this->db->insert_id();

		
	}
	public function update(){

		
	}
	public function delete(){

		
	}
}