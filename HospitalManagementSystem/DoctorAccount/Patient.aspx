<%@ Page Title="Manage Patient " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="HospitalManagementSystem.DoctorAccount.Patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div id="wrapper">

        <!-- /. NAV TOP  -->
        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">


                <a id="logo" href="Default.aspx">
                      <img src="../assets/img/Logo1.jpg" />

                </a>

                  <ul class="nav" id="main-menu">

                    <li >
                        <hr />
                        <a href="DocDashBoard.aspx">
                            <i class="fa fa-dashboard "></i><span class="Link">Dashboard</span></a>
                    </li>

                    <li class="active-link">
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

                             

                                            <div class="col-lg-12 col-md-12">
                                                <asp:Label ID="successid" runat="server"></asp:Label>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>

                                                <asp:GridView ID="PatientGridView" runat="server" ToolTip="click on header to sort" CssClass="table table-bordered table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id"
                                                    DataSourceID="PatientSqlDataSource" ForeColor="#333333" GridLines="None" OnRowUpdated="PatientGridView_RowUpdated" OnRowDeleted="PatientGridView_RowDeleted">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>

                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                                        <asp:BoundField DataField="DateOfBrith" HeaderText="DateOfBrith" SortExpression="DateOfBrith" DataFormatString="{0:D}"/>
                                                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                                                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-primary" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are You Sure To Delete');" CssClass="btn btn-danger" CommandName="Delete" Text="Delete"></asp:LinkButton>
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



                                                <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Patient] WHERE [Id] = @original_Id AND [PatientName] = @original_PatientName AND [Email] = @original_Email AND [PhoneNumber] = @original_PhoneNumber AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [Sex] = @original_Sex AND [DateOfBrith] = @original_DateOfBrith AND [BloodGroup] = @original_BloodGroup AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL))"
                                                    SelectCommand="SELECT [Id], [PatientName], [Email], [PhoneNumber], [Location], [Sex], [DateOfBrith], [BloodGroup], [Age] FROM [tbl_Patient]"
                                                    UpdateCommand="UPDATE [tbl_Patient] SET [PatientName] = @PatientName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Location] = @Location, [Sex] = @Sex, [DateOfBrith] = @DateOfBrith, [BloodGroup] = @BloodGroup, [Age] = @Age WHERE [Id] = @original_Id AND [PatientName] = @original_PatientName AND [Email] = @original_Email AND [PhoneNumber] = @original_PhoneNumber AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [Sex] = @original_Sex AND [DateOfBrith] = @original_DateOfBrith AND [BloodGroup] = @original_BloodGroup AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL))" InsertCommand="INSERT INTO [tbl_Patient] ([PatientName], [Email], [PhoneNumber], [Location], [Sex], [DateOfBrith], [BloodGroup], [Age]) VALUES (@PatientName, @Email, @PhoneNumber, @Location, @Sex, @DateOfBrith, @BloodGroup, @Age)" OldValuesParameterFormatString="original_{0}">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DateOfBrith" />
                                                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                                                        <asp:Parameter Name="original_Age" Type="Int32" />
                                                    </DeleteParameters>

                                                    <InsertParameters>
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="DateOfBrith" />
                                                        <asp:Parameter Name="BloodGroup" Type="String" />
                                                        <asp:Parameter Name="Age" Type="Int32" />
                                                    </InsertParameters>

                                                    <UpdateParameters>
                                                        <asp:Parameter Name="PatientName" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="DateOfBrith" />
                                                        <asp:Parameter Name="BloodGroup" Type="String" />
                                                        <asp:Parameter Name="Age" Type="Int32" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_PatientName" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_Sex" Type="String" />
                                                        <asp:Parameter DbType="Date" Name="original_DateOfBrith" />
                                                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                                                        <asp:Parameter Name="original_Age" Type="Int32" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="tab-pane fade  " id="Add-patient">
                                        <br />
                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                                

                                                <asp:ValidationSummary ID="summaryid" runat="server" ForeColor="red" CssClass="alert alert-danger" />
                                                <br />

                                                <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Name" Width="600px">
                                                </asp:TextBox>
                                                
                                               <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" ValidationGroup="pat"></asp:RegularExpressionValidator>
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
                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Sex :" Font-Bold="True" Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:DropDownList runat="server" ID="sextxt" CssClass="form-control" Width="300px" ValidationGroup="pat">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>

                                                <br />
                                                <asp:Label ID="doblabel" runat="server" class="labeldept" Text="Brith Date:" Font-Bold="True" Font-Size="15pt" ForeColor="#1b9703"></asp:Label>

                                                <asp:TextBox runat="server" ID="dobtxt" CssClass="form-control" placeholder="Brith Date" Width="600px" Height="30px" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Date Of Brith Required" ForeColor="Red" ControlToValidate="dobtxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />
                                                <asp:TextBox runat="server" ID="agetxt" CssClass="form-control" placeholder="Age" Width="300px" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Age Required" ForeColor="Red" ControlToValidate="agetxt" ValidationGroup="pat"></asp:RequiredFieldValidator>

                                                <br />

                                                <asp:Label ID="bllabel1" runat="server" class="labeldept" Text="Blood Group:" Font-Bold="True" Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
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
