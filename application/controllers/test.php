<?php
// Be sure to include the file you've just downloaded
/**
* 0727545687
*/
class Sms extends CI_Controller
{
  
  public function __construct(){
    parent:: __construct();
    $this->load->model('user_model');
  }


public function send(){
                // this funtion sends sms to mothers
              $this->load->view('includes/header_view');
              $this->load->view('includes/top_nav');
              $this->load->library('sms/AfricasTalkingGateway');

              $data=$this->user_model->get_numbers();

              $thursday =date("Y-m-d");
              foreach ($data as $key1=>$value1) {

                          $name= $value1['name']; 
                          $recipients =$value1['phone'].",";

                          echo $name."".$recipients; die();
                          
              // Specify your login credentials
              $username   = "GeorgeKagwe";
              $apikey     = "48a6129bbb12a4790bfd415cc5964a0fed0a8b29e4c6e5cb8314a1f38cdee513";

              // Specify the numbers that you want to send to in a comma-separated list
              // Please ensure you include the country code (+254 for Kenya in this case)
              //$recipients = "+254719717058,+254721382663,+254733880175";

              // And of course we want our recipients to know what we really do
              $message    = "Hello $name, you are reminded of your childbirth classes on $class3 at Kenyatta Hospital come dressed casual with your spouse  from loop 3";

              // Create a new instance of our awesome gateway class
              $gateway    = new AfricasTalkingGateway($username, $apikey);

              // Any gateway error will be captured by our custom Exception class below, 
              // so wrap the call in a try-catch block

              try 
              { 
                // Thats it, hit send and we'll take care of the rest. 
                $results = $gateway->sendMessage($recipients, $message);
                    
                foreach($results as $result) {
                  // status is either "Success" or "error message"
                  
                  echo " Number: " .$result->number;
                  //echo " Status: " .$result->status;
                 // echo " MessageId: " .$result->messageId;
                  echo " Cost: "   .$result->cost."\n";
                }
              }
              catch ( AfricasTalkingGatewayException $e )
              {
                echo "Encountered an error while sending: ".$e->getMessage();
              }

              // DONE!!! */

          

        
          else{

                echo "No people to send to";
                
          }



       }
   //}
 // }

 }
 


 public function testing(){
     $data=$this->user_model->get_numbers();
    $thursday =date("Y-m-d");
    //echo $thursday ;die();
      foreach ($data as $key1=>$value1) {
        //foreach ($value1 as  $key2=>$value2) {
          //  $k =count($data);
            //echo $datal;die();

           //$k=count($value1);
            
            //$y=count($value2);
         //   for($i=0;$i<$k; $i++){
            // echo $value1['name']."<br>"; 
           // echo $value1['phone']."<br>";
             $class1 =$value1['first_class'] ;
             $class2 =$value1['second_class'] ;
          // }'" . $email ."'
             $class11=" \"$class1\"";
             //echo $class11;
             //die();
            $today="\"$thursday\"";
            //echo $today;
            $converted=strtotime($thursday);
           //die();
          }
            echo $class1."</br>";
            echo $thursday."</br>";
$date1=date_create($thursday);
$date2=date_create($class1);
$diff=date_diff($date1,$date2);
$diffa= $diff->format("%R%a ");

echo $diffa;

        // }


    
 }

}