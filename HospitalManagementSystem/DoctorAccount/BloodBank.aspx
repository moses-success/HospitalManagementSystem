<%@ Page Title="BloodBank" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BloodBank.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.BloodBank" %>
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
                    <li>
                        <a href="Bedallotment.aspx"><i class="fa fa-hdd-o"></i><span class="Link">Bed Allotment</span></a>
                    </li>
                    <li class="active-link">
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
                        <h4 class="page-head-line">View Blood Bank
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#blood" data-toggle="tab" style="left: 0px; top: 0px; width: 295px"><i class="fa fa-navicon"></i>Blood Donor List</a>
                                        </li>
                                        <li class=""><a href="#Add-Blood" data-toggle="tab"><i class="fa fa-plus"></i>Add Blood Bank</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="blood">

                                        <div class="table-responsive">
                                    <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>         
                                             <th style="width: 700px" >
                                                <div class="col-md-6">
                                                    <asp:TextBox runat="server" ID="searchtxt" CssClass="form-control" Width="300px" placeholder="search"></asp:TextBox>
                                                    </div>
                                                 <div class="col-md-6">
                                                <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" Text="search"  /></div>
                                           </th>   
                                            <th></th>      
                                        </tr>
                                    </thead>
                                   </table>
                                            <div class="col-lg-12 col-md-12 col-sm-24">
                                                <asp:Label ID="successid" runat="server"></asp:Label>  

                                            </div>
                                            Database table here Database table here Database table here Database table here Database table here
                                        </div>

                                    </div>


                                    <div class="tab-pane fade active in" id="Add-Blood">
                                        <br />
                                       
                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" ValidationGroup="bloodbank" />
                                            <div class="panel-body">
                                                
                                                <br />
                                                <asp:Label ID="label1" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                  Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                <asp:DropDownList runat="server" CssClass="form-control" Width="600px" ID="Patienttxt"  DataSourceID="SqlDataSourcePatient" DataTextField="Name" DataValueField="Name" ValidationGroup="bloodbank">    
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                 <br />
                                                <asp:Label ID="label2" runat="server" class="labeldept" Text=" Age :" Font-Bold="True"
                                                  Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                <asp:TextBox runat="server" ID="agetxt" CssClass="form-control" Width="300px" TextMode="Number" placeholder="Age" ValidationGroup="bloodbank"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="requiredfield" runat="server" ErrorMessage="Age Required" ControlToValidate="agetxt" ForeColor="Red" ValidationGroup="bloodbank"></asp:RequiredFieldValidator>

                                                <br />
                                                 <asp:Label ID="labeldept" runat="server" class="labeldept" Text="Gender:" Font-Bold="True"
                                                  Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="gendertxt" Width="300px" ValidationGroup="bloodbank">
                                                    <asp:ListItem>Female</asp:ListItem>
                                                    <asp:ListItem>Male</asp:ListItem>
                                                </asp:DropDownList>

                                                <br />

                                                 <asp:Label ID="bllabel1" runat="server" class="labeldept" Text="Blood Group:" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                  <asp:DropDownList runat="server" ID="bloodtxt" CssClass="form-control"  Width="300px" ValidationGroup="bloodbank">
                                                   <asp:ListItem>A</asp:ListItem>
                                                   <asp:ListItem>B</asp:ListItem>
                                                   <asp:ListItem>AB</asp:ListItem>
                                                   <asp:ListItem>O</asp:ListItem>
                                               </asp:DropDownList>


                                               <br />
                                                <asp:Label ID="label3" runat="server" class="labeldept" Text=" Donated Date :" Font-Bold="True"
                                                  Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                <asp:TextBox runat="server" ID="datetxt1" placeholder="Donated Date" CssClass="form-control" Height="30px" TextMode="Date" Width="600px" ValidationGroup="bloodbank"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Age Required" ControlToValidate="datetxt1" ForeColor="Red" ValidationGroup="bloodbank"></asp:RequiredFieldValidator>


                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="donateblood" CssClass="btn btn-primary" Text="Donte Blood" Width="250px" ValidationGroup="bloodbank" OnClick="donateblood_Click"/>
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
