<?php

class User extends CI_Controller{

	public function __construct(){
		parent:: __construct();
		$this->load->model('user_model');
    $this->load->helper('crud');
	}


  public function printa(){
    
    $this->load->library('mpdf/mpdf');
    $this->load->view('includes/header_view');
    $mpdf=new mPDF();

    $classlist=$this->user_model->get_students1();
     
    $data=' '.'<br/>'.'<br/>'.'<br/>'.'<table border = "1" cellpadding= "5" cellspacing="0">
      <tbody>
     <tr style ="text-align: left;">
     <th style ="width:14px;">Number</th>
     <th style ="width: 150px;">Name</th>
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     </tr>';
     foreach ($classlist as $student):
      $data.='<tr>
        <td> '. $student['id'].'</td>
        <td>'. $student['name'].'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
            
      </tr>';
     endforeach; 
     $data.='</tbody>
     </table>';

     $mpdf->WriteHTML($data);
     $mpdf->Output();
    exit;
    
  }
  public function printa1(){
    
    $this->load->library('mpdf/mpdf');
    $this->load->view('includes/header_view');
    $mpdf=new mPDF();

    $classlist=$this->user_model->get_students1();
     
    $data=''.'<br/>'.'<br/>'.'<br/>'.'<table border = "1" cellpadding= "5" cellspacing="0">
      <tbody>
     <tr style ="text-align: left;">
     <th style ="width:14px;">Number</th>
     <th style ="width: 250px;">Name</th>
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     </tr>';
     foreach ($classlist as $student):
      $data.='<tr>
        <td> '. $student['id'].'</td>
        <td>'. $student['name'].'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
            
      </tr>';
     endforeach; 
     $data.='</tbody>
     </table>';

     $mpdf->WriteHTML($data);
     $mpdf->Output();
    exit;
    
  }
  public function printa2(){
    
    $this->load->library('mpdf/mpdf');
    $this->load->view('includes/header_view');
    $mpdf=new mPDF();

    $classlist=$this->user_model->get_students2();
     
    $data=''.'<br/>'.'<br/>'.'<br/>'.'<table border = "1" cellpadding= "5" cellspacing="0">
      <tbody>
     <tr style ="text-align: left;">
     <th style ="width:14px;">Admission</th>
     <th style ="width: 150px;">Name</th>
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     </tr>';
     foreach ($classlist as $student):
      $data.='<tr>
        <td> '. $student['id'].'</td>
        <td>'. $student['name'].'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
            
      </tr>';
     endforeach; 
     $data.='</tbody>
     </table>';

     $mpdf->WriteHTML($data);
     $mpdf->Output();
    exit;
    
  }
  public function printa3(){
    
    $this->load->library('mpdf/mpdf');
    $this->load->view('includes/header_view');
    $mpdf=new mPDF();

    $classlist=$this->user_model->get_students3();
     
    $data=' '.'<br/>'.'<br/>'.'<br/>'.'<table border = "1" cellpadding= "5" cellspacing="0">
      <tbody>
     <tr style ="text-align: left;">
     <th style ="width:14px;">Admission</th>
     <th style ="width: 150px;">Name</th>
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     </tr>';
     foreach ($classlist as $student):
      $data.='<tr>
        <td> '. $student['id'].'</td>
        <td>'. $student['name'].'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
            
      </tr>';
     endforeach; 
     $data.='</tbody>
     </table>';

     $mpdf->WriteHTML($data);
     $mpdf->Output();
    exit;
    
  }
  public function printa4(){
    
    $this->load->library('mpdf/mpdf');
    $this->load->view('includes/header_view');
    $mpdf=new mPDF();

    $classlist=$this->user_model->get_students4();
     
    $data=''.'<br/>'.'<br/>'.'<br/>'.'<table border = "1" cellpadding= "5" cellspacing="0">
      <tbody>
     <tr style ="text-align: left;">
     <th style ="width:14px;">Admission</th>
     <th style ="width: 150px;">Name</th>
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     <th style ="width: 140px;"></th> 
     </tr>';
     foreach ($classlist as $student):
      $data.='<tr>
        <td> '. $student['id'].'</td>
        <td>'. $student['name'].'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
        <td>'.'</td>
            
      </tr>';
     endforeach; 
     $data.='</tbody>
     </table>';

     $mpdf->WriteHTML($data);
     $mpdf->Output();
    exit;
    
  }
  public function get(){
    $this->load->view('includes/header_view');
    $this->load->view('includes/top_nav');
    $data['list']=$this->user_model->get_patients();

 
 
    $this->load->view('class_list',$data);
   $this->load->view('includes/footer_view');
	}
 

  public function register(){
     
		 /*$this->output->set_content_type('application_json');

	   $this->form_validation->set_rules('admission','Admission','required|is_numeric|is_unique[students.studentid]');
	   $this->form_validation->set_rules('name','Name','required');
	   $this->form_validation->set_rules('dayorborder','Admission');
	   $this->form_validation->set_rules('class','Admission');
	   $this->form_validation->set_rules('parentname','Admission');
     $this->form_validation->set_message('required','is required');
     $this->form_validation->set_message('is_unique','Already exists');
     if($this->form_validation->run()==false){
      
      $this->output->set_output(json_encode(['result'=>0,'data'=>validation_errors()]));
       
      //die();
     }*/

       $mothername      =$this->input->post('mothername');
       $phone           =$this->input->post('phone');
       $dateofbirth     =$this->input->post('dateofbirth');
       $address         =$this->input->post('address');
       $datejoined      =$this->input->post('datejoined');
       $parity          =$this->input->post('parity');
       $abortions       =$this->input->post('abortions');
     //  $gravidity       =$this->input->post('gravidity');
       $lmp             =$this->input->post('lmp');
       $edd             =$this->input->post('edd');
       $fname             =$this->input->post('fname');
     

   
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
                 


      // insert into the classes table

      $this->user_model->insert_classes([
        'phone'  =>$good,
         'first_class' =>$first_class,
         'second_class' =>$second_class,
         'third_class' =>$third_class,
         'gestation'   =>$gestation_in_weeks
      
      ]);
     //insert the data into the patients  table

      $this->user_model->insert([
      'name'              =>$mothername,
      'dob'               =>$dateofbirth,
      'phone'             =>$good,
      'address'           =>$address,
      'datejoined'        =>$datejoined,
      'parity'            =>$parity,
      'abortions'         =>$abortions,
      'gravidity'         =>$gravidity,
      'lmp'               =>$lmp,
      'edd'               =>$edd,
      'gestation'         =>$gestation_in_weeks,
      'fname'             =>$fname
      ]);
      // end of inserting into the patients table


      redirect('welcome/register');
     


        $this->load->view('includes/header_view');
        $this->load->view('includes/top_nav');
        $this->load->view('patient_registration');
        $this->load->view('includes/footer_view');

    
 
  }

	public function login(){
		$username=$this->input->post('username');
		$password=$this->input->post('password');
		//$hashed=hash('sha256',$password.SALT);
		$result=$this->user_model->get([

         'username'=>$username,
         'password'=>$password

		]);
		
        $this->output->set_content_type('application_json');
       
        if($result){
         $this->session->set_userdata(['id'=>$result[0]['id']]);
         $this->output->set_output(json_encode(['result'=>1]));
        	return false;
       }
       $this->output->set_output(json_encode(['result'=>0]));
     

	}
	public function insert(){
    
  
$date1=date_create("2013-03-15");
$date2=date_create("2013-12-12");
$diff=date_diff($date1,$date2);
echo $diff->format("%R%a days");
//echo $diff;

		
	}
	public function update(){
         $id=$this->uri->segment(3);
     
        $query = $this->db->get_where('patients', array('id' => $id));
    
        $data['list']=$query->result();


    $this->load->view('includes/header_view');
    $this->load->view('includes/top_nav');
    $this->load->view('patient_update',$data);
    $this->load->view('includes/footer_view');
    ////////////////////////////////////////////////////

       $mothername      =$this->input->post('mothername');
       $phone           =$this->input->post('phone');
       $dateofbirth     =$this->input->post('dateofbirth');
       $address         =$this->input->post('phone');
       $datejoined      =$this->input->post('datejoined');

       /*$update = array(
               'name'       => $mothername,
               'phone'      => $phone,
               'dob'        => $dateofbirth,
               'datejoined' => $datejoined 
            );*/

         //var_dump($update);die();
          // $this->db->where('id', $id);
           //$this->db->update('patients', $update); 
          // $this->db->update('patients', $update, "id =$id");

           // $this->load->view('includes/header_view');
    //$this->load->view('includes/top_nav');
    //$this->load->view('patient_update',$data);
   // $this->load->view('includes/footer_view');
    ////////////////////////////////////////////////////

		
	}
	public function delete(){
  

	}
}