 <li><a href="<?=site_url('user/printa')?>"><input type="button" value="Print all " class="btn btn-primary"></a></li>
<style type="text/css">
  table{
    margin-left: 20%;
    margin-right: 20%;

  }

</style>
<table border = "1" cellpadding= "5" cellspacing="0">
    <tbody>
 <tr style ="text-align: left;">
   
  <th style ="width: 350px;">Name</th>
 <th style ="width: 100px;">Age</th>
 <th style ="width: 200px;">phone</th>
<th style ="width: 950px;">joined on</th>
<!--<th style ="width: 200px;">parity</th>
<th style ="width: 100px;">abortions</th>
<th style ="width: 150px;">gavidity</th>
<th style ="width: 700px;">lmp</th>
<th style ="width: 700px;">edd</th>
<th style ="width: 200px;">gestation</th>
<th style ="width: 200px;">Address</th>-->
<th style ="width: 200px;">Edit</th>
<th style ="width: 200px;">delete</th>


    </tr>
 		<?php foreach ($list as $list):?>
    	<tr>
    		
    		<td><?php echo $list->name;?></td>
    		<td><?php echo $list->dob;?></td>
        <td><?php echo $list->phone;?></td>
        <td><?php echo $list->datejoined;?></td>
       
       
        <td><?php echo anchor("user/update/$list->id",'Update');?></td>
        <!-- <td><?php echo  anchor("user/delete/$list->id",'Delete');?></td>-->
         <!-- <td><?php echo anchor("user/update/$list->id","<input id='cart' name='cart' type='submit'
                    value='Update' class='btn btn-primary ''>");?></td>-->
           
            
    	</tr>
   <?php endforeach; ?>
    </tbody>
	</table>