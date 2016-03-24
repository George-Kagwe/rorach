$(function() {
  
    // Setup form validation on the #register-form element
    $("#form").validate({
    
        // Specify the validation rules
        rules: {
            fname: "required",
            mothername: "required",
            phone: "required",
            datejoined: "required",
            dateofbirth:"required",
            parity:"required",
            abortions:"required",
            address:"required",
            lmp:"required"
        },
        
        // Specify the validation error messages
        messages: {
            fname: "Please enter name",
            mothername: "Please enter name",
            phone:"please enter the phone number",
            dateofbirth: "please enter the age",
            datejoined: "please enter the datejoined",
            parity:"please enter the parity",
            abortions:"please enter the abortions",
            address:"please enter the address",
            lmp:"please enter the lmp"

            
        },
        
        submitHandler: function(form) {
            form.submit();
            alertify.alert("Saved");
        }
    });

  });