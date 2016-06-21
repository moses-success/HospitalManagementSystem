<%@ Page Title="View Admint History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdmitHistroy.aspx.cs" Inherits="HospitalManagementSystem.PatientAccount.AdmitHistroy" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
                    
                    <li>
                        <a href="BloodBank.aspx"><i class="fa fa-tint "></i><span class="Link">BloodBank</span></a>
                    </li>
                    <li class="active-link">
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
                            View Admint History
                        
                        
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
                                <asp:Label ID="lb1" runat="server" CssClass="label label-info" ></asp:Label>

                                <br />

                               
                                <asp:Label ID="Label1" runat="server" CssClass="label label-info"  ></asp:Label>


                                <br />


                                <table class="table table-condensed table-bordered">

                                    <tbody>
                                        <tr>
                                            <td >Patient Name </td>
                                            
                                               <td> <asp:Label ID="lbl_patientName" runat="server"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>Bed Number</td>
                                            <td>
                                                <asp:Label ID="lbl_bednumber" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Allotment Date  </td>
                                            <td>
                                                <asp:Label ID="lbl_allotment" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Discharge Date </td>
                                            <td>
                                                <asp:Label ID="lbl_discharge" runat="server"></asp:Label>
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
