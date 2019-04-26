
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8" />

<link rel="apple-touch-icon" sizes="76x76"
	href="dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">

<link rel='stylesheet' href='js-form-validation.css' type='text/css' />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Sign up</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="../assets/css/material-dashboard.css?v=2.1.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/demo/demo.css" rel="stylesheet" />

<!-- profress bar css  start -->
<!-- <link href="../assets/css/progressbar.css" rel="stylesheet" /> -->
<!-- profress bar css end -->
<style>
#firstName-error {
	color: red;
}

#lastName-error {
	color: red;
}

#emailName-error {
	color: red;
}1111

#password-error {
	color: red;
}

#confirmPassword-error {
	color: red;
}

#address-error {
	color: red;
}

#email-error {
	color: red;
}

#datepicker-error {
	color: red;
}

#phoneNumber-error {
	color: red;
}

#salary-error {
	color: red;
}
</style>



<!-- date picker links and script  -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat : 'mm/dd/yy',
			changeMonth : true,
			changeYear : true,
			yearRange : '-100y:c+nn',
			maxDate : '-1d'
		});
	});
</script>
<!-- date picker links and script  -->


</head>

<body class="dark-edition">



	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="black"
			data-image="../assets/img/sidebar-2.jpg">

			<div class="logo">
				<a href="#" class="simple-text logo-normal"> Mobiloitte </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
				id="navigation-example">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="javascript:void(0)">User Profile</a>
					</div>
					<div class="collapse navbar-collapse justify-content-end"></div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title">New Profile</h4>
									<p class="card-category">Complete your profile</p>
								</div>

								<div class="card-body">
									<form action="registerValidation" method="post" id="sign-up"
										enctype="multipart/form-data">

										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Role</label> <select
														class="form-control" name="role" id="role">
														<option>Admin</option>
														<option>User</option>
													</select>
												</div>
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">First Name</label> <input
														type="text" class="form-control" name="firstName"
														id="firstName" maxlength="20">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Last Name</label> <input
														type="text" class="form-control" name="lastName"
														id="lastName" maxlength="20" required="true">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Email address</label> <input
														type="email" class="form-control" name="email" id="email"
														maxlength="64" required="true"> <span id=result
														style="color: red"> </span>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Password</label> <input
														type="password" class="form-control" name="password"
														id="password" required="true" maxlength="16">
												</div>
											</div>
											<!-- progress bar start  -->
											<div class="pwstrength_viewport_progress"></div>
											<!-- progress bar end -->

											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Confirm Passsword</label>
													<input type="password" class="form-control"
														name="confirmPassword" id="confirmPassword" maxlength="16"
														required="true">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="container-fluid">
												<label class="bmd-label-floating">Gender</label>
											</div>
										</div>

										<div class="row">
											<div class="container">
												<div class="col-md-4">
													<div class="form-group">
														<input type="radio" class="form-check-input" id="radio1"
															name="gender" value="Male" checked>Male
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<input type="radio" class="form-check-input" id="radio1"
															name="gender" value="Female">Female
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<input type="radio" class="form-check-input" id="radio1"
															name="gender" value="other">other
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Adress</label> <input
														type="text" class="form-control" name="address"
														id="address" required="true" maxlength="50">
												</div>
											</div>

											<div class="col-md-4">
												<div class="form-group"></div>
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Phone Number</label> <input
														type="text" class="form-control" name="phoneNumber"
														id="phoneNumber" required="true">
												</div>
											</div>
										</div>



										<div class="row">
											<div class="col-md-12">
												<div class="form-group"></div>
											</div>
										</div>


										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Marital Status</label> <select
														class="form-control" name="maritalStatus"
														id="maritalStatus" required="true">
														<option disabled="disabled"></option>
														<option>Single</option>
														<option>Married</option>
														<option>Complex</option>
													</select>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Salary</label> <input
														type="text" class="form-control" name="salary" id="salary"
														required="true" maxlength="9">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Date Of Birth</label> <input type="text"
														name="datePicker" id="datepicker" class="form-control"
														value="10/24/2009" placeholder="dd/mm/yyyy"
														required="true">
												</div>
											</div>
										</div>




										<div class="row">
											<div class="col-md-4">
												<label>Image Upload </label> <input name="multipartimage"
													id="img-upload-input" type="file" accept="image/*"
													required="true">
											</div>
										</div>



										<div class="row">
											<div class="col-md-12">
												<div class="form-group"></div>
												<button type="submit" id="ajaxStart"
													class="btn btn-primary pull-right">Add Profile</button>

												<%-- 										<h4>${error}</h4> --%>


												<label style="color: red;">${error}</label>


												<div class="clearfix"></div>

											</div>
										</div>

									</form>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group"></div>
											<a type="submit" href="login"
												class="btn btn-primary pull-right">login</a>
										</div>
									</div>

								</div>




							</div>
						</div>
					</div>


				</div>
			</div>
		</div>














		<!-- ------------------ -->

		<!-- ---------------------------- -->
		<script>
			const x = new Date().getFullYear();
			let date = document.getElementById('date');
			date.innerHTML = '&copy; ' + x + date.innerHTML;
		</script>
	</div>

	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple active"
								data-color="purple"></span> <span
								class="badge filter badge-azure" data-color="azure"></span> <span
								class="badge filter badge-green" data-color="green"></span> <span
								class="badge filter badge-warning" data-color="orange"></span> <span
								class="badge filter badge-danger" data-color="danger"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="../assets/img/sidebar-1.jpg" alt="">
				</a></li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="../assets/img/sidebar-2.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="../assets/img/sidebar-3.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="../assets/img/sidebar-4.jpg" alt="">
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard-dark"
					target="_blank" class="btn btn-primary btn-block">Free Download</a>
				</li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a
					href="https://demos.creative-tim.com/material-dashboard-dark/docs/2.0/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block"> View
						Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/material-dashboard/tree/dark-edition"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br> <br>
				</li>
			</ul>
		</div>
	</div>


	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap-material-design.min.js"></script>
	<script src="https://unpkg.com/default-passive-events"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!--  Google Maps Plugin    -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIzTZU8ariH_C22VUiJKFq1b9t7IA3_PgE"></script>
	<!-- Chartist JS -->
	<script src="../assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/material-dashboard.js?v=2.1.0"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<!--   <script src="dashboard/assets/demo/demo.js"></script> -->

	<script>
		function activateplace() {
			var input = document.getElementById('address');
			var autocomplete = new google.maps.places.Autocomplete(input);
		}
	</script>






	<!-- ajax brefore validations  start -->
	$(document).ready(function() { $('#form').submit(function(e) {

	e.preventDefault(); var $form = $(this); // check if the input is valid
	if(! $form.valid()) return false; $.ajax( { type:'POST', url:'add.php',
	data:$('#form').serialize(), success:function(response) {
	$("#answers").html(response); } }); }) });

	<!-- ajax brefore validations  end-->

	<script>
		$(document).ready(function() {
			$('#email').change(function(event) {
				$("#ajaxStart").attr("disabled", false);
				var email = $('#email').val();
				// alert(email);
				$.ajax({
					url : "registerValidation?email=" + email,
					type : "GET",
					contentType : 'application/json;charset=utf-8',
					dataType : 'json',
					async : false,
					success : function(response) {
						// alert(response);
						if (response == 201) {
							$('#result').html("email already exist");
							$("#ajaxStart").attr("disabled", true);
						} else {
							$('#result').html("");
						}
					},
					error : function(e) {
						// 	alert(e)
						console.log('error:' + JSON.stringify(e));
					}

				});

			});
		});
	</script>


	<script>
		$(document)
				.ready(
						function() {
							$()
									.ready(
											function() {
												$sidebar = $('.sidebar');

												$sidebar_img_container = $sidebar
														.find('.sidebar-background');

												$full_page = $('.full-page');

												$sidebar_responsive = $('body > .navbar-collapse');

												window_width = $(window)
														.width();

												$('.fixed-plugin a')
														.click(
																function(event) {
																	// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																	if ($(this)
																			.hasClass(
																					'switch-trigger')) {
																		if (event.stopPropagation) {
																			event
																					.stopPropagation();
																		} else if (window.event) {
																			window.event.cancelBubble = true;
																		}
																	}
																});

												$(
														'.fixed-plugin .active-color span')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-color',
																						new_color);
																	}

																	if ($full_page.length != 0) {
																		$full_page
																				.attr(
																						'filter-color',
																						new_color);
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.attr(
																						'data-color',
																						new_color);
																	}
																});

												$(
														'.fixed-plugin .background-color .badge')
														.click(
																function() {
																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'background-color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-background-color',
																						new_color);
																	}
																});

												$('.fixed-plugin .img-holder')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.parent(
																					'li')
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.parent(
																					'li')
																			.addClass(
																					'active');

																	var new_image = $(
																			this)
																			.find(
																					"img")
																			.attr(
																					'src');

																	if ($sidebar_img_container.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		$sidebar_img_container
																				.fadeOut(
																						'fast',
																						function() {
																							$sidebar_img_container
																									.css(
																											'background-image',
																											'url("'
																													+ new_image
																													+ '")');
																							$sidebar_img_container
																									.fadeIn('fast');
																						});
																	}

																	if ($full_page_background.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$full_page_background
																				.fadeOut(
																						'fast',
																						function() {
																							$full_page_background
																									.css(
																											'background-image',
																											'url("'
																													+ new_image_full_page
																													+ '")');
																							$full_page_background
																									.fadeIn('fast');
																						});
																	}

																	if ($('.switch-sidebar-image input:checked').length == 0) {
																		var new_image = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						"img")
																				.attr(
																						'src');
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$sidebar_img_container
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																		$full_page_background
																				.css(
																						'background-image',
																						'url("'
																								+ new_image_full_page
																								+ '")');
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																	}
																});

												$('.switch-sidebar-image input')
														.change(
																function() {
																	$full_page_background = $('.full-page-background');

																	$input = $(this);

																	if ($input
																			.is(':checked')) {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar_img_container
																					.fadeIn('fast');
																			$sidebar
																					.attr(
																							'data-image',
																							'#');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page_background
																					.fadeIn('fast');
																			$full_page
																					.attr(
																							'data-image',
																							'#');
																		}

																		background_image = true;
																	} else {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar
																					.removeAttr('data-image');
																			$sidebar_img_container
																					.fadeOut('fast');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page
																					.removeAttr(
																							'data-image',
																							'#');
																			$full_page_background
																					.fadeOut('fast');
																		}

																		background_image = false;
																	}
																});

												$('.switch-sidebar-mini input')
														.change(
																function() {
																	$body = $('body');

																	$input = $(this);

																	if (md.misc.sidebar_mini_active == true) {
																		$(
																				'body')
																				.removeClass(
																						'sidebar-mini');
																		md.misc.sidebar_mini_active = false;

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar();

																	} else {

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar(
																						'destroy');

																		setTimeout(
																				function() {
																					$(
																							'body')
																							.addClass(
																									'sidebar-mini');

																					md.misc.sidebar_mini_active = true;
																				},
																				300);
																	}

																	// we simulate the window Resize so the charts will get updated in realtime.
																	var simulateWindowResize = setInterval(
																			function() {
																				window
																						.dispatchEvent(new Event(
																								'resize'));
																			},
																			180);

																	// we stop the simulation of Window Resize after the animations are completed
																	setTimeout(
																			function() {
																				clearInterval(simulateWindowResize);
																			},
																			1000);

																});
											});
						});
	</script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../assets/js/sign-up.js"></script>
	<!-- 	js fro pregress bar start -->
	<!-- 	<script type="text/javascript" src="../assets/js/progressbar.js"></script> -->
	<!-- 	js fro pregress bar end -->


	<!-- 	date picker script	 -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</body>

</html>