<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<link href="../assets/css/.min.css?v=2.1.1" rel="stylesheet" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="dashboard/assets/img/favicon.png">
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

<!--Custom Font-->
<link href="../assets/demo/demo.css" rel="stylesheet" />
<meta charset="UTF-8">


<title>Employee-List</title>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" -->
<!-- 	crossorigin="anonymous"> -->

<style>
* {
	box-sizing: border-box;
}
/* Style the buttons */
.btn {
	border: none;
	outline: none;
	padding: 12px 16px;
	background-color: #f1f1f1;
	cursor: pointer;
}

.row {
	color: white;
}

.btn:hover {
	background-color: #ddd;
}

.btn.active {
	background-color: #666;
	color: white;
}

.primary {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 5px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.danger {
	background-color: #f44336;
	border: none;
	color: white;
	padding: 5px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}
</style>
<script>
	function edit() {
		var agree = confirm("Are u sure u want to edit");
		if (agree)
			return true;
		else
			return false;
	}

	function del() {
		var agree = confirm("Are you sure u want to delete");
		if (agree)
			return true;
		else
			return false;
	}
</script>

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
<body class="dark-edition">

	<div class="wrapper">
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
					<li class="nav-item "><a class="nav-link" href="/profile">
							<i class="material-icons">person</i>
							<p>Profile</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/table"> <i
							class="material-icons">content_paste</i>
							<p>Table List</p>
					</a></li>
					<li class="nav-item active "><a class="nav-link"
						href="/gridview/1"> <i class="material-icons">library_books</i>
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
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
				id="navigation-example">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="javascript:void(0)">Grid View</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation" data-target="#navigation-example">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form"></form>
						<ul class="navbar-nav">

						</ul>
					</div>
				</div>
			</nav>

			<div class="content">
				<!--         <div class="container-fluid"> -->
				<!-- 				<div class="card"> -->


				<!-- 				<div class="container"> -->
				<div class="row">
					<br>
					<div id="btnContainer">

						<button class="btn">
							<i class="fa fa-bars"></i>Grid
						</button>
					</div>

				</div>
				<br>

				<div class="content" style="padding-left: 5%">


					<div class="row">
						<!-- 							<div class="card"> -->
						<!-- 							<div class="card-body"> -->
						<!-- 							<div class="col-md-12"> -->
						<!-- 							<div class="table-responsive"> -->
						<hr>

						<c:forEach var="ProfileDetails" items="${ProfileDetails}">

							<div class="col-md-1" style="padding-left: 0%">
								<img src="/uploads/${ProfileDetails.imgUrl}" height="42px"
									width="42px">
							</div>

							<div class="col-md-3" style="padding-left: 0%%">

								<ul>
									<li>Role:${ProfileDetails.role}</li>
									<li>First Name:${ProfileDetails.firstName}</li>
									<li>Last Name:${ProfileDetails.lastName}</li>
									<li>email:${ProfileDetails.email}</li>
									<li>password:${ProfileDetails.password}</li>
									<li>Number:${ProfileDetails.phoneNumber}</li>
									<li>Salary:${ProfileDetails.salary}</li>
								</ul>
								<br>
								<div style="padding-left: 15%">
									<a class="btn btn-success"
										href="/editProfile1?email=${ProfileDetails.email}" name="edit"
										id="edit" onclick="{return edit ();}">Edit</a> <a
										class="btn btn-danger"
										href="/gridview/delete?id=${ProfileDetails.dashId}"
										name="delete" id="delete" onclick="{ return del();}">Delete</a>
								</div>
							</div>
						</c:forEach>



					</div>
					<br>
					<div style="padding-left: 45%">
						<c:forEach var="i" begin="1" end="${pageNumber}">
							<a href="/gridview/${i}">${i}</a>&nbsp;&nbsp;&nbsp;&nbsp; <!-- Displaying Page No -->
						</c:forEach>
					</div>
				</div>

			</div>
		</div>





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
																	function(
																			event) {
																		// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																		if ($(
																				this)
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

													$(
															'.fixed-plugin .img-holder')
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

													$(
															'.switch-sidebar-image input')
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

													$(
															'.switch-sidebar-mini input')
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

		<script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
		<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
		<script src="../assets/js/core/bootstrap-material-design.min.js"></script>

		<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

		<script
			src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
		<script src="../assets/js/plugins/chartist.min.js"></script>
		<script src="../assets/js/plugins/bootstrap-notify.js"></script>
		<script src="../assets/js/material-dashboard.js?v=2.1.0"></script>

		<!-- <!-- 	------------- -->
		-->
		<!-- <script src="assets/js/core/jquery.min.js" type="text/javascript"></script> -->
		<!-- <script src="assets/js/core/popper.min.js" type="text/javascript"></script> -->
		<!-- <script src="assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script> -->
		<!-- <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script> -->
		<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
		<!-- <script src="assets/js/plugins/chartist.min.js"></script> -->
		<!-- <script src="assets/js/plugins/bootstrap-notify.js"></script> -->
		<!-- <script src="assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script> -->
		<!-- 	<script async defer src="https://buttons.github.io/buttons.js"></script> -->
		<!-- 	<script src="https://unpkg.com/default-passive-events"></script>	 -->
</body>


</html>