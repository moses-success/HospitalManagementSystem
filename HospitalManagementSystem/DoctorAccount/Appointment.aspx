<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div id="wrapper">

            <!-- /. NAV TOP  -->
            <nav class="navbar navbar-side" role="navigation">
                <div class="sidebar-collapse">


                    <a id="logo" href="Default.aspx">
                        <img src="../assets/img/logo.png" />

                    </a>

                    <ul class="nav" id="main-menu">

                        <li>
                            <hr />
                            <a href="DocDashBorad.aspx">
                                <i class="fa fa-dashboard "></i><span class="Link">Dashboard</span></a>
                        </li>

                        <li>
                            <a href="Patient.aspx"><i class="fa fa-user "></i><span class="Link">Patient</span></a>
                        </li>
                        <li class="active-link">
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
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="page-head-line">Manage Appointment
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                            </h4>

                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="navtab">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#appointment" data-toggle="tab" style="left: 0px; top: 0px; width: 298px"><i class="fa fa-navicon"></i>Appointment List</a>
                                            </li>
                                            <li class=""><a href="#Add-appointment" data-toggle="tab"><i class="fa fa-plus"></i>Add Appointment</a>
                                            </li>

                                        </ul>
                                    </div>

                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="appointment">

                                            <div class="table-responsive">
                                                <table class="table table-striped table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 700px">
                                                                <div class="col-md-6">
                                                                    <asp:TextBox runat="server" ID="searchtxt" CssClass="form-control" Width="300px" placeholder="search"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" Text="search" />
                                                                </div>
                                                            </th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                                Database table here Database table here Database table here Database table here Database table here

                                            <div class="col-lg-12 col-md-12">


                                                <asp:Label ID="Label1" runat="server" Width="500px"></asp:Label>
                                            </div>


                                            </div>

                                        </div>


                                        <div class="tab-pane fade" id="Add-appointment">
                                            <br />

                                            <div class="panel panel-primary">
                                                <div class="text-center">
                                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" ValidationGroup="appoint" />
                                                </div>
                                                <div class="panel-body">
                                                    <br />
                                                    <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Doctor's Name" Width="600px" ToolTip="Doctor's Name" ValidationGroup="appoint"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="valdatenametxt" ControlToValidate="nametxt" ErrorMessage="Name  Required" ForeColor="Red" ValidationGroup="appoint"></asp:RequiredFieldValidator>
                                                    &nbsp;
                                               <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationGroup="appoint" ValidationExpression="^[a-zA-Z_\s]*$"></asp:RegularExpressionValidator>

                                                    <br />


                                                    <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                        Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="Patienttxt" Width="300px" DataSourceID="SqlDataSourcePatient" DataTextField="Name" DataValueField="Name" ValidationGroup="appoint">
                                                    </asp:DropDownList>

                                                    <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                    <br />
                                                    <asp:Label ID="doblabel" runat="server" class="labeldept" Text="Brith Date:" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label>

                                                    <asp:TextBox runat="server" ID="datetxt" CssClass="form-control" TextMode="Date" Width="600px" Height="30px" ValidationGroup="appoint"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="regfield" runat="server" ForeColor="Red" ControlToValidate="datetxt" ErrorMessage="Date Required" ValidationGroup="appoint"></asp:RequiredFieldValidator>
                                                    <br />

                                                    <div class="panel-footer">
                                                        <asp:Button runat="server" ID="addappointment" CssClass="btn btn-primary" Text="Add Appoointment" Width="250px" OnClick="addappointment_Click" ValidationGroup="appoint" />
                                                    </div>
                                                </div>
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
            </div>

        </div>

    </asp:Content>
