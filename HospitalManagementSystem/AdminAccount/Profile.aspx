<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div id="wrapper">

    <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">
               
                           <a class="logo" href="Default.aspx">
                    <img src="../assets/img/logo.png" />

                </a>
                     
             <ul class="nav" id="main-menu">

                    <li >
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
                    <li class="active-link">
                        <a href="Profile.aspx"><i class="fa fa-child "></i><span class="Link">Profile&nbsp;</span></a>
                    </li>
                    <li>
                        <a href="Manage-Notice.aspx"><i class="fa fa-sitemap "></i><span class="Link">Manage Notice&nbsp;</span></a>
                    </li>
                </ul>
                            </div>

        </nav>
         <!-----
             End wrapper
             ---->


         <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                    <h4 class="page-head-line">  Manage Profile
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>
                         
      <div class="panel panel-default">
                       <div class="panel-body">
                          
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="false" ShowMessageBox="true" ForeColor="Red" class="alert alert-danger" ValidationGroup="manageprofile" SkinID="modal" TabIndex="1"/>
                           <div class="navtab">
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#" data-toggle="tab"><i class="fa fa-navicon"></i>Manage Profile</a>
                                </li>
                                <li>
                                    
                                </li>
                               
                            </ul>
                               </div>
                           
                                       <asp:Label ID="Label1" runat="server"></asp:Label>
                                       <br />
                           <br />
                                      <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Name" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="titlevalidator" runat="server" ForeColor="Red" ErrorMessage="Name Required" ControlToValidate="nametxt" ValidationGroup="manageprofile"></asp:RequiredFieldValidator>

                                       <br />
                                        <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email" Width="600px" TextMode="Email" ViewStateMode="Disabled"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Email Required" ControlToValidate="emailtxt" ValidationGroup="manageprofile"></asp:RequiredFieldValidator>

                                      
                                       <br />
                                        <asp:TextBox runat="server" ID="locationtxt" CssClass="form-control" placeholder="Location" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Locotion Required" ControlToValidate="locationtxt" ValidationGroup="manageprofile"></asp:RequiredFieldValidator>

                                       <br />
                                       
                                         <asp:TextBox runat="server" ID="phonetxt" CssClass="form-control" placeholder="Phone Number" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="phone Number Required" ControlToValidate="phonetxt" ValidationGroup="manageprofile"></asp:RequiredFieldValidator>

                                       <br />
                                       <div class="panel-footer">
                                       <asp:Button runat="server" ID="addProfile" CssClass="btn btn-primary" text="Update Profile" Width="250px" ValidationGroup="manageprofile" OnClick="addProfile_Click"/>
                                           </div>
              </div>
                               <br />
                               <br />

            </div>


                         <div class="panel panel-default">
                                   <div class="panel-body">

                                       <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="Red" class="alert alert-danger" ValidationGroup="changepassword"/>
                                   <div class="navtab">
                              <ul class="nav nav-tabs">
                                <li class="active" style="left: 0px; top: 0px; width: 341px"><a href="#" data-toggle="tab" style="left: 7px; top: 0px; width: 294px"><i class="fa fa-lock"></i>Change&nbsp; Password</a>
                                </li>
                                <li >
                                </li>
                               
                            </ul>
                               </div>
                                       <div class="panel-adj">
                                           <br />
                                       <br />
                                       
                                       <asp:TextBox runat="server" ID="passtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Password Required" ControlToValidate="passtxt" ValidationGroup="changepassword"></asp:RequiredFieldValidator>

                                       <br />
                                        <asp:TextBox runat="server" ID="newpasstxt" CssClass="form-control" placeholder="New Password" Width="600px" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="New Password Required" ControlToValidate="newpasstxt" ValidationGroup="changepassword"></asp:RequiredFieldValidator>

                                      
                                       <br />
                                        <asp:TextBox runat="server" ID="confirmpasstxt" CssClass="form-control" placeholder="Confirm Password" Width="600px" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Confirm Password Required" ControlToValidate="confirmpasstxt" ValidationGroup="changepassword"></asp:RequiredFieldValidator>
                                           &nbsp;<asp:CompareValidator ID="CompareValidator1"  runat="server" ControlToValidate="confirmpasstxt" ErrorMessage="New Password and Confirm Password Must Be Same"  ControlToCompare="newpasstxt"  ForeColor="Red" ValidationGroup="changepassword"></asp:CompareValidator>  
                                       <br />
                                       
                                       
                                       <br />
                                           </div>
                                       <div class="panel-footer">
                                       <asp:Button runat="server" ID="changepassword" CssClass="btn btn-primary" text="Update Password" Width="250px" ValidationGroup="changepassword" OnClick="changepassword_Click"/>
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
