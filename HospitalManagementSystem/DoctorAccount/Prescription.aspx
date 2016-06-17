<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Prescription" %>

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
                    <li>
                        <a href="Appointment.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li class="active-link">
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
                        <h4 class="page-head-line">Manage Pescription
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Pescription" data-toggle="tab"><i class="fa fa-navicon"></i>Pescription List</a>
                                        </li>
                                        <li class=""><a href="#Add-Pescription" data-toggle="tab"><i class="fa fa-plus"></i>Add Pescription</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="Pescription">

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

                                            <div class="col-lg-12 col-md-12">
                                                <asp:Label ID="successid" runat="server"></asp:Label>
                                            </div>
                                            Database table here Database table here Database table here Database table here Database table here
                                        </div>

                                    </div>


                                    <div class="tab-pane fade active in" id="Add-Pescription">
                                        <br />

                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" ValidationGroup="prescription" />
                                            <div class="panel-body">

                                                <br />

                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text="Name of Doctor :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="doctxt" Width="300px" DataSourceID="SqlDataSourceDoctor" DataTextField="Name" DataValueField="Name">

                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Doctor]"></asp:SqlDataSource>

                                                <br />


                                                <asp:Label ID="label1" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="Patienttxt" Width="300px" DataSourceID="SqlDataSourcePatient" DataTextField="Name" DataValueField="Name">
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                <br />

                                                <asp:TextBox runat="server" ID="casehistroytxt" Width="600px" Height="120px" CssClass="form-control" placeholder="Case Histroy" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="requriedfield1" runat="server" ErrorMessage="Case Histroy Required" ForeColor="Red" ControlToValidate="casehistroytxt" ValidationGroup="prescription"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="medicationtxt" Width="600px" CssClass="form-control" placeholder="Medication"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Medication Required" ForeColor="Red" ControlToValidate="medicationtxt" ValidationGroup="prescription"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="phameditxt" Width="600px" CssClass="form-control" placeholder="Medication From Pharmacist"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Medication From Pharmacist Required" ForeColor="Red" ControlToValidate="phameditxt" ValidationGroup="prescription"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="descriptiontxt" Width="600px" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Discription Required" ForeColor="Red" ControlToValidate="descriptiontxt" ValidationGroup="prescription"></asp:RequiredFieldValidator>



                                                <br />
                                                <asp:Label ID="label2" runat="server" class="labeldept" Text="Date:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:TextBox runat="server" ID="datetxt" CssClass="form-control" TextMode="Date" Height="30px" Width="600px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValid" runat="server" ErrorMessage="Date Required" ForeColor="Red" ControlToValidate="datetxt" ValidationGroup="prescription"></asp:RequiredFieldValidator>

                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addpescription" CssClass="btn btn-primary" Text="Add pescription" Width="250px" ValidationGroup="prescription" OnClick="addpescription_Click" />
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
