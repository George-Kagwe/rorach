<style type="text/css">
 .navbar-custom {
    background-color:#2196F3;
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
      <a class="navbar-brand" href="#">Ufanisi Senior School</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<?=site_url('welcome/dashboard')?>">Dashboard <span class="sr-only">(current)</span></a></li>
        <li><a href="<?=site_url('marks/exams')?>">Exams</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Student Profiles <span class="caret"></span></a>
          <ul class="dropdown-menu">
                      <li><a href="<?=site_url('user/printa1')?>">Print Form 1 Class List</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?=site_url('user/printa2')?>">Print Form 2 Class List</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?=site_url('user/printa3')?>">Print Form 3 Class List</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?=site_url('user/printa4')?>">Print Form 4 Class List</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="">Student Class Attendance</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Student Discipline</a></li>
            </ul>
        </li>

       
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Report Forms<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Print form 1 Report Forms</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Print Form 2 Report Forms</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Print form 3 Report Forms</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Print Form 4 Report Forms</a></li>
             </ul>
        </li>
      </ul>
       <ul class="nav navbar-nav navbar-right">
       <li>
                    <a href="<?=site_url('uss/calendar')?>"> Academic Calendar</a>
                </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Logout <span class="caret"></span></a>
          <ul class="dropdown-menu">
           
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
