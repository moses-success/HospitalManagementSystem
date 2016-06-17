<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BedAllotment.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.BedAllotment" %>
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
                        <a href="Doctor.aspx">
                            <i class="fa fa-dashboard "></i><span class="Link">Dashboard</span></a>
                    </li>


                    <li>
                        <a href="patient.aspx"><i class="fa fa-user "></i><span class="Link">Patient</span></a>
                    </li>
                    <li>
                        <a href="Appointment.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li>
                        <a href="Prescription.aspx"><i class="fa fa-medkit"></i><span class="Link">Prescription</span></a>
                    </li>
                    <li class="active-link">
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
        <!-----
             End wrapper
             ---->


        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Manage Bed Allotment
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#bedallotment" data-toggle="tab" style="left: 0px; top: 0px; width: 306px"><i class="fa fa-navicon"></i>Bed Allotment List</a>
                                        </li>
                                        <li class=""><a href="#Add-bedallotment" data-toggle="tab" style="left: 0px; top: 0px; width: 306px"><i class="fa fa-plus"></i>Add Bed Allotment</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="bedallotment">

                                        <div class="table-responsive">
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
                                         <asp:Label ID="successid" runat="server" Width="500px"></asp:Label>
                                            </div>
                                                Database table here Database table here Database table here Database table here Database table here
                                            </div>

                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="Add-bedallotment">
                                        <br />

                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" />
                                            <div class="panel-body">

                                                <br />
                                                <asp:Label ID="labeldept" runat="server" class="labelpat" Text="Patient Name:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ToolTip="Patient Name" ID="patientnametxt" Width="300px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                <br />
                                                <asp:Label ID="labelbed" runat="server" class="labelpat" Text="Bed Number:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="Bedtxt" Width="300px">
                                                    <asp:ListItem>1-ward</asp:ListItem>
                                                    <asp:ListItem>2-ward</asp:ListItem>
                                                    <asp:ListItem>3-ward</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="labelallot" runat="server" class="labeldept" Text=" Allomtment Date :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:TextBox runat="server" ID="alldatetxt" CssClass="form-control" TextMode="Date" Width="600px" Height="30px" ValidationGroup="allotment"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="requiredField" runat="server" ForeColor="Red" ControlToValidate="alldatetxt" ErrorMessage="Allomtment Date Required" ValidationGroup="allotment"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:Label ID="labeldis" runat="server" class="labeldept" Text=" Discharge Date :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:TextBox runat="server" ID="desdatetxt" CssClass="form-control" TextMode="Date" Width="600px" Height="30px" ValidationGroup="allotment"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="desdatetxt" ErrorMessage="Allomtment Date Required" ValidationGroup="allotment"></asp:RequiredFieldValidator>

                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addBedallotment" CssClass="btn btn-primary" Text="Add Bed Allotment" Width="250px" OnClick="addBedallotment_Click" ValidationGroup="allotment" />
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
