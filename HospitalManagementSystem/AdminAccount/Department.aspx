<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Department" %>

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


                    <li class="active-link">
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
                        <h4 class="page-head-line">Manage Dapartment   
                  
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Department" data-toggle="tab" style="left: 0px; top: 0px; width: 279px"><i class="fa fa-navicon"></i>Department List</a>
                                        </li>
                                        <li class=""><a href="#Add-Department" data-toggle="tab"><i class="fa fa-plus"></i>Add Department</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="Department">

                                        <div class="table-responsive">
                                            <br />
                                            <div class="col-lg-12 col-md-12">
                                                <asp:Label ID="successid" runat="server"></asp:Label>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>

                                                <asp:GridView ID="DepartmentGridView" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4"
                                                    DataSourceID="DepartmentSqlDataSource" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID"
                                                    CssClass="table table-hover table-bordered" OnRowDeleted="DepartmentGridView_RowDeleted" OnRowUpdated="DepartmentGridView_RowUpdated">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>

                                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                        <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
                                                        <asp:BoundField DataField="DepartmentDescription" HeaderText="DepartmentDescription" SortExpression="DepartmentDescription" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <EditItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-primary" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                                &nbsp;<asp:LinkButton OnClientClick="return confirm('Are You Sure To Delete');" ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Delete" Text="Delete"></asp:LinkButton>
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

                                                <asp:SqlDataSource ID="DepartmentSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Department] WHERE [ID] = @original_ID AND [DepartmentName] = @original_DepartmentName AND [DepartmentDescription] = @original_DepartmentDescription" InsertCommand="INSERT INTO [tbl_Department] ([DepartmentName], [DepartmentDescription]) VALUES (@DepartmentName, @DepartmentDescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Department]" UpdateCommand="UPDATE [tbl_Department] SET [DepartmentName] = @DepartmentName, [DepartmentDescription] = @DepartmentDescription WHERE [ID] = @original_ID AND [DepartmentName] = @original_DepartmentName AND [DepartmentDescription] = @original_DepartmentDescription">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                                        <asp:Parameter Name="original_DepartmentName" Type="String" />
                                                        <asp:Parameter Name="original_DepartmentDescription" Type="String" />
                                                    </DeleteParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="DepartmentName" Type="String" />
                                                        <asp:Parameter Name="DepartmentDescription" Type="String" />
                                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                                        <asp:Parameter Name="original_DepartmentName" Type="String" />
                                                        <asp:Parameter Name="original_DepartmentDescription" Type="String" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="tab-pane fade " id="Add-Department">
                                        <br />
                                        <div class="panel panel-primary">

                                            <div class="panel-body">

                                             

                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" />
                                                <br />
                                                <asp:TextBox runat="server" ID="departmenttxt" CssClass="form-control" placeholder="Department Name" Width="700px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Department Name Required" ForeColor="Red" ControlToValidate="departmenttxt" ValidationGroup="dep"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:TextBox runat="server" ID="descriptiontxt" CssClass="form-control" placeholder="Department Description" Width="700px" Rows="9" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Describe the Department" ForeColor="Red" ControlToValidate="descriptiontxt" ValidationGroup="dep"></asp:RequiredFieldValidator>
                                                <br />
                                                <br />
                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addDepartment" CssClass="btn btn-primary" Text="Add Department" Width="250px" OnClick="addDepartment_Click" ValidationGroup="dep" />
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
