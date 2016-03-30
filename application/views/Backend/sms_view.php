<style type="text/css">
	#counting{
		width:10%;
	}
</style>
<form name="myform" id="form" class="form-horizontal" role="form" action="<?=site_url('user/feedback')?>"  method="POST" >
      <div class="form-group">
						<label for="message" class="col-sm-5 control-label">Type SMS Message</label>
		<div class="col-sm-5">
			<textarea class="form-control" rows="4"  name="limitedtextarea" onKeyDown="limitText(this.form.limitedtextarea,this.form.countdown,145);" 
			onKeyUp="limitText(this.form.limitedtextarea,this.form.countdown,145);">
			</textarea>
			<br>
			<font size="1">(Maximum characters: 145)<br>
			You have <input readonly type="text" name="countdown" id="counting"  value="145"> characters left.</font>
		</div>
       </div>


       <div class="form-group">
						<div class="col-sm-5 col-sm-offset-5">
							<input id="btnSave" name="submit" type="submit" value="Send SMS" class="btn btn-primary">
							<span class="help-block"></span>
						</div>
		</div>

			
</form>


<script language="javascript" type="text/javascript">
function limitText(limitField, limitCount, limitNum) {
	if (limitField.value.length > limitNum) {
		limitField.value = limitField.value.substring(0, limitNum);
	} else {
		limitCount.value = limitNum - limitField.value.length;
	}
}
</script>