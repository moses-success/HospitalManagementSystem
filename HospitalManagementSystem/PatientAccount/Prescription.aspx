<%@ Page Title=" View Prescription" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="HospitalManagementSystem.PatientAccount.Prescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div id="wrapper">

        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">

                <a id="logo" href="Default.aspx">
                    <img src="../assets/img/logo.png" />

                </a>

               <ul class="nav" id="main-menu">

                    <li>
                        <hr />

                        <a href="DashBoard.aspx"><i class="fa fa-dashboard"></i><span class="Link">Dashboard</span></a>
                    </li>


                    <li>
                        <a href="ViewAppointment.aspx"><i class="fa fa-pencil-square-o "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li  class="active-link">
                        <a href="Prescription.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Prescription</span></a>
                    </li>
                    <li>
                        <a href="ViewDoctor.aspx"><i class="fa fa-user-md "></i><span class="Link">View Doctor</span></a>
                    </li>
                    <li>
                        <a href="ViewBloodBank.aspx"><i class="fa fa-tint "></i><span class="Link">BloodBank</span></a>
                    </li>
                    <li>
                        <a href="AdmitHistroy.aspx"><i class="fa fa-hdd-o"></i><span class="Link">Admint History</span></a>
                    </li>
                    <li>
                        <a href="OperationHistory.aspx"><i class="fa fa-hospital-o"></i><span class="Link">Histroy</span></a>
                    </li>
                  
                    <li>
                        <a href="Profile.aspx"><i class="fa fa-lock "></i><span class="Link">Profile&nbsp;</span></a>
                    </li>
                </ul>
            </div>

        </nav>


        <!--End of nav-->

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-head-line">
                            View Prescription
                        

                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">


                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#" data-toggle="tab" style="width: 308px"><i class="fa fa-navicon"></i>Prescription List</a>
                                        </li>
                                        <li></li>

                                    </ul>
                                </div>

                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th style="width: 700px">
                                                <div class="col-md-6">
                                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" Width="300px" placeholder="search"></asp:TextBox>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" Text="search" />
                                                </div>
                                            </th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                </table>
                                <!-----
                               Gridview for Prescription
                               --->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
