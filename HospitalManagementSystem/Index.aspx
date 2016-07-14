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
	<style type="text/css">
		.auto-style1 {
			font-weight: 300;
			height: 146px;
		}
	</style>
</head>

	<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-invser navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand"  href="Index.aspx">
					<img src="assets/img/Logo1.jpg" /></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active-link"><a href="Index.aspx">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li><a href="Account/Login.aspx">SIGN IN / SIGN UP</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h3 class="lead">Welcome to  Adweso Clinic</h3>
			
				
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<div class="container text-center">
		<br> <br>
		<h4>With the outstanding clinical, research and educational abilities of Adweso Clinic, It maintains a strong commitment to the communities we serve.</h4>
		<blockquote>
			
Adweso Clinic is a prestigious hospital situated in the heart of Koforidua
 with a very large patient capacity. This number is increasing at a rapid 
pace with each passing day. The Management of the hospital is concerned with 
the increasing effort in keeping the records of the patients and recording
 their activities. The hospital also keeps the information of its employees.
 With an eye on the future, the Senior Management of Adweso Clinic has decided 
to shift to a computerized hospital Management and Information System, which may
 keep the records of its patients, employees, and medical tests
		</blockquote>
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