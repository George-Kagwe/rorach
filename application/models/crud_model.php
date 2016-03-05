<?
class CRUD_model extends CI_Model {



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
	public function insert($data){
		$this->db->insert('students',$data);
		return $this->db->insert_id();

		
	}
	public function update(){

		
	}
	public function delete(){

		
	}
}
}