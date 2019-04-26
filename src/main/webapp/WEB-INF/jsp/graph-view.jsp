<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,width=device-width,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">
<meta name="description" content="">
<meta name="author" content="">
<title>Mobiloitte</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/fonts/stylesheet.css" rel="stylesheet">
<link href="/resources/css/slick.css" rel="stylesheet">
<link href="/resources/css/slick-theme.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/mobile.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script>
	function function3() {
		var agree = confirm("Are you sure u want to Logout?");
		if (agree)
			return true;
		else
			return false;
	}
</script>
</head>

<body class="logged">
 	<header class="landing_header header_fixed_menu">
		<nav class="navbar navbar-expand-md  align-items-center">
			<a class="navbar-brand logo" href="/"> <img class="logo_large"
				src="/resources/images/logo.png" alt="Logo" /> <!--  <img class="logo_small" src="images/logo_small.png" alt="Logo"/> -->
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav navbar-nav ml-auto main-menu">
				<li class="nav-item"><a class="nav-link" href="graphs">Graph View</a></li>
					<li class="nav-item"><a class="nav-link" href="chart-view">Chart
							View</a></li>
					<li class="nav-item"><a class="nav-link" href="table-view">Table
							View</a></li>
					<li class="nav-item"><a class="nav-link" href="galleryview">Gallery
							View</a></li>
					<li class="nav-item"><a class="nav-link"
						href="list-grid-view/1">List View</a></li>
					<li class="nav-item"><a class="nav-link" href="grid-view/1">Grid
							View</a></li>
					<li class="nav-item"><a class="nav-link" href="delete">Delete
							Profile</a></li>
					<li class="nav-item"><a class="nav-link" href="myProfile">Edit
							Profile</a></li>
					<li class="nav-item"><a class="nav-link" href="logout"
						onclick="{return function3();}">Logout</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header End -->
	<main class="main-container bg_gray">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="head_box2 head_box2_border">
						<h2>Graph View</h2>
						<h4 style="color: green">Hello ${email}</h4>
						<h5 style="color: green">${update}</h5>
					</div>
					<div id="firsName"
						style="min-width: 310px; height: 400px; margin: 0 auto"></div>

				</div>
			</div>
		</div>
	</section>
	</main>
	<!-- main End -->
	<footer class="footer-inner">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8">
					<div class="footer-content">
						<div class="footer-text">
							<p class="copyright">Mobiloitte portal © 2019 - All Rights
								Reserved.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<ul class="socialList">
						<li><a href="https://web.telegram.org"><i
								class="fas fa-paper-plane"></i></a></li>
						<li><a href="https://www.facebook.com"><i
								class="fab fa-facebook-f"></i></a></li>
						<li><a href="https://twitter.com"><i
								class="fab fa-twitter"></i></a></li>
						<li><a href="https://www.reddit.com" class="reddit"><i
								class="fab fa-reddit-alien"></i></a></li>
						<li><a href="https://github.com" class="Octocat"><i
								class="fab fa-github-alt"></i></a></li>
						<li><a href="https://plus.google.com/discover"><i
								class="fab fa-google-plus-g"></i></a></li>
						<li><a href="https://www.instagram.com"><i
								class="fab fa-instagram"></i></a></li>
						<li><a href="https://www.youtube.com"><i
								class="fab fa-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	
</body> 
<script type="text/javascript">
		var fname = [];
		$(document).ready(function() {
			$.ajax({

				url : "graph-view",
				type : "GET",
				contentType : 'application/json;charset=utf-8',
				dataType : 'json',
				async : false,
				success : function(response) {
					// 					//alert("Count");
					// 					$("#count").html(+response);
					for (i = 0; i < response.length; i++) {
						firstName[i] = response[i];
					}
					a(firstName, null);
				},
				error : function(e) {
					console.log('Error:' + JSON.stringify(e));
				}
			});
		});
	</script>
	<script type="text/javascript">
		var id = [];
		$(document).ready(function() {
			$.ajax({
				url : "dataid",
				type : "GET",
				contentType : 'application/json;charset=utf-8',
				dataType : 'json',
				async : false,
				success : function(response) {
					for (i = 0; i < response.length; i++) {
						id[i] = parseInt(response[i]);
					}
					a(null, id);
				},
				error : function(e) {
					console.log('Error:' + JSON.stringify(e));
				}
			});

		});
	</script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/marquee.js"></script>
	<script src="/resources/js/slick.min.js"></script>
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/graph.js"></script>

</html>