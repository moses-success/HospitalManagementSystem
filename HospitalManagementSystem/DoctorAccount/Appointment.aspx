<%@ Page Title="Manage Appointment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div id="wrapper">

            <!-- /. NAV TOP  -->
            <nav class="navbar navbar-side" role="navigation">
                <div class="sidebar-collapse">


                    <a id="logo" href="Default.aspx">
                        <img src="../assets/img/logo.png" />

                    </a>

                   <ul class="nav" id="main-menu">

                    <li >
                        <hr />
                    <a href="DocDashBoard.aspx">
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
                                                <br />
                                                <br />
                                          

                                            <div class="col-lg-12 col-md-12">

                                                <asp:Label ID="Label1" runat="server" Width="500px"></asp:Label>


                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id"     CssClass="table table-hover table-bordered" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                                                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                                                        <asp:BoundField DataField="BirthDate" HeaderText="DateofAppointment" SortExpression="BirthDate" DataFormatString="{0:D}" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('Are You Sure To Delete');" CausesValidation="False" CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
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

                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Appointment] WHERE [Id] = @original_Id AND [DoctorName] = @original_DoctorName AND [PatientName] = @original_PatientName AND [BirthDate] = @original_BirthDate" InsertCommand="INSERT INTO [tbl_Appointment] ([DoctorName], [PatientName], [BirthDate]) VALUES (@DoctorName, @PatientName, @BirthDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Appointment]" UpdateCommand="UPDATE [tbl_Appointment] SET [DoctorName] = @DoctorName, [PatientName] = @PatientName, [BirthDate] = @BirthDate WHERE [Id] = @original_Id AND [DoctorName] = @original_DoctorName AND [PatientName] = @original_PatientName AND [BirthDate] = @original_BirthDate">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_DoctorName" Type="String" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_BirthDate" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="DoctorName" Type="String" />
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="BirthDate" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="DoctorName" Type="String" />
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="BirthDate" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_DoctorName" Type="String" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_BirthDate" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>


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
                                               <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationGroup="appoint" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>

                                                    <br />


                                                    <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                        Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="Patienttxt" Width="300px" DataSourceID="SqlDataSourcePatient" DataTextField="Name" DataValueField="Name" ValidationGroup="appoint">
                                                    </asp:DropDownList>

                                                    <asp:SqlDataSource ID="SqlDataSourcePatient" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [Name] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                    <br />
                                                    <asp:Label ID="doblabel" runat="server" class="labeldept" Text="Date for Appointment:" Font-Bold="True" Font-Size="15pt" ForeColor="#1b9703"></asp:Label>

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
