<%@ Page Title="Doctor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Doctor" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



    <div id="wrapper">

        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">

                <a id="logo" href="Default.aspx">
                    <img src="../assets/img/logo.png" />

                </a>

                 <ul class="nav" id="main-menu">

                    <li class="active-link">
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
                    <li>
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


        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-head-line">
                            Manage Doctor  
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Doctor" data-toggle="tab"><i class="fa fa-navicon"></i>Doctor List</a>
                                        </li>
                                        <li class=""><a href="#Add-Doctor" data-toggle="tab"><i class="fa fa-plus"></i>Add Doctor</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="Doctor">

                                        <div class="table-responsive">
                                           
                                            <div class="col-12 col-md-12">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                                <h4>
                                                    <asp:Label ID="successid" runat="server"></asp:Label></h4>
                                                <br />
                                                <asp:GridView ID="DoctorGridView" runat="server" AllowPaging="True"
                                                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id"
                                                    DataSourceID="DoctorSqlDataSource" ForeColor="#333333" GridLines="None" CssClass="table table-bordered table-hover" OnRowUpdated="DoctorGridView_RowUpdated" OnRowDeleted="DoctorGridView_RowDeleted">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>

                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"  CssClass="btn btn-primary" Text="Update"></asp:LinkButton>
                                                              &nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                               &nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
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

                                                <br />

                                                <asp:SqlDataSource ID="DoctorSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Doctor] WHERE [Id] = @original_Id AND [FirstName] = @original_FirstName AND [Email] = @original_Email AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [PhoneNumber] = @original_PhoneNumber AND [Department] = @original_Department" InsertCommand="INSERT INTO [tbl_Doctor] ([FirstName], [Email], [Location], [PhoneNumber], [Department]) VALUES (@FirstName, @Email, @Location, @PhoneNumber, @Department)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [FirstName], [Email], [Location], [PhoneNumber], [Department] FROM [tbl_Doctor]" UpdateCommand="UPDATE [tbl_Doctor] SET [FirstName] = @FirstName, [Email] = @Email, [Location] = @Location, [PhoneNumber] = @PhoneNumber, [Department] = @Department WHERE [Id] = @original_Id AND [FirstName] = @original_FirstName AND [Email] = @original_Email AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [PhoneNumber] = @original_PhoneNumber AND [Department] = @original_Department">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_FirstName" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="original_Department" Type="String" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="FirstName" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="Department" Type="String" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="FirstName" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="Department" Type="String" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_FirstName" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="original_Department" Type="String" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>

                                            </div>

                                        </div>

                                    </div>


                                    <div class="tab-pane fade " id="Add-Doctor">
                                        <br />

                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                                
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" />
                                                <br />

                                                <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder=" Name" Width="600px"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="validataname" ControlToValidate="nametxt" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                                &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" ValidationGroup="doc"></asp:RegularExpressionValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="600px" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="emailtxt" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="passwordtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="passwordtxt" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="locationtxt" CssClass="form-control" placeholder="Location" Width="600px"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="locationtxt" ErrorMessage="Location Required" ForeColor="Red" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="phonetxt" CssClass="form-control" placeholder="Phone Number" Width="600px" TextMode="Phone"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="phonetxt" ErrorMessage="Phone Number Required" ForeColor="Red" ValidationGroup="doc"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Department :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:DropDownList runat="server" ID="departmenttxt" CssClass="form-control" Width="300px" DataSourceID="DepartmentSource" DataTextField="DepartmentName" DataValueField="DepartmentName" ValidationGroup="doc">
                                                    <asp:ListItem>Link  Departments here </asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="DepartmentSource" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>"
                                                    SelectCommand="SELECT [DepartmentName] FROM [tbl_Department]"></asp:SqlDataSource>
                                                <br />
                                  
                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addDoctor" CssClass="btn btn-primary" Text="Add Doctor" Width="250px" OnClick="addDoctor_Click" ValidationGroup="doc" />
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
