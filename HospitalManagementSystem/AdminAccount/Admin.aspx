<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Admin" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



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
                        <a href="Admin.aspx">
                            <i class="fa fa-dashboard"></i><span class="Link">Dashboard</span></a>
                    </li>


                    <li>
                        <a href="Department.aspx"><i class="fa fa-sitemap "></i><span class="Link">Department</span></a>
                    </li>
                    <li>
                        <a href="Doctor.aspx"><i class="fa fa-user-md "></i><span class="Link">Doctor</span></a>
                    </li>
                    <li>
                        <a href="Patient.aspx"><i class="fa fa-user "></i><span class="Link">Patient</span></a>
                    </li>
                    <li>
                        <a href="Nurse.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Nurse</span></a>
                    </li>
                    <li>
                        <a href="Profile.aspx"><i class="fa fa-child "></i><span class="Link">Profile&nbsp;</span></a>
                    </li>
                    <li>
                        <a href="Manage-Notice.aspx"><i class="fa fa-sitemap "></i><span class="Link">Manage Notice&nbsp;</span></a>
                    </li>
                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Admin || Dashboard    
                      
                        </h4>

                    </div>
                </div>
                <!-- /. ROW  -->

                <!-- /. ROW  -->

                <div class="row text-center pad-top">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Doctor.aspx">
                                <i class="fa fa-user-md fa-3x"></i>
                                <h4>Doctor</h4>
                            </a>
                        </div>

                    </div>

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
                            <a href="Nurse.aspx">
                                <i class="fa fa-plus-square fa-3x"></i>
                                <h4>Nurse</h4>
                            </a>
                        </div>


                    </div>
                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="../DoctorAccount/BedAllotment.aspx">
                                <i class="fa fa-hdd-o fa-5x"></i>
                                <h4>Bed Allotment</h4>
                            </a>
                        </div>


                    </div>
              
                   
                </div>

                <!---- /*==============================================
                        End Row One 
    =============================================*/---->

                <div class="row text-center pad-top">

                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                        <div class="div-square">
                            <a href="../DoctorAccount/Appointment.aspx">
                                <i class="fa fa-exchange fa-3x"></i>
                                <h4>Appointment</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                        <div class="div-square">
                            <a href="#">
                                <i class="fa fa-credit-card fa-3x"></i>
                                <h4>Payment</h4>
                            </a>
                        </div>


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="../DoctorAccount/BloodBank.aspx">
                                <i class="fa fa-tint fa-3x"></i>
                                <h4>Blood Bank</h4>
                            </a>
                        </div>


                    </div>
           
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="../PatientAccount/OperationHistory.aspx">
                                <i class="fa fa-list-alt fa-3x"></i>
                                <h4>Operational Report</h4>
                            </a>
                        </div>


                    </div>
                  
                </div>

                <!---   /*==============================================
                        End Row Two
    =============================================*/ -->

                <div class="row text-center pad-top">



                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        


                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        <div class="div-square">
                            <a href="Manage-Notice.aspx">
                                <i class="fa fa-book fa-3x"></i>
                                <h4>NoticeBoard</h4>
                            </a>
                        </div>


                    </div>
                       
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                        


                    </div>
                   
                    <br />
                    <br />
                    <br />
                     <br />
                    <br />
                    <hr class="long" />

                </div>
                <!----/*==============================================
                        End Row Three 
            =========================================*/ --->
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="fa fa-calendar"></i>&nbsp;&nbsp;Calender Schedule
                                </div>
                                <div class="panel-body">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#efefef" BorderStyle="none" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="#fff" Height="250px" NextPrevFormat="ShortMonth"
                                        Width="522px" CaptionAlign="Top" CssClass="calender">
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
                        <div class="col-md-6 col-xs-12">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <i class="table"></i>&nbsp;&nbsp;  Notice Board
                                </div>
                                <div class="panel-body">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="F" />
                                            <asp:BoundField DataField="Notice" HeaderText="Notice" SortExpression="Notice" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Date], [Notice] FROM [tbl_NoticeBoard]"></asp:SqlDataSource>
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
