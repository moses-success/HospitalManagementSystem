<%@ Page Title="Nurse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nurse.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Nurse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div id="wrapper">

        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">

                <a id="logo" href="Default.aspx">
                     <img src="../assets/img/Logo1.jpg" />

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
                    <li class="active-link">
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
                            Manage Nurse 
                      
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Nurse" data-toggle="tab"><i class="fa fa-navicon"></i>Nurse List</a>
                                        </li>
                                        <li class=""><a href="#Add-Nurse" data-toggle="tab"><i class="fa fa-plus"></i>Add Nurse</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="Nurse">
                                        <br />
                                       
                                        <div class="table-responsive">
                                        

                                            <div class="col-lg-12 col-md-12">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                                  <asp:Label ID="successid" runat="server"></asp:Label>
                                                <br />
                                                <asp:GridView ID="NurseGridView" runat="server" CellPadding="4" ForeColor="#333333"
                                                    GridLines="None" CssClass="table table-hover table-bordered" AllowPaging="True" AllowSorting="True" DataSourceID="NurseSqlDataSource" OnRowDeleted="NurseGridView_RowDeleted" OnRowUpdated="NurseGridView_RowUpdated" AutoGenerateColumns="False" DataKeyNames="Id">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server"  CausesValidation="False" OnClientClick="return confirm('Are You Sure To Delete');" CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
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



                                                <asp:SqlDataSource ID="NurseSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Nurse] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [PhoneNumber] = @original_PhoneNumber" InsertCommand="INSERT INTO [tbl_Nurse] ([Name], [Email], [Location], [PhoneNumber]) VALUES (@Name, @Email, @Location, @PhoneNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [Email], [Location], [PhoneNumber] FROM [tbl_Nurse]" UpdateCommand="UPDATE [tbl_Nurse] SET [Name] = @Name, [Email] = @Email, [Location] = @Location, [PhoneNumber] = @PhoneNumber WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND [PhoneNumber] = @original_PhoneNumber">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_Name" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="Name" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="Name" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Location" Type="String" />
                                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_Name" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Location" Type="String" />
                                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="tab-pane fade" id="Add-Nurse">
                                        <br />

                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                              
                                                <asp:ValidationSummary runat="server" ID="ValidationSummaryid" ForeColor="Red" CssClass="alert alert-danger" />
                                                <br />

                                                <asp:TextBox runat="server" ID="nametxt" CssClass="form-control" placeholder="Name" Width="600px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z_\s]*$" ValidationGroup="nur"></asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="namevalidator" runat="server" ErrorMessage="Name Required" ControlToValidate="nametxt" ForeColor="Red" ValidationGroup="nurs"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control" placeholder="Email Address" Width="600px" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="emailtxt" ForeColor="Red" ValidationGroup="nurs"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="passwordtxt" CssClass="form-control" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="passwordtxt" ForeColor="Red" ValidationGroup="nurs"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="locationtxt" CssClass="form-control" placeholder="Location" Width="600px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Location Required" ControlToValidate="locationtxt" ForeColor="Red" ValidationGroup="nurs"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="phonetxt" CssClass="form-control" placeholder="Phone Number" Width="600px" TextMode="Phone"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="phonetxt" ForeColor="Red" ValidationGroup="nurs"></asp:RequiredFieldValidator>
                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addNurse" CssClass="btn btn-primary" Text="Add Nurse" Width="250px" OnClick="addNurse_Click" ValidationGroup="nurs" />
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
