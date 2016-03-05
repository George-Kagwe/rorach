<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">Rorach System
                        <!--<img src="public/images/logo.gif"  height="90px" width="100px" style="background-color: #ffffff";>-->
                    </a>
                </li>
                <li>
                   <a  href="<?=site_url('welcome/register')?>">Register A Mother</a>
                    
                </li>
                
                <li>
                    <a href="<?=site_url('rorach/calendar')?>"> Events Calendar</a>
                </li>

                <li>
                    <a href="#">Reports</a>
                    
                </li>
               
                
                <li>
                    <a href="<?=site_url('welcome/logout')?>">Logout</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Welcome</h1>
                        <p></p>
                        <p>******************************</code>.</p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">FullScreen</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    
    <script src="<?php echo base_url().'public/js/jquery.js';?>"></script>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  
    <!-- Bootstrap Core JavaScript -->

    <script src="<?php echo base_url().'public/js/bootstrap.min.js';?>"></script>
     <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>