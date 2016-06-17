<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Patient" %>

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

                    <li class="active-link">
                        <a href="Patient.aspx"><i class="fa fa-user "></i><span class="Link">Patient</span></a>
                    </li>
                    <li>
                        <a href="Appointment.aspx"><i class="fa fa-stethoscope "></i><span class="Link">Appointment</span></a>
                    </li>
                    <li>
                        <a href="Pescription.aspx"><i class="fa fa-medkit"></i><span class="Link">Pescription</span></a>
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

                        <div class="page-head-line">
                            Manage Patient 
                        <ul class="doctor">
                            <li>Doctor</li>
                            <li>
                                <asp:Label ID="numberdoc" runat="server" ForeColor="Blue"></asp:Label></li>

                        </ul>
                            <ul class="patient">
                                <li>Patient</li>
                                <li>
                                    <asp:Label ID="numberpat" runat="server" ForeColor="#FF6600"></asp:Label>
                                </li>


                            </ul>
                            <ul class="nurse">
                                <li>Nurse</li>
                                <li>
                                    <asp:Label ID="numbernurse" runat="server" ForeColor="#0066FF"></asp:Label>
                                </li>
                            </ul>

                        </div>



                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#patient" data-toggle="tab"><i class="fa fa-navicon"></i>Patient List</a>
                                        </li>
                                        <li class=""><a href="#Add-patient" data-toggle="tab"><i class="fa fa-plus"></i>Add Patient</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="patient">

                                        <div class="table-responsive">
                                            <br />

                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 700px">
                                                            <div class="col-md-6">

                                                                <asp:TextBox runat="server" ID="searchtxt" CssClass="form-control" Width="300px" placeholder="search"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:Button runat="server" ID="searchbutt" CssClass="btn btn-primary" Text="search" />
                                                            </div>
                                                        </th>

                                                        <th></th>
                                                    </tr>
                                                </thead>

                                            </table>

                                            <div class="col-lg-12 col-md-12">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>

                                                <asp:GridView ID="PatientGridView" runat="server" ToolTip="click on header to sort" CssClass="table table-bordered table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID"
                                                    DataSourceID="PatientSqlDataSource" ForeColor="#333333" GridLines="None" OnRowUpdated="PatientGridView_RowUpdated" OnRowDeleted="PatientGridView_RowDeleted">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>

                                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                                        <asp:BoundField DataField="DateofBrith" HeaderText="DateofBrith" SortExpression="DateofBrith" />
                                                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                                                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-primary" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton OnClientClick="return confirm('Are You Sure To Delete');" ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
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



                                                <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Patient] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Email] = @original_Email AND [Location] = @original_Location AND [PhoneNumber] = @original_PhoneNumber AND [Sex] = @original_Sex AND [DateofBrith] = @original_DateofBrith AND [BloodGroup] = @original_BloodGroup AND [Age] = @original_Age"
                                                    SelectCommand="SELECT [ID], [Name], [Email], [Location], [PhoneNumber], [Sex], [DateofBrith], [BloodGroup], [Age] FROM [tbl_Patient]"
                                                    UpdateCommand="UPDATE [tbl_Patient] SET [Name] = @Name, [Email] = @Email, [Location] = @Location, [PhoneNumber] = @PhoneNumber, [Sex] = @Sex, [DateofBrith] = @DateofBrith, [BloodGroup] = @BloodGroup, [Age] = @Age WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Email] = @original_Email AND [Location] = @original_Location AND [PhoneNumber] = @original_PhoneNumber AND [Sex] = @original_Sex AND [DateofBrith] = @original_DateofBrith AND [BloodGroup] = @original_BloodGroup AND [Age] = @original_Age">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                                        <asp:Parameter Name="original_Name" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="Int32" />
                                                        <asp:Parameter Name="original_Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DateofBrith" />
                                                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                                                        <asp:Parameter Name="original_Age" Type="Int32" />
                                                    </DeleteParameters>

                                                    <UpdateParameters>
                                                        <asp:Parameter Name="Name" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="Int32" />
                                                        <asp:Parameter Name="Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="DateofBrith" />
                                                        <asp:Parameter Name="BloodGroup" Type="String" />
                                                        <asp:Parameter Name="Age" Type="Int32" />
                                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                                        <asp:Parameter Name="original_Name" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="Int32" />
                                                        <asp:Parameter Name="original_Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DateofBrith" />
                                                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                                                        <asp:Parameter Name="original_Age" Type="Int32" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="tab-pane fade" id="Add-patient">
                                        <br />
                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                                <asp:Label ID="successid" runat="server"></asp:Label>

                                                <asp:ValidationSummary ID="summaryid" runat="server" ForeColor="red" CssClass="alert alert-danger" />
                                                <br />

                                                <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Name" Width="600px">
                                                </asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z_\s]*$" ValidationGroup="pat"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="" ValidationGroup="pat"></asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="namevalidator" runat="server" ErrorMessage="Name Required" ForeColor="Red" ControlToValidate="nametxt" ValidationGroup="pat"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="600px" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ForeColor="Red" ControlToValidate="emailtxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="passwordtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="passwordtxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="locationtxt" CssClass="form-control" placeholder="Location" Width="600px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Location Required" ForeColor="Red" ControlToValidate="locationtxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="phonetxt" CssClass="form-control" placeholder="Phone Number" Width="600px" TextMode="Phone"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Number Required" ForeColor="Red" ControlToValidate="phonetxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Sex :" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" ID="sextxt" CssClass="form-control" Width="300px" ValidationGroup="pat">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>

                                                <br />
                                                <asp:Label ID="doblabel" runat="server" class="labeldept" Text="Brith Date:" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label>

                                                <asp:TextBox runat="server" ID="dobtxt" CssClass="form-control" placeholder="Brith Date" Width="600px" Height="30px" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Date Of Brith Required" ForeColor="Red" ControlToValidate="dobtxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="agetxt" CssClass="form-control" placeholder="Age" Width="300px" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Age Required" ForeColor="Red" ControlToValidate="agetxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />

                                                <asp:Label ID="bllabel1" runat="server" class="labeldept" Text="Blood Group:" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label>
                                                <asp:DropDownList runat="server" ID="bloodtxt" CssClass="form-control" Width="300px">
                                                    <asp:ListItem>A</asp:ListItem>
                                                    <asp:ListItem>B</asp:ListItem>
                                                    <asp:ListItem>AB</asp:ListItem>
                                                    <asp:ListItem>O</asp:ListItem>
                                                </asp:DropDownList>

                                                <br />
                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addPatient" CssClass="btn btn-primary" Text="Add Patient" Width="250px" OnClick="addPatient_Click" ValidationGroup="pat" />
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
