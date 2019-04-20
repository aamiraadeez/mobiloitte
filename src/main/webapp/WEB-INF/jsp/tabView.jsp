<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<title>Tab View</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- Material Kit CSS -->
<link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />


<style type="text/css">
a: hover, a:focus {
	outline: none;
	text-decoration: none;
}

.tab .nav-tabs {
	border-bottom: none;
	position: relative;
}

.tab .nav-tabs li {
	margin-right: 15px;
}

.tab .nav-tabs li a {
	padding: 20px 15px;
	font-size: 17px;
	font-weight: 600;
	color: #25283d;
	border-radius: 0;
	text-transform: uppercase;
	margin-right: 0;
	border: none;
	position: relative;
	transition: all 0.5s ease 0s;
}

.tab .nav-tabs li a:hover {
	background: #fff;
}

.tab .nav-tabs li a:before {
	content: "";
	width: 100%;
	height: 1px;
	background: rgba(0, 0, 0, 0.2);
	position: absolute;
	bottom: 5px;
	left: 0;
	transform: scale(0);
	transition: all 700ms ease 0s;
}

.tab .nav-tabs li a:after {
	content: "";
	width: 7px;
	height: 7px;
	border-radius: 50%;
	background: #4cc985;
	margin: 0 auto;
	position: absolute;
	bottom: 2px;
	left: 0;
	right: 0;
	transform: scale(0);
	transition: all 700ms ease 0s;
}

.tab .nav-tabs li.active a, .tab .nav-tabs li.active a:focus, .tab .nav-tabs li.active a:hover
	{
	border: none;
	color: #4cc985;
}

.tab .nav-tabs li a:hover:before, .tab .nav-tabs li.active a:before,
	.tab .nav-tabs li a:hover:after, .tab .nav-tabs li.active a:after {
	transform: scale(1);
}

.tab .tab-content {
	padding: 20px;
	background: #fff;
	font-size: 14px;
	color: #a09d9d;
	line-height: 26px;
}

.tab .tab-content h3 {
	font-size: 24px;
	margin-top: 0;
}

@media only screen and (max-width: 479px) {
	.tab .nav-tabs li {
		width: 100%;
	}
	.tab .nav-tabs li a {
		text-align: center;
	}
}
</style>



</head>



<body class="dark-edition">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="black"
			data-image="./assets/img/sidebar-2.jpg">

			<div class="logo">
				<a href="#" class="simple-text logo-normal"> Mobiloitte</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item  "><a class="nav-link" href="/Dashboard">
							<i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/profile">
							<i class="material-icons">person</i>
							<p>Profile</p>
					</a></li>
					<li class="nav-item  "><a class="nav-link" href="/table">
							<i class="material-icons">content_paste</i>
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
					<li class="nav-item active  "><a class="nav-link"
						href="/tabView"> <i class="material-icons">library_books</i>
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
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="javascript:void(0)">Tab View</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)"> <i class="material-icons">notifications</i>
									<p class="d-lg-none d-md-block">Notifications</p>
							</a></li>
							<!-- your navbar here -->
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">

					<!-- your content here -->

					<div class="container">
						<div class="row justify-content-md-center">
							<div class="col-md-offset-3 col-md-6">

								<div class="tab" role="tabpanel">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a
											href="#Section1" aria-controls="home" role="tab"
											data-toggle="tab">Name</a></li>
										<li role="presentation"><a href="#Section2"
											aria-controls="profile" role="tab" data-toggle="tab">Role</a></li>
										<li role="presentation"><a href="#Section3"
											aria-controls="messages" role="tab" data-toggle="tab">Salary</a></li>
									</ul>
									<br>
									<!-- Tab panes -->

									<div class="tab-content tabs">
										<div role="tabpanel" class="tab-pane fade in active"
											id="Section1">
											<h3>${user.firstName}&nbsp;${user.lastName}</h3>
											<h3></h3>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="Section2">
											<h3>${user.role}</h3>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="Section3">
											<h3>${user.salary}</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- your content here -->
				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<nav class="float-left">
						<ul>
							<li><a href="#"> Mobiloitte </a></li>
						</ul>
					</nav>
					<div class="copyright float-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						, made with <i class="material-icons">favorite</i> by <a
							href="https://www.creative-tim.com" target="_blank">Creative
							Tim</a> for a better web.
					</div>
					<!-- your footer here -->
				</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="./assets/js/core/jquery.min.js"></script>
	<script src="./assets/js/core/popper.min.js"></script>
	<script src="./assets/js/core/bootstrap-material-design.min.js"></script>
	<script src="https://unpkg.com/default-passive-events"></script>
	<script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script src="./assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="./assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="./assets/js/material-dashboard.js?v=2.1.0"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="./assets/demo/demo.js"></script>
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
		src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
</body>

</html>