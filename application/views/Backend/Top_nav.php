<style type="text/css">
  



</style>




<nav id="navbar-black" class="navbar navbar-default " role="navigation">
<!--<nav class="navbar  custom-navbar navbar-default ">-->
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!--<a class="navbar-brand" href="<?=site_url('welcome/index')?>"><img  class="logo" src="<?php echo base_url().'images/logo33.png';?>" ></a>-->
      <a  class="navbar-brand" href="<?=site_url('welcome/index')?>">Go to website</a>
    </div>
    

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="<?=site_url('person/index')?>">Charts</a></li>
        <li><a href="<?=site_url('person/index')?>">Dashboard</a></li>
        <li><a href="<?=site_url('backend/register_clients')?>">Register new clients</a></li>
        <li><a href="<?=site_url('backend/sms')?>">Send SMS</a></li>
         <li><a href="<?=site_url('backend/feedback')?>">Feedback</a></li>
         <li><a href="<?=site_url('backend/change_password')?>">change password</a></li>
         <li><a href="<?=site_url('User_Authentication/logout')?>">Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
