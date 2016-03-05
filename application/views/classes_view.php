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
   
  
 <th style ="width: 200px;">phone</th>
<th style ="width: 200px;">date joined</th>
<!--<th style ="width: 200px;">parity</th>
<th style ="width: 100px;">abortions</th>-->
<th style ="width: 200px;">gavidity</th>
<th style ="width: 100px;">lmp</th>
<th style ="width: 200px;">edd</th>
<th style ="width: 200px;">age in weeks</th>
<th style ="width: 200px;">Address</th>

    </tr>
 		<?php foreach ($list as $student):?>
    	<tr>
    		
    	<td><?php echo $student['phone']?></td>
    	<td><?php echo $student['first_class']?></td>
        <td><?php echo $student['second_class']?></td>
        <td><?php echo $student['third_class']?></td>
        <td><?php echo $student['gestation']?></td>
       
            
    	</tr>
   <?php endforeach; ?>
    </tbody>
	</table>