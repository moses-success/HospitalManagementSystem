<%@ Page Title="PatientDashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatDashboard.aspx.cs" Inherits="HospitalManagementSystem.PatientAccount.PatDashboard" %>

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

                        <a href="DashBoard.aspx"><i class="fa fa-dashboard"></i><span class="Link">Dashboard</span></a>
                    </li>


                    <li>
                        <a href="ViewAppointment.aspx"><i class="fa fa-pencil-square-o "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li>
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
                        <a href="Profile.aspx"><i class="fa fa-lock "></i><span class="Link">Profile&nbsp;</span></a>
                    </li>
                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-head-line">
                            Admin || Dashboard    
                        
                        </div>

                    </div>
                </div>
                <!-- /. ROW  -->

                <!-- /. ROW  -->

                <div class="row text-center pad-top">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="ViewDoctor.aspx">
                                <i class="fa fa-user-md fa-3x"></i>
                                <h4>Doctor</h4>
                            </a>
                        </div>

                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="ViewAppointment.aspx">
                                <i class="fa fa-exchange fa-3x"></i>
                                <h4>Appointment</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Prescription.aspx">
                                <i class="fa fa-stethoscope  fa-3x"></i>
                                <h4>Prescription</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="AdmitHistroy.aspx">
                                <i class="fa fa-hdd-o  fa-3x"></i>
                                <h4>Admit Histroy</h4>
                            </a>
                        </div>


                    </div>
                 

                </div>
                 <div class="row text-center pad-top">
                   <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6"></div>

                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Profile.aspx">
                                <i class="fa fa-user fa-3x"></i>
                                <h4>Profile</h4>
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
                <div class="container">
                    <div class="row">
                         <div class=" col-md-3">

                            
                        </div>
                        <div class="col-md-6 col-xs-12">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="fa fa-calendar"></i>&nbsp;&nbsp; Calender Schedule
                                </div>
                                <div class="panel-body">

                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#efefef" BorderStyle="none" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="#fff" Height="250px" NextPrevFormat="ShortMonth"
                                        Width="530px" CaptionAlign="Top" Class="calender" Style="margin-left: 0px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="10pt" ForeColor="#1491d7" Height="8pt" />
                                        <DayStyle BackColor="White" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#1b9703" />
                                        <OtherMonthDayStyle ForeColor="#1b9703" />
                                        <SelectedDayStyle BackColor="#1b9703" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="12pt" ForeColor="#1b9703" Height="12pt" />
                                        <TodayDayStyle BackColor="#1491d7" ForeColor="blue" />
                                    </asp:Calendar>

                                </div>

                            </div>
                        </div>
                        <div class=" col-md-3">

                            
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





        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>

        <!------  /*==============================================
                    End  WRAPPER 
    =============================================*/---->

    </div>

</asp:Content>
