
  			 				
				<form name="feedback" id="form" class="form-horizontal" role="form" action="<?=site_url('user/feedback')?>"  method="POST" >
				   <div class="form-group">
						<label for="name" class="col-sm-2 control-label">Name</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="name" name="name" >
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">contact</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="contact" name="contact" >
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">when did you give birth</label>
						<div class="col-lg-3">
							 <input name="dob" placeholder="yyyy-mm-dd" class="form-control datepicker" id="datejoined"type="text">
							<span class="help-block"></span>
						</div>
					</div>
					
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">What was status of baby</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="status" name="status">
                            <option value="">select</option>
                            <option value="0">Alive and well</option>
                            <option value="1">Still</option>
                            </select>
						<span class="help-block"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">What was the duration of labour?</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="labour" name="labour" >
							<span class="help-block"></span>
						</div>
					</div>
				    <div class="form-group">
						<label for="name" class="col-sm-2 control-label">Was there a medical intervention</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="intervention" name="intervention" >
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<label for="message" class="col-sm-2 control-label">Description</label>
						<div class="col-lg-3">
							<textarea class="form-control" rows="4" name="description"></textarea>
							
						</div>
					</div>
					
					<div class="form-group">
						
						<label for="name" class="col-sm-2 control-label">Breast Feeding?</label>
                        <div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="breastfeeding" name="breastfeeding">
                            <option value="">select</option>
                            <option value="0">Yes</option>
                            <option value="1">No</option>
                            </select>
						<span class="help-block"></span>
						</div>
						   
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">For how long</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="breastfeeding" name="breastfeeding">
                            <option value="">select</option>
                            <option value="0"> 3 months</option>
                            <option value="1">6 months</option>
                            <option value="2"> 1 year</option>
                            <option value="3">more than 1 year</option>
                            

                          </select>
						<span class="help-block"></span>
						</div>
					</div>
					
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Maternal emotion</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="emoton" name="duration">
                            <option value="">select</option>
                            <option value="0">Happy</option>
                            <option value="1">Worried</option>
                            </select>
						<span class="help-block"></span>
						</div>
					</div>

					
						<label for="name" class="col-sm-2 control-label">Family Satisfaction?</label>
						<div class="col-lg-3">
							<select class=" col-sm-2 form-control" id="satisfaction" name="satisfaction">
							 <option value="">select</option>
                            <option value="0">Contented</option>
                            <option value="1">Happy</option>
                            </select>
							<span class="help-block"></span>
						</div>
					</div>
					
					
					
					</div>
					<div class="form-group">
						<div class="col-lg-3 col-sm-offset-2">
							<input id="btnSave" name="submit" type="submit" value="Save" class="btn btn-primary">
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-3 col-sm-offset-2">
							
								
						</div>
					</div>
				</form> 
		 
   
     
    


     
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