<div id="registration">
                    	
                   <div id="registration1">
                   	<h3> Register a mother</h3>	
  			 		<hr/>
                   </div>
  			 			
				<form name="patient_reg" id="form" class="form-horizontal" role="form" action="<?=site_url('user/register')?>"  method="POST" >
				   <div class="form-group">
						<label for="name" class="col-sm-3 control-label"> First Name</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="fname" name="fname" >
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Other Names</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="mothername" name="mothername" >
							<span class="help-block"></span>
						</div>
					</div>
				    <div class="form-group">
						<label for="name" class="col-sm-3 control-label">Phone Number</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="phone" name="phone" >
							<span class="help-block"></span>
						</div>
					</div>
					
					<div class="form-group">
						
						<label for="name" class="col-sm-3 control-label">Age in years</label>

						<div class="col-sm-4">
							<input type="text" class="form-control" id="dateofbirth" name="dateofbirth" >
							<span class="help-block"></span>
						</div>
					</div>
					
					<!--<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Address</label>

					<div class="col-lg-3">
							<input type="text" class="form-control" id="address" name="address" sssss>
							<span class="help-block"></span>
						</div>
					</div>-->
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Date joined</label>

						<div class="col-lg-4">
					      <input name="datejoined" placeholder="yyyy-mm-dd" class="form-control datepicker" id="datejoined"type="text">
                         <span class="help-block"></span>
                        </div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-3 control-label">LMP</label>
						<div class="col-sm-4">
							 <input name="lmp" placeholder="yyyy-mm-dd" class="form-control datepicker" id="lmp"type="text">
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Parity</label>
						<div class="col-sm-4">
							<select class=" col-sm-3 form-control" id="parity" name="parity" onkeyup="gravidity()">
                            <option value="">select</option>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>

                          </select>
						<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-3 control-label">Abortions/Miscarriages</label>
						<div class="col-lg-4">
							<select class=" col-sm-3 form-control" id="abortions" name="abortions">
							 <option value="">select</option>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>

                          </select>
							<span class="help-block"></span>
						</div>
					</div>
								
										
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-3">
							<input id="submitbutton" name="submit" type="submit" value="Save" class="btn btn-primary">
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-4">
							
								
						</div>
					</div>
				</form> 
</div>
   
     
    


       <script type="text/javascript">
       $(document).ready(function() {
		       	$('.datepicker').datepicker({
		        autoclose: true,
		        format: "yyyy-mm-dd",
		        todayHighlight: true,
		        orientation: "top auto",
		        todayBtn: true,
		        todayHighlight: true,  
		    });
         });
       

		


       </script>