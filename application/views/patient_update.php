                 

  			 				
				<form name="patient_reg" id="patient_reg" class="form-horizontal" role="form" action="<?=site_url('user/update')?>"  method="POST" >
                     <table border = "1" cellpadding= "5" cellspacing="0">
    <tbody>
 <tr style ="text-align: left;">
   
  <th style ="width: 350px;">Name</th>
 <th style ="width: 100px;">Age</th>
 <th style ="width: 200px;">phone</th>
<th style ="width: 950px;">joined on</th>

<th style ="width: 200px;">Edit</th>
<th style ="width: 200px;">delete</th>


    </tr>
 		<?php foreach ($list as $list):?>
    	<tr>
    		 <td><input name="mothername" value="<?php echo $list->name;?>" /></td>
          <td><input name="dateofbirth" value="<?php echo $list->dob;?>" /></td>
          <td><input name="phone" value="<?php echo $list->phone;?>" /></td>
           <td><input type ="date" name="datejoined" value="<?php echo $list->datejoined;?>" /></td>
    		    
        
       
       
        <td> <input  type="submit" value="Update" class="btn btn-primary"></td>
         <td><?php echo  anchor("user/delete/$list->id",'Delete');?></td>
           
            
    	</tr>
   <?php endforeach; ?>
    </tbody>
	</table>

						</form> 
		 
   
     
    
    <input  type="submit" value="Update" class="btn btn-primary">
	
	
