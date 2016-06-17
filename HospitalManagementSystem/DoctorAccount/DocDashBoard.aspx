<%@ Page Title="DoctorDashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DocDashBoard.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.DocDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <div id="wrapper">

        <!-- /. NAV TOP  -->
        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">


                <a id="logo" href="Default.aspx">
                    <img src="../assets/img/logo.png" />

                </a>

                <ul class="nav" id="main-menu">

                    <li class="active-link">
                        <hr />
                    <a href="DocDashBorad.aspx">
                            <i class="fa fa-dashboard "></i><span class="Link">Dashboard</span></a>
                    </li>

                    <li>
                        <a href="Patient.aspx"><i class="fa fa-user "></i><span class="Link">Patient</span></a>
                    </li>
                    <li>
                        <a href="Appointment.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li>
                        <a href="Prescription.aspx"><i class="fa fa-medkit"></i><span class="Link">Prescription</span></a>
                    </li>
                    <li>
                        <a href="Bedallotment.aspx"><i class="fa fa-hdd-o"></i><span class="Link">Bed Allotment</span></a>
                    </li>
                    <li>
                        <a href="Bloodbank.aspx"><i class="fa fa-tint"></i><span class="Link">View Blood Bank</span></a>
                    </li>

                    <li>
                        <a href="managereport.aspx"><i class="fa fa-file-text-o"></i><span class="Link">Manage Report</span></a>
                    </li>

                    <li>
                        <a href="Profile.aspx"><i class="fa fa-wrench"></i><span class="Link">Profile</span></a>
                    </li>

                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">DOCTOR || Dashboard    
                        
                        </h4>

                    </div>
                </div>
                <!-- /. ROW  -->



                <div class="row text-center pad-top">


                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Patient.aspx">
                                <i class="fa fa-user fa-3x"></i>
                                <h4>Patient</h4>
                            </a>
                        </div>

                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="BedAllotment.aspx">
                                <i class="fa fa-exchange fa-3x"></i>
                                <h4>Appointment</h4>
                            </a>
                        </div>


                    </div>


                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="ManageReport.aspx">
                                <i class="fa fa-file-text-o fa-3x"></i>
                                <h4>Manage Report</h4>
                            </a>
                        </div>


                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                           <a href="BloodBank.aspx">
                                <i class="fa fa-tint fa-3x"></i>
                                <h4>Blood Bank</h4>
                            </a>
                        </div>


                    </div>


                   

                </div>
                   <div class="row text-center pad-top">


                       <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6"></div>

                 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                           <a href="BedAllotment.aspx">
                                <i class="fa fa-hdd-o fa-3x"></i>
                                <h4>Bed Allotment</h4>
                            </a>
                        </div>


                    </div>


                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Prescription.aspx">
                                <i class="fa fa-stethoscope fa-3x"></i>
                                <h4>Pescription</h4>
                            </a>
                        </div>


                    </div>
                           <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6"></div>
                       </div>

                <!---- /*==============================================
                        End Row One 
    =============================================*/---->
                <br />
                <br />
                <hr class="page-head-line"/>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="fa fa-calendar"></i>&nbsp;&nbsp; Calender Schedule
                                </div>
                                <div class="panel-body">

                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#efefef" BorderStyle="none" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="#fff" Height="250px" NextPrevFormat="ShortMonth" 
                                        Width="530px" CaptionAlign="Top" Class="calender" style="margin-left: 0px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="10pt" ForeColor="#1491d7" Height="8pt" />
                                        <DayStyle BackColor="White" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#1ac6ff" />
                                        <OtherMonthDayStyle ForeColor="#1ac6ff" />
                                        <SelectedDayStyle BackColor="#1ac6ff" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="12pt" ForeColor="#1ac6ff" Height="12pt" />
                                        <TodayDayStyle BackColor="#1491d7" ForeColor="blue" />
                                    </asp:Calendar>

                                </div>

                            </div>
                        </div>
                        <div class="col-lg-6">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="table"></i>&nbsp;&nbsp;  Notice Board
                                </div>
                                <div class="panel-body">
                                </div>

                            </div>
                        </div>
                    </div>



                </div>

            </div>
            <!------ /* ==============================================
                    .End  PAGE INNER
    =============================================*/---->


        </div>
        <!------   /*==============================================
                    .End  PAGE Wrapper
    =============================================*/---->
    </div>


</asp:Content>
