<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Person extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('person_model','person');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('website/header_view');
		$this->load->view('includes/innerbar');
		$this->load->view('person_view');

	}

	public function ajax_list()
	{
		$list = $this->person->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $person) {
			$no++;
			$row = array();
			$row[] = $person->fname;
			$row[] = $person->lname;
			$row[] = $person->phone;
			$row[] = $person->gravidity;
			$row[] = $person->dob;
			//$row[] = $person->gestation;
            
			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
		
			$data[] = $row;

		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->person->count_all(),
						"recordsFiltered" => $this->person->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->person->get_by_id($id);
		$data->dob = ($data->dob == '0000-00-00') ? '' : $data->dob; // if 0000-00-00 set tu empty for datepicker compatibility
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$address ='Nairobi';
		//''''''''''''''''''Calculations start ''''''''''''''''''''''//

		 
       $phone           =$this->input->post('phone');      
       $datejoined      =$this->input->post('datejoined');
       $parity          =$this->input->post('parity');
       $abortions       =$this->input->post('abortions');   
       $lmp             =$this->input->post('lmp');
      // $edd             =$this->input->post('edd');
      
   
     //calculations

                // 0. gravidity
                $gravidity =$parity +$abortions;



                // 1. calcualtion of edd

                $date=date_create($lmp);
                date_add($date,date_interval_create_from_date_string("40 weeks"));
                $edd= date_format($date,"Y-m-d");

                

                 // 2.conversion of number to the country specific code
                $code ="+254";
                
                $cut_number= trim($phone,0);
                $good =$code.$cut_number;
                    //echo $good;
                    // die();

            //Classes allocation engine
                     //calculate the pregnancy period, from lmp to date joined
                 
                 $date1=date_create($datejoined);
                 $date2=date_create($lmp);
                 $diff=date_diff($date2,$date1);
                 $gestation= $diff->format("%R%a days");
                

                 //convert the  gestation in weeks

                 $gestation_in_weeks =$gestation/7;

                 echo $gestation_in_weeks."weeks"."</br>";
                 //die();

                  // start allocation of classes

                if ($gestation_in_weeks>=0 && $gestation_in_weeks <=25) {
                   // 1. Allocate the first class 3 weeks after date joned
                   //echo "levlel 1"."</br>";
                   $session1=date_create($datejoined);
                   date_add($session1,date_interval_create_from_date_string("3 weeks"));
                   $first_class= date_format($session1,"Y-m-d");
                  // echo "The first class is  on ".$first_class."</br>";

                    
                   //1. Allocate the second class 3 weeks after first class
                   
                   $session2=date_create($first_class);
                   date_add($session2,date_interval_create_from_date_string("3 weeks"));
                   $second_class= date_format($session2,"Y-m-d"); 
                   
                   //echo "The second class is  on ".$second_class."</br>";

                   //1. Allocate the third class 3 weeks after second class
                   
                   $session3=date_create($second_class);
                   date_add($session3,date_interval_create_from_date_string("3 weeks"));
                   $third_class= date_format($session3,"Y-m-d");
                   //echo  "The third class is  on ". $third_class."</br>";
                  //die();
                    
                 }
                 if ($gestation_in_weeks>=26 && $gestation_in_weeks <=30) {
                  // echo "level 2";
                   $session1=date_create($datejoined);
                   date_add($session1,date_interval_create_from_date_string("2 weeks"));
                   $first_class= date_format($session1,"Y-m-d");
                   //echo "The first class is  on ".$first_class."</br>";

                    
                   //1. Allocate the second class 3 weeks after first class
                   
                   $session2=date_create($first_class);
                   date_add($session2,date_interval_create_from_date_string("2 weeks"));
                   $second_class= date_format($session2,"Y-m-d"); 
                   
                  // echo "The second class is  on ".$second_class."</br>";

                   //1. Allocate the third class 3 weeks after second class
                   
                   $session3=date_create($second_class);
                   date_add($session3,date_interval_create_from_date_string("2 weeks"));
                   $third_class= date_format($session3,"Y-m-d");
                  // echo  "The third class is  on ". $third_class."</br>";
                
                    
                 }
                 if ($gestation_in_weeks>=31 && $gestation_in_weeks <=40) {
                 /// echo "level 3"."</br>";
                   $session1=date_create($datejoined);
                   date_add($session1,date_interval_create_from_date_string("1 weeks"));
                   $first_class= date_format($session1,"Y-m-d");
                  // echo "The first class is  on ".$first_class."</br>";

                    
                   //1. Allocate the second class 3 weeks after first class
                   
                   $session2=date_create($first_class);
                   date_add($session2,date_interval_create_from_date_string("1 weeks"));
                   $second_class= date_format($session2,"Y-m-d"); 
                   
                   //echo "The second class is  on ".$second_class."</br>";

                   //1. Allocate the third class 3 weeks after second class
                   
                   $session3=date_create($second_class);
                   date_add($session3,date_interval_create_from_date_string("1 weeks"));
                   $third_class= date_format($session3,"Y-m-d");
                   //echo  "The third class is  on ". $third_class."</br>";
                // die();
                    
                 }



		//''''''''''''''''''calulations end''''''''''''''''''''''''//

		$data = array(
				'fname' => $this->input->post('firstName'),
				'lname' => $this->input->post('lastName'),
				'phone' =>$good,
				'address'=>$address,
				'datejoined'=>$this->input->post('datejoined'),
				'parity'=>$this->input->post('parity'),
				'abortions'=>$this->input->post('abortion'),
				'lmp'=>$this->input->post('lmp'),
				'edd'=>$edd,
				'dob' => $this->input->post('age'),
				'gravidity'=>$gravidity,
				'gestation'=>$gestation
			);
		$insert = $this->person->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
				'fname' => $this->input->post('firstName'),
				'lname' => $this->input->post('lastName'),
				//'phone' =>$good,
				//'address'=>$address,
				'datejoined'=>$this->input->post('datejoined'),
				'parity'=>$this->input->post('parity'),
				'abortions'=>$this->input->post('abortions'),
				'lmp'=>$this->input->post('lmp'),
				'edd'=>$this->input->post('edd'),
				'dob' => $this->input->post('age')
			);
		$this->person->update(array('id' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->person->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}


	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('firstName') == '')
		{
			$data['inputerror'][] = 'firstName';
			$data['error_string'][] = 'First name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('lastName') == '')
		{
			$data['inputerror'][] = 'lastName';
			$data['error_string'][] = 'Last name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('phone') == '')
		{
			$data['inputerror'][] = 'phone';
			$data['error_string'][] = 'please enter phone number';
			$data['status'] = FALSE;
		}

		if($this->input->post('age') == '')
		{
			$data['inputerror'][] = 'age';
			$data['error_string'][] = 'Please enter age';
			$data['status'] = FALSE;
		}

		if($this->input->post('datejoined') == '')
		{
			$data['inputerror'][] = 'datejoined';
			$data['error_string'][] = 'Date joined is required';
			$data['status'] = FALSE;
		}
		if($this->input->post('parity') == '')
		{
			$data['inputerror'][] = 'parity';
			$data['error_string'][] = 'Parity is required';
			$data['status'] = FALSE;
		}
		if($this->input->post('abortion') == '')
		{
			$data['inputerror'][] = 'abortion';
			$data['error_string'][] = ' required';
			$data['status'] = FALSE;
		}

		if($this->input->post('lmp') == '')
		{
			$data['inputerror'][] = 'lmp';
			$data['error_string'][] = 'lmp date is required';
			$data['status'] = FALSE;
		}

		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}

}
