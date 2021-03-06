﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.DoctorLogin" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Doctor Login</title>


	<!-- BOOTSTRAP STYLES-->
	<link href="../assets/css/bootstrap.css" rel="stylesheet" />
	
	<!-- FONTAWESOME STYLES-->
	<link href="../assets/css/font-awesome.css" rel="stylesheet" />
	<!-- CUSTOM STYLES-->
	<link href="../assets/css/custom.css" rel="stylesheet" />

</head>
<body>
	<form id="form1" runat="server">
		<div class="content-wrapper">
			<div class="container">
				<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li class="active">Admin access</li>
		</ol>
				<div class="row">
					<div class="col-md-12">
						<h4 class="page-head-line">Sign in Doctor</h4>

					</div>

				</div>

				<div class="row">
					<div class="col-md-3"></div>

					<div class="col-md-6 col-sm-6 col-xs-12">

						<span id="logo" class="alert alert-info">
							<img src="assets/img/logo.png" />
						</span>
						<br />
						<asp:Label ID="Label1" runat="server"></asp:Label>
						<br />
						<div class="panel panel-default">
							<div class="panel-heading"><strong>Doctor Login</strong></div>
							<div class="panel-body">
								<br />
								<asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="500px" TextMode="Email"></asp:TextBox>
								<br />
								<asp:TextBox runat="server" ID="passtxt" CssClass="form-control" placeholder="Password" Width="500px" TextMode="Password"></asp:TextBox>

								<br />


							</div>
							<div class="panel-footer">
										<asp:Button ID="logIn" runat="server" Text="Sign In" CssClass="btn btn-primary " Width="211px" OnClick="logIn_Click"/>
							
							</div>
						</div>

					</div>
					<div class="col-md-3"></div>
				</div>

			</div>
		</div>
	   

	   
		<!-- CONTENT-WRAPPER SECTION END-->

		<!-- CORE JQUERY SCRIPTS -->
		<script src="assets/js/jquery-1.11.1.js"></script>
		<!-- BOOTSTRAP SCRIPTS  -->
		<script src="assets/js/bootstrap.js"></script>

	</form>
</body>
</html>

