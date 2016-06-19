<%@ Page Title="Prescription" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Prescription" %>

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
                        <a href="DocDashBoard.aspx">
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
                                                <br />
                                               
                                            <div class="col-lg-12 col-md-12" style="left: 0px; top: -1px">
                                                <br />
                                                <asp:Label ID="successid" runat="server"></asp:Label>
                                                
                                                
                                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" SortExpression="DoctorName" />
                                                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" SortExpression="PatientName" />
                                                        <asp:BoundField DataField="CaseHistory" HeaderText="Case History" SortExpression="CaseHistory" />
                                                        <asp:BoundField DataField="Medication" HeaderText="Medication" SortExpression="Medication" />
                                                        <asp:BoundField DataField="PharmMedication" HeaderText="Pharm Medication" SortExpression="PharmMedication" />
                                                        <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
                                                        <asp:BoundField DataField="DatePes" HeaderText="Date of Pescription" SortExpression="DatePes" DataFormatString="{0:D}"/>
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are You Sure To Delete');" CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
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

                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Prescription] WHERE [Id] = @original_Id AND [DoctorName] = @original_DoctorName AND [PatientName] = @original_PatientName AND [CaseHistory] = @original_CaseHistory AND [Medication] = @original_Medication AND [PharmMedication] = @original_PharmMedication AND [Discription] = @original_Discription AND [DatePes] = @original_DatePes" InsertCommand="INSERT INTO [tbl_Prescription] ([DoctorName], [PatientName], [CaseHistory], [Medication], [PharmMedication], [Discription], [DatePes]) VALUES (@DoctorName, @PatientName, @CaseHistory, @Medication, @PharmMedication, @Discription, @DatePes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Prescription]" UpdateCommand="UPDATE [tbl_Prescription] SET [DoctorName] = @DoctorName, [PatientName] = @PatientName, [CaseHistory] = @CaseHistory, [Medication] = @Medication, [PharmMedication] = @PharmMedication, [Discription] = @Discription, [DatePes] = @DatePes WHERE [Id] = @original_Id AND [DoctorName] = @original_DoctorName AND [PatientName] = @original_PatientName AND [CaseHistory] = @original_CaseHistory AND [Medication] = @original_Medication AND [PharmMedication] = @original_PharmMedication AND [Discription] = @original_Discription AND [DatePes] = @original_DatePes">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_DoctorName" Type="String" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter Name="original_CaseHistory" Type="String" />
                                                        <asp:Parameter Name="original_Medication" Type="String" />
                                                        <asp:Parameter Name="original_PharmMedication" Type="String" />
                                                        <asp:Parameter Name="original_Discription" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DatePes" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="DoctorName" Type="String" />
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter Name="CaseHistory" Type="String" />
                                                        <asp:Parameter Name="Medication" Type="String" />
                                                        <asp:Parameter Name="PharmMedication" Type="String" />
                                                        <asp:Parameter Name="Discription" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="DatePes" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="DoctorName" Type="String" />
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter Name="CaseHistory" Type="String" />
                                                        <asp:Parameter Name="Medication" Type="String" />
                                                        <asp:Parameter Name="PharmMedication" Type="String" />
                                                        <asp:Parameter Name="Discription" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="DatePes" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_DoctorName" Type="String" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter Name="original_CaseHistory" Type="String" />
                                                        <asp:Parameter Name="original_Medication" Type="String" />
                                                        <asp:Parameter Name="original_PharmMedication" Type="String" />
                                                        <asp:Parameter Name="original_Discription" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DatePes" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                     
                                        </div>

                                    </div>


                                    <div class="tab-pane fade" id="Add-Pescription">
                                        <br />

                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" ValidationGroup="prescription" />
                                            <div class="panel-body">

                                                <br />

                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text="Name of Doctor :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="doctxt" Width="300px" DataSourceID="SqlDataSourceDoctor" DataTextField="FirstName" DataValueField="FirstName">

                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [FirstName] FROM [tbl_Doctor]"></asp:SqlDataSource>

                                                <br />


                                                <asp:Label ID="label1" runat="server" class="labeldept" Text=" Patient Name :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
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
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
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
