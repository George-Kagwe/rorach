<h3 class="page-header text-center" >Login</h3>
<div class="wrapper-login">
	
<form id="login_form" class="form-horizontal" method="post" action="<?=site_url('user/login')?>">

        <div class="form-group">
						<label for="email" class="col-sm-2 control-label">Username</label>
						<div class="col-lg-6">
						<input type="text" class="form-control" id="username" name="username" >
							
						</div>
					</div>
					<div class="form-group">
						<label for="message" class="col-sm-2 control-label">Password</label>
						<div class="col-lg-6">
						   		<input type="password" class="form-control" id="password"  name="password" >
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-6 col-sm-offset-2">
							<input id="submit" name="submit" type="submit" value="Login" class="btn btn-primary">
							
					</div>
	
</form>
</div>

<script type="text/javascript">
	$(function(){

		$("#login_form").submit(function(evt){

			evt.preventDefault();
          var url=  $(this).attr('action');
           var postData= $(this).serialize();

           $.post(url,postData,function(o){
           	if(o.result==1){
              alert('Welcome');
              window.location.href="<?=site_url('welcome/dashboard')?>";
           	}else{
           		alert('invalid login');
           	}

           },'json');



		})
		
	});


</script>


