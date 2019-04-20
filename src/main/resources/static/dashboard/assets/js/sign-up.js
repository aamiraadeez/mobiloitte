$.validator.addMethod("regex", function(value, element, regexp) {
	var re = new RegExp(regexp);
	return this.optional(element) || re.test(value);
});
$("#sign-up")
		.validate(
				{
					rules : {
						firstName : {
							required : true,
							regex : /^([a-zA-Z]){2,30}$/
						},
						lastName : {
							required : true,
							regex : /^([a-zA-Z]){2,30}$/
						},
						email : {
							required : true,
							regex : /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,
							minlength : 5,
							maxlength : 25
						},
						password : {
							required : true,
							regex : /^(?!.* )(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])/,
							minlength : 8,
							maxlength : 16
						},
						confirmPassword : {

							required : true,
							equalTo : "#password"
						},

						address : {
							required : true,
							regex : /^[A-Za-z0-9'\.\-\s\,]/,
							minlength : 5,
							maxlength : 20
						},

						phoneNumber : {
							required : true,
							regex : /^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/
						},
						salary : {
							required : true,
							regex : /^\d{1,6}(?:\.\d{0,2})?$/
						},
						datePicker : {
							required : true
						},
						imgUrl : {
							required : true
						}
					},
					messages : {
						firstName : {
							required : "This field is required.",
							regex : "Please Enter a valid First Name."
						},

						lastName : {
							required : "This field is required.",
							regex : "Please Enter a valid Last Name. "

						},

						email : {
							required : "This field is required.",
							regex : "Enter correct email id.",
							minlength : "Your email must be atleast 8 characters long.",
							maxlength : "Your email is too long."
						},

						password : {
							required : "This field is required.",
							regex : "Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters",
							minlength : "Your password must be atleast 8 characters long.",
							maxlength : "Your password is too long."
						},
						confirmPassword : {
							required : "This field is required.",
							equalTo : "Confirm Password Must be same as Password."
						},
						address : {
							required : "This field is required.",
							regex : "Enter valid address fromat (block|street|landmark|town|village)",
							minlength : "Minimum 5 characters required.",
							maxlength : "Maximum 20 characters allowed."
						},

						phoneNumber : {
							required : "This fiel is required.",
							regex : "Enter valid number"
						},

						salary : {
							required : "This field is required.",
							regex : "Enter  valid limit [salary<=999999.99] "
						},

						datePicker : {
							required : "This field is required."
						},
						imgUrl : {
							required : "This field is required."
						}

					}

				});