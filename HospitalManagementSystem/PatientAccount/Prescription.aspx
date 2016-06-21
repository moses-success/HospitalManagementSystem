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
                    <li class="active-link">
                        <a href="Prescription.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Prescription</span></a>
                    </li>
                    
                    <li>
                        <a href="BloodBank.aspx"><i class="fa fa-tint "></i><span class="Link">BloodBank</span></a>
                    </li>
                    <li>
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
                            View Prescription
                        

                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">


                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#" data-toggle="tab" style="width: 308px"><i class="fa fa-navicon"></i>Prescription List</a>
                                        </li>
                                       

                                    </ul>
                                </div>
                                 <asp:Label ID="lb1" runat="server" CssClass="label label-info" ></asp:Label>
                                <table class="table table-responsive">

                                    <tbody>
                                        <tr>
                                            <td>Doctor Name </td>

                                            <td>
                                                <asp:Label ID="lbl_doctorname" runat="server"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>Patient Name</td>
                                            <td>
                                                <asp:Label ID="lbl_patientname" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Case History  </td>
                                            <td>
                                                <asp:Label ID="lbl_casehistory" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Medication </td>
                                            <td>
                                                <asp:Label ID="lbl_medication" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Pharm Medication </td>
                                            <td>
                                                <asp:Label ID="lbl_pharm" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Discription </td>
                                            <td>
                                                <asp:Label ID="lbl_disp" runat="server"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Date Pescribe </td>
                                            <td>
                                                <asp:Label ID="lbl_pescrib" runat="server"></asp:Label>
                                            </td>
                                        </tr>

                                    </tbody>
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
