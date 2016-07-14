<%@ Page Title="View Blood Bank" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BloodBank.aspx.cs" Inherits="HospitalManagementSystem.PatientAccount.BloodBank" %>

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
                    <li>
                        <a href="Prescription.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Prescription</span></a>
                    </li>
                    
                    <li class="active-link">
                        <a href="BloodBank.aspx"><i class="fa fa-tint "></i><span class="Link">BloodBank</span></a>
                    </li>
                    <li >
                        <a href="AdmitHistroy.aspx"><i class="fa fa-hdd-o"></i><span class="Link">Admint History</span></a>
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
                            View BloodBank
                        
                        
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">


                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#" data-toggle="tab"><i class="fa fa-navicon"></i>Admint History</a>
                                        </li>
                                    </ul>
                                </div>



                                <div>
                                </div>
                                <br />
                                <asp:Label ID="lb1" runat="server" CssClass="label label-info" Font-Bold="True" Font-Size="15pt" ></asp:Label>

                                <br />
                                <asp:Label ID="Label1" runat="server" CssClass="label label-info"></asp:Label>


                                <table class="table table-responsive">

                                    <tbody>
                                        <tr>
                                            <td>Patient Name </td>

                                            <td>
                                                <asp:Label ID="lbl_patientName" runat="server"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>Age</td>
                                            <td>
                                                <asp:Label ID="lbl_age" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Gender </td>
                                            <td>
                                                <asp:Label ID="lbl_gender" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>BloodGroup </td>
                                            <td>
                                                <asp:Label ID="lbl_group" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>DonatedDate</td>
                                            <td>
                                                <asp:Label ID="lbl_date" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>


                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
