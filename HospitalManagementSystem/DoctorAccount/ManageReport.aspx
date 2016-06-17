<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageReport.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.ManageReport" %>
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
                    <li>
                        <a href="Bloodbank.aspx"><i class="fa fa-tint"></i><span class="Link">View Blood Bank</span></a>
                    </li>

                    <li class="active-link">
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
                        <h4 class="page-head-line">Manage Appointment
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#operational" data-toggle="tab" style="left: 0px; top: 0px; width:307px"><i class="fa fa-navicon"></i>Operational</a>

                                        <li class=""><a href="#birth" data-toggle="tab" style="left: 0px; top: 0px; width: 161px"><i class="fa fa-square"></i>Birth</a>
                                        </li>

                                        <li class=""><a href="#death" data-toggle="tab" style="left: 0px; top: 0px; width: 160px"><i class="fa fa-square"></i>Death</a>
                                        </li>

                                        <li class=""><a href="#other" data-toggle="tab" style="left: 0px; top: 0px; width: 210px"><i class="fa fa-square"></i>Other</a>
                                        </li>

                                        <li class=""><a href="#Add-Report" data-toggle="tab" style="left: 0px; top: 0px; width: 207px"><i class="fa fa-plus"></i>Add Report</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="operational">

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
                                            Database table here Database table here Database table here Database table here Database table here
                                        </div>

                                    </div>

                                    <div class="tab-pane fade" id="birth">
                                        hixuhiuxhichklchopjcop
                                    </div>
                                     <div class="tab-pane fade" id="death">
                                        hixuhiuxhichklchopjcop
                                    </div>
                                     <div class="tab-pane fade" id="other">
                                        hixuhiuxhichklchopjcop
                                    </div>

                                    <div class="tab-pane fade" id="Add-Report">
                                        <br />
                                        <br />
                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" />
                                            <div class="panel-body">

                                                <br />


                                                <asp:Label ID="label1" runat="server" class="labeldept" Text="Report Type:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ToolTip="Patient Name" ID="DropDownList" Width="300px">
                                                    <asp:ListItem>Opertional Report</asp:ListItem>
                                                    <asp:ListItem>Birth Report</asp:ListItem>
                                                    <asp:ListItem>Death Report</asp:ListItem>
                                                    <asp:ListItem>Other Report</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                                
                                                <asp:TextBox id="descriptiontxt" runat="server" CssClass="form-control" Width="600px" placeholder="Description"></asp:TextBox>

                                                <br />
                                                  <asp:Label ID="label2" runat="server" class="labeldept" Text="Date :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:TextBox runat="server" ID="datetxt" CssClass="form-control" Width="600px" Height="30px" TextMode="date"></asp:TextBox>

                                             <br />
                                                <asp:Label ID="label3" runat="server" class="labeldept" Text="Doctor Name :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="DropDownList1" Width="300px" DataSourceID="SqlDataSourceDoc" DataTextField="Name" DataValueField="Name">
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSourceDoc" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Doctor]"></asp:SqlDataSource>
                                                <br />

                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                  Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="Patienttxt" Width="300px" DataSourceID="SqlDataSourcePatient" DataTextField="Name" DataValueField="Name"> 
                                                     
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                 
                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="Addreport" CssClass="btn btn-primary" Text="Add Report" Width="250px" />
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
