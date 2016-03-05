<style type="text/css">
 .navbar-custom {
   /* background-color:#2196F3;*/
   background-color:#673AB7;
    color:#ffffff;
    border-radius:0;
}

.navbar-custom .navbar-nav > li > a {
    color:#fff;
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #ffffff;
    background-color:black;
}
.navbar-custom .navbar-brand {
    color:#eeeeee;
}
.navbar-custom .navbar-nav > li > a:hover, .nav > li > a:focus 
{ 
  text-decoration: none; 
  font-weight: bolder;
  color: #FFFFFF;
  background-color: black; 
} 
}


</style>

<nav class="navbar navbar-custom ">
  <div class="container-fluid">
    <!-- Brand and toggle getd for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Rorach Limited</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<?=site_url('welcome/dashboard')?>">Dashboard <span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mother Profiles <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a  href="<?=site_url('welcome/register')?>">Register A Mother</a></li>
                    <li role="separator" class="divider"></li>
                
            <li><a href="<?=site_url('user/printa1')?>">Print a List</a></li>
            <li role="separator" class="divider"></li>
            <li role="separator" class="divider"></li>
            <li><a href="">Mother Class Attendance</a></li>
            
            </ul>
        </li>
        <li><a href="<?=site_url('classes/allocated_classes')?>">Classes</a></li>
       <li><a href="<?=site_url('sms/send')?>">Messaging</a></li>
     
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Finance <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Income</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Expenses</a></li>
             </ul>
        </li>
      </ul>
       <ul class="nav navbar-nav navbar-right">
       <li>
                    <a href="<?=site_url('rorach/calendar')?>"> Events Calendar</a>
                </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Logout <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Register a new User</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Change Password</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?=site_url('welcome/logout')?>">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
