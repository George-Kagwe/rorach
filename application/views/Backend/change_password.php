
<h3 id="register1" >Change Password</h3>



<form id="register" action="<?=site_url('user/register_users')?>"  method="POST">

   <div class="form-group row">
    <label for="email" class="col-sm-2 form-control-label">Email</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" id="email" name="email" placeholder="">
    </div>
  </div>

   <div class="form-group row">
    <label for="password" class="col-sm-2 form-control-label">Create Password</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" id="password" name="password" placeholder="">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="Confirmpassword" class="col-sm-2 form-control-label">Confirm Password</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" id="Confirmpassword" name="Confirmpassword" placeholder="">
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success" id="submitbutton">Register</button>
    </div>
  </div>
</form>

