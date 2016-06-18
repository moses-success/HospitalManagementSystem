<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Profile" %>
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
                        <a href="DocDashBorad.aspx">
                            <i class="fa fa-dashboard "></i><span class="Link">Dashboard</span></a>
                    </li>

                    <li >
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

                    <li class="active-link">
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
                        <h4 class="page-head-line">Manage Profile
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">

                                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="false" ShowMessageBox="true" ForeColor="Red" class="alert alert-danger" ValidationGroup="manageprofile" SkinID="modal" TabIndex="1" />
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#" data-toggle="tab"><i class="fa fa-navicon"></i>Manage Profile</a>
                                        </li>
                                        <li></li>

                                    </ul>
                                </div>

                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                <br />
                              
                                      
                                       
                                       <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Name" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="validataname" ControlToValidate="nametxt" ErrorMessage="Name Required" ForeColor="Red"  ValidationGroup="doc"></asp:RequiredFieldValidator>
                                        &nbsp;
                                       <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z_\s]*$" ValidationGroup="doc"></asp:RegularExpressionValidator>

                                       <br />
                                       <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="600px" TextMode="Email"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="emailtxt" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="doc" ></asp:RequiredFieldValidator>
                                       <br />
                                        <asp:TextBox runat="server" ID="passwordtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="passwordtxt" ErrorMessage="Password Required" ForeColor="Red" validationgroup="doc"></asp:RequiredFieldValidator>
                                       <br />
                                        <asp:TextBox runat="server" ID="locationtxt" CssClass="form-control" placeholder="Location" Width="600px" ></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="locationtxt" ErrorMessage="Location Required" ForeColor="Red"  ValidationGroup="doc"></asp:RequiredFieldValidator>
                                       <br />
                                        <asp:TextBox runat="server" ID="phonetxt" CssClass="form-control" placeholder="Phone Number" Width="600px" TextMode="Phone"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="phonetxt" ErrorMessage="Phone Number Required" ForeColor="Red" ValidationGroup="doc" ></asp:RequiredFieldValidator>
                                       <br />
                                       <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Department :" Font-Bold="True"
                                            Font-Size="15pt" ForeColor="#1b9703"></asp:Label> 
                                        <asp:DropDownList runat="server" ID="departmenttxt" CssClass="form-control"  Width="300px" DataSourceID="DepartmentSource" DataTextField="DepartmentName" DataValueField="DepartmentName" ValidationGroup="doc">
                                                   <asp:ListItem>Link  Departments here </asp:ListItem>
                                                   <asp:ListItem></asp:ListItem>
                                                       </asp:DropDownList>
                                       
                                       <asp:SqlDataSource ID="DepartmentSource" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" 
                                           SelectCommand="SELECT [DepartmentName] FROM [tbl_Department]">
                                       </asp:SqlDataSource>
                                       
                                       <br />
                                        <asp:TextBox runat="server" ID="profiletxt" CssClass="form-control" placeholder="Profile" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="profiletxt" ErrorMessage="Profile Required" ForeColor="Red" ValidationGroup="doc">

                                       </asp:RequiredFieldValidator>
                                       <br />
                                <div class="panel-footer">
                                    <asp:Button runat="server" ID="addProfile" CssClass="btn btn-primary" Text="Update Profile" Width="250px" ValidationGroup="manageprofile" OnClick="addProfile_Click" />
                                </div>
                            </div>
                           

                        </div>


                        <div class="panel panel-default">
                            <div class="panel-body">

                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" class="alert alert-danger" ValidationGroup="changepassword" Font-Bold="True" />
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active" style="left: 0px; top: 0px; width: 341px"><a href="#" data-toggle="tab" style="left: 7px; top: 0px; width: 294px"><i class="fa fa-lock"></i>Change&nbsp; Password</a>
                                        </li>
                                        <li></li>

                                    </ul>
                                </div>
                                <div class="panel-adj">
                                    <br />
                                    <br />
                                   <asp:TextBox runat="server" ID="email1txt" CssClass="form-control" placeholder="Email Address" Width="600px" TextMode="Email"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="email1txt" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="changepassword" Font-Bold="True" ></asp:RequiredFieldValidator>
                                       <br />

                                    <asp:TextBox runat="server" ID="passoldtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Password Required" ControlToValidate="passoldtxt" ValidationGroup="changepassword" Font-Bold="True"></asp:RequiredFieldValidator>

                                    <br />
                                    <asp:TextBox runat="server" ID="passnewtxt" CssClass="form-control" placeholder="New Password" Width="600px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="New Password Required" ControlToValidate="passnewtxt" ValidationGroup="changepassword" Font-Bold="True"></asp:RequiredFieldValidator>


                                    <br />
                                    <asp:TextBox runat="server" ID="passconfimtxt" CssClass="form-control" placeholder="Confirm Password" Width="600px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Confirm Password Required" ControlToValidate="passconfimtxt" ValidationGroup="changepassword" Font-Bold="True"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="passconfimtxt" ErrorMessage="New Password and Confirm Password Must Be Same" ControlToCompare="passnewtxt" ForeColor="Red" ValidationGroup="changepassword" Font-Bold="True"></asp:CompareValidator>
                                    <br />


                                    <br />
                                </div>
                                <div class="panel-footer">
                                    <asp:Button runat="server" ID="changepassword" CssClass="btn btn-primary" Text="Update Password" Width="250px" ValidationGroup="changepassword"  Onclick="changepassword_Click"/>
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
