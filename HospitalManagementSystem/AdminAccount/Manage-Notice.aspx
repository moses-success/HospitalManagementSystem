<%@ Page Title="Manage Notice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage-Notice.aspx.cs" Inherits="HospitalManagementSystem.AdminAccount.Manage_Notice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div id="wrapper">

                             <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">
               
                           <a class="logo" href="Default.aspx">
                    <img src="../assets/img/logo.png" />

                </a>
                 <ul class="nav" id="main-menu">

                    <li>
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
                    <li  class="active-link">
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
                    <h4 class="page-head-line">Manage Noticeboard
                        <span class="doctor">Doctor</span><span class="patient">Patient</span><span class="nurse">Nurse</span>
                        </h4>
                         
      <div class="panel panel-default">
                       <div class="panel-body">
                           <div class="navtab">
                              <ul class="nav nav-tabs">
                                <li class="active"><a href="#notice" data-toggle="tab" style="left: 0px; top: 0px; width: 290px"><i class="fa fa-navicon"></i> Noticeboard List</a>
                                </li>
                                <li class=""><a href="#Add-notice" data-toggle="tab"><i class="fa fa-plus"></i> Add Notice</a>
                                </li>
                               
                            </ul>
                               </div>

                           <div class="tab-content">
                                <div class="tab-pane fade active in " id="notice">
                                    
                                    <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>         
                                             <th style="width: 700px" >
                                                <div class="col-md-6"><asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" Width="300px" placeholder="search"></asp:TextBox>
                                                    </div>
                                                 <div class="col-md-6">
                                                <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary" Text="search" /></div>
                                           </th>
                                            
                                            <th>
                                               
                                            </th>
                                        </tr>
                                    </thead>
                                   
                                </table>
                                       <div class="col-lg-12 col-md-12">
                                           <asp:Label ID="Label1" runat="server"></asp:Label>
                                                 <asp:Label ID="successid" runat="server" ></asp:Label>

                                           <asp:GridView ID="NoticeGridView" runat="server" CssClass="table table-hover table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="NoticeSqlDataSource" BorderColor="#3366FF" OnRowUpdated="NoticeGridView_RowUpdated">
                                               <AlternatingRowStyle BackColor="White" />
                                               <Columns>
                                                 
                                                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"  DataFormatString="{0:d}"/>
                                                   <asp:BoundField DataField="Notice" HeaderText="Notice" SortExpression="Notice" />
                                                     <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                         <EditItemTemplate>
                                                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"  CommandName="Update"  CssClass="btn btn-primary"  Text="Update"></asp:LinkButton>
                                                             &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                         </EditItemTemplate>
                                                         <ItemTemplate>
                                                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                             &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"  OnClientClick="return confirm('Are You Sure To Delete');" CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
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


                                           <asp:SqlDataSource ID="NoticeSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_NoticeBoard] WHERE [Id] = @original_Id AND [Title] = @original_Title AND [Date] = @original_Date AND [Notice] = @original_Notice" 
                                                OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_NoticeBoard]" UpdateCommand="UPDATE [tbl_NoticeBoard] SET [Title] = @Title, [Date] = @Date, [Notice] = @Notice WHERE [Id] = @original_Id AND [Title] = @original_Title AND [Date] = @original_Date AND [Notice] = @original_Notice" InsertCommand="INSERT INTO [tbl_NoticeBoard] ([Title], [Date], [Notice]) VALUES (@Title, @Date, @Notice)">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="original_Id" Type="Int32" />
                                                   <asp:Parameter Name="original_Title" Type="String" />
                                                   <asp:Parameter Name="original_Date" DbType="Date" />
                                                   <asp:Parameter Name="original_Notice" Type="String" />
                                               </DeleteParameters>
                                               
                                               <InsertParameters>
                                                   <asp:Parameter Name="Title" Type="String" />
                                                   <asp:Parameter DbType="Date" Name="Date" />
                                                   <asp:Parameter Name="Notice" Type="String" />
                                               </InsertParameters>
                                               
                                               <UpdateParameters>
                                                   <asp:Parameter Name="Title" Type="String" />
                                                   <asp:Parameter Name="Date" DbType="Date" />
                                                   <asp:Parameter Name="Notice" Type="String" />
                                                   <asp:Parameter Name="original_Id" Type="Int32" />
                                                   <asp:Parameter Name="original_Title" Type="String" />
                                                   <asp:Parameter Name="original_Date" DbType="Date" />
                                                   <asp:Parameter Name="original_Notice" Type="String" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>

                                       </div>
                            </div>
                                    
                                    </div>


                               <div class="tab-pane fade " id="Add-notice">
                                   <br />
                                    <br />
                                   <div class="panel panel-primary">
                                   <div class="panel-body">
                                 
                                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" forecolor="red"/>
                                       <br />
                                       
                                       <asp:TextBox runat="server" ID="titletxt" CssClass="form-control" placeholder="Title" Width="600px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="titlevalidator" runat="server" ForeColor="Red" ErrorMessage="Title Required" ControlToValidate="titletxt" ValidationGroup="note"></asp:RequiredFieldValidator>
                                       <br />

                                       <asp:Label ID="labeldept" runat="server" class="labeldept" Text=" Date :" Font-Bold="True" Font-Size="15pt" ForeColor="#0099CC"></asp:Label> 
                                       
                                        <asp:TextBox runat="server" ID="datetxt" CssClass="form-control" placeholder="Date" Width="600px" Height="35px" TextMode="Date"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Date Required" ControlToValidate="datetxt" ValidationGroup="note"></asp:RequiredFieldValidator>

                                      
                                       <br />
                                        <asp:TextBox runat="server" ID="noticetxt" CssClass="form-control" placeholder="Notice" Width="600px" TextMode="MultiLine"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Notice Required" ControlToValidate="noticetxt" ValidationGroup="note"></asp:RequiredFieldValidator>

                                       <br />
                                      
                                       
                                       <br />
                                       <div class="panel-footer">
                                       <asp:Button runat="server" ID="addnotice" CssClass="btn btn-primary" text="Add Notice" Width="250px" OnClick="addnotice_Click" ValidationGroup="note"/>
                                           </div>
                                    </div>
                        </div>
                            
                         </div>




   </div>             </div>
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
