﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalManagementSystem.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>


    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />

</head>
<body class="image">
    <form id="form1" runat="server">
        <div class="content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Please Login  </h4>

                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6"></div>

                    <div class="col-md-6 col-sm-4 col-xs-12">

                        <span id="logo" class="alert alert-info">
                            <img src="img/logo.png" />
                        </span>
                        <br />
                        <br />
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="color: #ffffff"><strong>LOGIN</strong></div>
                            <div class="panel-body">

                                <strong>
                                    <asp:Label ID="Label1" runat="server" Width="500"></asp:Label>
                                </strong>
                                <asp:DropDownList ID="profile" runat="server" CssClass="form-control" Width="500px">
                                    <asp:ListItem Text="Select Profile....." Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Admin" Value="1"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="500px" TextMode="Email"></asp:TextBox>
                                <br />
                                <asp:TextBox runat="server" ID="passtxt" CssClass="form-control" placeholder="Password" Width="500px" TextMode="Password"></asp:TextBox>

                                <br />


                            </div>
                            <div class="panel-footer">

                                <asp:Button ID="logIn" runat="server" Text="Log Me In" CssClass="btn btn-primary" Width="211px" />
                                &nbsp;<span class="btn btn-default"><a href="Account/Admin.aspx">Click</a> Here to register</span>
                            </div>
                        </div>

                    </div>

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