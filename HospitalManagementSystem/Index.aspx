<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HospitalManagementSystem.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Sergey Pozhilov">

	<title>Home</title>

	   <link href="~/assets/img/icon.png" rel="shortcut icon" type="image/x-icon"/>

	
	<!-- BOOTSTRAP STYLES-->
	<link href="assets/css/home.css" rel="stylesheet" />
	<!-- FONTAWESOME STYLES-->
	<link href="assets/css/font-awesome.css" rel="stylesheet" />
	<!-- CUSTOM STYLES-->
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
</head>

	<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-invser navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active-link"><a href="Index.aspx">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li><a class="btn " href="Login.aspx">SIGN IN / SIGN UP</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h1 class="lead">Welcome to Marymount Hospital</h1>
			<p class="lead2">Founded in 1949 by the Sisters of St. Joseph of the Third Order of St. Francis, </p>
				
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<div class="container text-center">
		<br> <br>
		<h2 class="thin">With the outstanding clinical, research and educational abilities of Cleveland Clinic, Marymount maintains a strong commitment to the communities we serve.</h2>
		<p class="text-muted">
			
Founded in 1949 by the Sisters of St. Joseph of the Third Order of St. Francis, Marymount Hospital has been blending compassionate patient care with exceptional medical expertise and advanced technology. Marymount Hospital is a 315-bed acute care hospital, serving communities in southern and southeastern Cuyahoga County.
		</p>
	</div>
	<!-- /Intro-->
		



	<footer id="footer" class="top-space">

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="Index.aspx">Home</a> | 
								<a href="about.html">About</a> |
								<a href="contact.html">Contact</a> |
								<b><a href="Login.aspx">Sign up</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2014, Your name. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a> 
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	

</body>
</html>