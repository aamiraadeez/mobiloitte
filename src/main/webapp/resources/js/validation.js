 $.validator.addMethod("regex", function(value, element, regexp) {
	var re = new RegExp(regexp);
	return this.optional(element) || re.test(value);
});
$("#signup")
		.validate(
				{
					rules : {
						fname : {
							regex : "^[A-Za-z]+$",
							required : true,
							minlength : 3,
							maxlength : 60
						},

						lname : {
							regex : "^[A-Za-z]+$",
							required : true,
							minlength : 3,
							maxlength : 60
						},

						email : {
							required : true,
							regex : /^\b[A-Za-z]+[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i

						},
						password : {
							regex : "(?!.* )(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])",
							required : true,
							minlength : 8,
							maxlength : 16
						},
						cpassword : {
							required : true,
							equalTo : "#password"
						},
						address : {
							required : true	
						}

					},

					messages : {
						fname : {
							regex : "Please Enter a valid First Name. ",
							required : "Please provide your name.",
							minlength : "First Name should be atleast 3 characters long.",
							maxlength : "First Name should not be too long."
						},

						lname : {
							regex : "Please Enter a valid Last Name. ",
							required : "Please provide your name.",
							minlength : "Last Name should be atleast 3 characters long.",
							maxlength : "Last Name should not be too long."
						},

						email : {
							required : "This field is required.",
							regex : "Enter correct email id.",
						},

						password : {
							regex : "Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters",
							required : "Please provide a password.",
							minlength : "Your password must be atleast 8 characters long.",
							maxlength : "Your password is too long."
						},
						cpassword : {
							required : "Please provide a password.",
							equalTo : "Confirm Password must be same as Password."
						},
						address : {
							required : "Please provide a Address." 	
						}

					}
				});