
  			 				
				<form name="patient_reg" id="patient_reg" class="form-horizontal" role="form" action="<?=site_url('user/register')?>"  method="POST" >
				   <div class="form-group">
						<label for="name" class="col-sm-2 control-label"> First Name</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="fname" name="fname" >
							<p><span id="divmothername"></span></p>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Other Names</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="mothername" name="mothername" >
							<p><span id="divmothername"></span></p>
						</div>
					</div>
				    <div class="form-group">
						<label for="name" class="col-sm-2 control-label">Phone Number</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="phone" name="phone" >
							<p><span id="divphonenumber"></span></p>
						</div>
					</div>
					
					<div class="form-group">
						<!--<label for="name" class="col-sm-2 control-label">DOB</label>

						<div class="col-lg-2">
							<input type="date" class="form-control" id="dateofbirth" name="dateofbirth" >
							
						</div>-->
						<label for="name" class="col-sm-2 control-label">Age in years</label>

						<div class="col-lg-3">
							<input type="text" class="form-control" id="dateofbirth" name="dateofbirth" >
							
						</div>
					</div>
					<!--<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Phone #</label>

					<div class="col-lg-3">
							<input type="text" class="form-control" id="pregnancy" name="pregnancy" >
							
						</div>
					</div>-->
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Address</label>

					<div class="col-lg-3">
							<input type="text" class="form-control" id="address" name="address" sssss>
							
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Date joined</label>

						<div class="col-lg-3">
						<input type="date" class="form-control" id="datejoined" name="datejoined" >
                         

                 </div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Parity</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="parity" name="parity" onkeyup="gravidity()">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>

                          </select>
							
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Abortions/Miscarriages</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="abortions" name="abortions" onkeyup="gravidity()">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>

                          </select>
							
						</div>
					</div>
					<!--<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Gravidity</label>
						<div class="col-lg-3">
							<input type="test" class="form-control" id="gravidity" name="gravidity" onkeyup="gravidity()">
						</div>
					</div>-->
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">LMP</label>
						<div class="col-lg-3">
							<input type="date" class="form-control" id="lmp" name="lmp" >
							
						</div>
					</div>
					<!--<div class="form-group">
						<label for="message" class="col-sm-2 control-label">EDD</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="edd" name="edd" >
						</div>
					</div>
					<!--<div class="form-group">
						<label for="human" class="col-sm-2 control-label">Upload Photos</label>
						<div class="col-lg-3">
							<span class="btn btn-default btn-file">
                             <input type="file" name="file_upload">
                            </span>

							
						</div>-->
					</div>
					<div class="form-group">
						<div class="col-lg-3 col-sm-offset-2">
							<input id="submit" name="submit" type="submit" value="Save" class="btn btn-primary">
							<!--<?php echo $message; ?>-->
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-3 col-sm-offset-2">
							
								
						</div>
					</div>
				</form> 
		 
   
     
    <li><a href="<?=site_url('user/get')?>">
    <input id="list" type="button" value="view all  Members" class="btn btn-primary"></a></li>
	
	<script type="text/javascript">
  function validation_details(){
   
   var name=document.patient_reg.name;
   if (name.value ==="") {
   	
   };



  }



	</script>