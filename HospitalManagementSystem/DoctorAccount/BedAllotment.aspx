<%@ Page Title="Bed Allotment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BedAllotment.aspx.cs" Inherits="HospitalManagementSystem.BedAllotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div id="wrapper">

        <nav class="navbar navbar-side" role="navigation">
            <div class="sidebar-collapse">

                <a id="logo" href="Default.aspx">
                      <img src="../assets/img/Logo1.jpg" />

                </a>


                <ul class="nav" id="main-menu">

                    <li>
                        <hr />
                        <a href="DocDashBoard.aspx">
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
                    <li class="active-link">
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
                        <h4 class="page-head-line">Manage Bed Allotment
                      
                        </h4>

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="navtab">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#bedallotment" data-toggle="tab" style="left: 0px; top: 0px; width: 306px"><i class="fa fa-navicon"></i>Bed Allotment List</a>
                                        </li>
                                        <li class=""><a href="#Add-bedallotment" data-toggle="tab" style="left: 0px; top: 0px; width: 306px"><i class="fa fa-plus"></i>Add Bed Allotment</a>
                                        </li>

                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="bedallotment">

                                        <div class="table-responsive">
                                            <br />

                                            <div class="table-responsive">


                                                <div class="col-lg-12 col-md-12">
                                                    <asp:Label ID="successid" runat="server" Width="500px"></asp:Label>
                                                    <br />
                                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                            <asp:BoundField DataField="PatientName" HeaderText="Patient Name" SortExpression="PatientName" />
                                                            <asp:BoundField DataField="BedNumber" HeaderText="Bed Number" SortExpression="BedNumber" />
                                                            <asp:BoundField DataField="Allotment" HeaderText="Allotment" SortExpression="Allotment" DataFormatString="{0:D}" />
                                                            <asp:BoundField DataField="Discharge" HeaderText="Discharge" SortExpression="Discharge" DataFormatString="{0:D}" />
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


                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:AllConnection %>" DeleteCommand="DELETE FROM [tbl_Bedallotment] WHERE [Id] = @original_Id AND [PatientName] = @original_PatientName AND [BedNumber] = @original_BedNumber AND [Allotment] = @original_Allotment AND [Discharge] = @original_Discharge" InsertCommand="INSERT INTO [tbl_Bedallotment] ([PatientName], [BedNumber], [Allotment], [Discharge]) VALUES (@PatientName, @BedNumber, @Allotment, @Discharge)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Bedallotment]" UpdateCommand="UPDATE [tbl_Bedallotment] SET [PatientName] = @PatientName, [BedNumber] = @BedNumber, [Allotment] = @Allotment, [Discharge] = @Discharge WHERE [Id] = @original_Id AND [PatientName] = @original_PatientName AND [BedNumber] = @original_BedNumber AND [Allotment] = @original_Allotment AND [Discharge] = @original_Discharge">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="original_Id" Type="Int32" />
                                                            <asp:Parameter Name="original_PatientName" Type="String" />
                                                            <asp:Parameter Name="original_BedNumber" Type="String" />
                                                            <asp:Parameter Name="original_Allotment" Type="String" />
                                                            <asp:Parameter Name="original_Discharge" Type="String" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:Parameter Name="PatientName" Type="String" />
                                                            <asp:Parameter Name="BedNumber" Type="String" />
                                                            <asp:Parameter Name="Allotment" Type="String" />
                                                            <asp:Parameter Name="Discharge" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="PatientName" Type="String" />
                                                            <asp:Parameter Name="BedNumber" Type="String" />
                                                            <asp:Parameter Name="Allotment" Type="String" />
                                                            <asp:Parameter Name="Discharge" Type="String" />
                                                            <asp:Parameter Name="original_Id" Type="Int32" />
                                                            <asp:Parameter Name="original_PatientName" Type="String" />
                                                            <asp:Parameter Name="original_BedNumber" Type="String" />
                                                            <asp:Parameter Name="original_Allotment" Type="String" />
                                                            <asp:Parameter Name="original_Discharge" Type="String" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </div>

                                            </div>

                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="Add-bedallotment">
                                        <br />

                                        <div class="panel panel-primary">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" ForeColor="Red" ToolTip="Error Messages" />
                                            <div class="panel-body">

                                                <br />
                                                <asp:Label ID="labeldept" runat="server" class="labelpat" Text="Patient Name:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ToolTip="Patient Name" ID="patientnametxt" Width="300px" DataSourceID="SqlDataSource1" DataTextField="PatientName" DataValueField="PatientName">
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AllConnection %>" SelectCommand="SELECT [PatientName] FROM [tbl_Patient]"></asp:SqlDataSource>
                                                <br />
                                                <asp:Label ID="labelbed" runat="server" class="labelpat" Text="Bed Number:" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="Bedtxt" Width="300px">
                                                    <asp:ListItem>1-ward</asp:ListItem>
                                                    <asp:ListItem>2-ward</asp:ListItem>
                                                    <asp:ListItem>3-ward</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="labelallot" runat="server" class="labeldept" Text=" Allomtment Date :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:TextBox runat="server" ID="alldatetxt" CssClass="form-control" TextMode="Date" Width="600px" Height="30px" ValidationGroup="allotment"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="requiredField" runat="server" ForeColor="Red" ControlToValidate="alldatetxt" ErrorMessage="Allomtment Date Required" ValidationGroup="allotment"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:Label ID="labeldis" runat="server" class="labeldept" Text=" Discharge Date :" Font-Bold="True"
                                                    Font-Size="15pt" ForeColor="#1b9703"></asp:Label>
                                                <asp:TextBox runat="server" ID="desdatetxt" CssClass="form-control" TextMode="Date" Width="600px" Height="30px" ValidationGroup="allotment"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="desdatetxt" ErrorMessage="Allomtment Date Required" ValidationGroup="allotment"></asp:RequiredFieldValidator>

                                                <br />

                                                <div class="panel-footer">
                                                    <asp:Button runat="server" ID="addBedallotment" CssClass="btn btn-primary" Text="Add Bed Allotment" Width="250px" OnClick="addBedallotment_Click" ValidationGroup="allotment" />
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
