<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

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




<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">


<link rel='stylesheet' href='js-form-validation.css' type='text/css' />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

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
<style type="text/css">
.error {
	color: red;
}
</style>


<!-- date picker script start -->



<!-- date picker script  end-->




</head>
<script>
	function function3() {
		var agree = confirm("Are you sure you want to Logout?");
		if (agree)
			return true;
		else
			return false;
	}
</script>

<body onload="getLocation()" class="dark-edition">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="black"
			data-image="dashboard/assets/img/sidebar-2.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Mobiloitte </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item   "><a class="nav-link" href="/Dashboard">
							<i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item  active "><a class="nav-link"
						href="/profile"> <i class="material-icons">person</i>
							<p>Profile</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/table"> <i
							class="material-icons">content_paste</i>
							<p>Table List</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/gridview/1">
							<i class="material-icons">library_books</i>
							<p>Grid View</p>
					</a></li>

					<li class="nav-item "><a class="nav-link" href="/emplist">
							<i class="material-icons">library_books</i>
							<p>List view</p>
					</a></li>
					<li class="nav-item  "><a class="nav-link" href="/tabView">
							<i class="material-icons">library_books</i>
							<p>Tab View</p>
					</a></li>
					<li class="nav-item  "><a class="nav-link" href="/mapview">
							<i class="material-icons">location_ons</i>
							<p>Maps</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/logout"
						onclick="{return function3();}"> <i class="material-icons">bubble_chart</i>
							<p>Log Out</p>
					</a></li>

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
						<a class="navbar-brand" href="javascript:void(0)">Profile</a>
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
									<h4 class="card-title">Profile</h4>
									<p class="card-category">Complete your profile</p>
								</div>



								<div class="card-body">
									<form class="common-form" id="sign-up" action="editProfile"
										enctype="multipart/form-data">


										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">DashId</label> <input
														type="text" class="form-control" id="dashId" name="dashId"
														value="${user.dashId}">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Role</label> <input
														type="text" class="form-control" name="role" id="role"
														value="${user.role}">
												</div>
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">First Name</label> <input
														type="text" class="form-control" name="firstName"
														id="firstName" value="${user.firstName}">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Last Name</label> <input
														type="text" class="form-control" name="lastName"
														id="lastName" value="${user.lastName}" required="true">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Email address</label> <input
														type="email" class="form-control" name="email" id="email"
														value="${user.email}" required="true">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Password</label> <input
														type="password" class="form-control" name="password"
														id="password" value="${user.password}" required="true">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Confirm Passsword</label>
													<input type="password" class="form-control"
														name="confirmPassword" id="confirmPassword"
														value="${user.confirmPassword}" required="true">
												</div>
											</div>
									s	</div>
										<div class="row">
											<div class="container-fluid">
												<div class="col-md-4">
													<div class="form-group">
														<label class="bmd-label-floating">Gender</label> <input
															type="text" class="form-control" id="gender"
															name="gender" checked value="${user.gender}">
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Adress</label> <input
														type="text" class="form-control" name="address"
														id="address" value="${user.address}" required="true">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="bmd-label-floating">Phone Number</label> <input
														type="text" class="form-control" name="phoneNumber"
														id="phoneNumber" value="${user.phoneNumber}"
														required="true">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Marital Status</label><input
														type="text" class="from-control" id="maritalStatus"
														name="maritalStatus" value="${user.maritalStatus}">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Salary</label> <input type="text"
														class="form-control" name="salary" id="salary"
														value="${user.salary}" required="true">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>Date Of Birth</label> <input type="text"
														name="datePicker" id="datepicker" class="form-control"
														value="${user.datePicker}" required="true">
												</div>
											</div>
										</div>

										<%-- <div class="row">
											<div class="col-md-4">
												<label>Image Upload </label> <input name="multipartimage"
													id="imgUrl" type="file" src="/uploads/${user.imgUrl}"
													required="true">
											</div>
										</div> --%>



										<div class="row">
											<div class="col-md-12">
												<div class="form-group"></div>
												<button type="submit" class="btn btn-primary pull-right">Edit
													Profile</button>


												<div class="clearfix"></div>

											</div>
										</div>
									</form>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group"></div>
											<a type="submit" href="login"
												class="btn btn-primary pull-right">Back</a>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="col-md-4">
							<div class="card card-profile">
								<div class="card-avatar">
									<a href="#"> <img class="img" src="/uploads/${user.imgUrl}" />
									</a>
								</div>
								<div class="card-body">
									<h4 class="card-title">Profile Picture</h4>
								</div>
							</div>


							<div class="card card-profile">

								<div class="card-body">


									<div style="max-height: 500px;" id="map"></div>


								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

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
				<li class="button-container"><a href="#" target="_blank"
					class="btn btn-primary btn-block">Free Download</a></li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a href="#" target="_blank"
					class="btn btn-default btn-block"> View Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button" href="#" data-icon="octicon-star"
					data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub"></a></li>


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
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script src="../assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/material-dashboard.js?v=2.1.0"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<!--   <script src="dashboard/assets/demo/demo.js"></script> -->




	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyCm8rnRUZU0ecO8hpCF3KVANv9LmAXv0hc&libraries=places"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		var map;
		function getLocation() {
			var geocoder = new google.maps.Geocoder();
			var address = document.getElementById("address").value;
			console.log(address)
			geocoder.geocode({
				address : address
			}, function(results, status) {
				console.log(results[0].geometry.location.lat())
				console.log(results[0].geometry.location.lng())
				if (status == google.maps.GeocoderStatus.OK) {
					var latitude = results[0].geometry.location.lat();
					var longitude = results[0].geometry.location.lng();
					initializeMap(latitude, longitude);
				}
			});
		}
		function initializeMap(lat, lng) {
			// console.log(lat,lng)
			var mapProp = {
				center : new google.maps.LatLng(lat, lng),
				zoom : 15,
			};
			map = new google.maps.Map(document.getElementById("map"), mapProp);
			addMarker(lat, lng)
		}

		function addMarker(lat1, lng1) {
			var myLatLng = {
				lat : lat1,
				lng : lng1
			};
			var marker = new google.maps.Marker({
				'position' : myLatLng,
				'map' : map,
			});
			marker.setMap(map);
		}
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


	<!-- 	date picker script	 -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>
