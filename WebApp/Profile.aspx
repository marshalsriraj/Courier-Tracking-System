<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApp.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto" style="float:right;">
            <li class="nav-item">
                <a class="nav-link" href="Dashboard">Go Back</a>
            </li>
        </ul>
    </div>

    <div class="container" style="margin-top: 5% !important;">
        <div class="form-group row">
            <asp:Label runat="server" ID="lblUserFirstName" CssClass="col-md-4 col-form-label text-md-right">First Name</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" placeholder="First Name *"
                    ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label runat="server" ID="lblUserLastName" class="col-md-4 col-form-label text-md-right">Last Name</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"
                    placeholder="Last Name *" ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label runat="server" ID="lblUserEmail" class="col-md-4 col-form-label text-md-right">Email Id</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Id *"
                    ClientIDMode="Static" TextMode="Email"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label runat="server" ID="lblUserContactNumber" class="col-md-4 col-form-label text-md-right">Contact Number</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone"
                    placeholder="Contact Number *" ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row" style="visibility: hidden">
            <asp:Label runat="server" ID="lblUserCPassword" class="col-md-4 col-form-label text-md-right">Confirm Password</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtUserCPassword" runat="server" CssClass="form-control" TextMode="Password"
                    placeholder="Confirm Password *" ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label runat="server" ID="lblPerAddress" class="col-md-4 col-form-label text-md-right">Permanent Address</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtPerAddress" runat="server" CssClass="form-control" placeholder="Permanent Address "
                    ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label runat="server" ID="lblCorAddress" class="col-md-4 col-form-label text-md-right">Correspondence Address</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtCorAddress" runat="server" CssClass="form-control" placeholder="Correspondence Address *"
                    ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-6 offset-md-4">
            <asp:Button runat="server" ID="btnUpdate" Text="Update" ClientIDMode="Static" class="btn btn-primary" OnClick="btnUpdate_Click" />
        </div>

    </div>


    <%--<asp:GridView ID="gdvProfile" runat="server" AutoGenerateColumns="false" OnRowEditing="gdvProfile_RowEditing" 
        OnRowCancelingEdit="gdvProfile_RowCancelingEdit" OnRowUpdating="gdvProfile_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label ID="lblFname" runat="server" Text='<%# Eval("um_firstName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtFname" runat="server" Text='<%# Eval("um_firstName") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <asp:Label ID="lblLname" runat="server" Text='<%# Eval("um_lastName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLname" runat="server" Text='<%# Eval("um_lastName") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Label ID="lblPwd" runat="server" Text='<%# Eval("um_password") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPwd" runat="server" Text='<%# Eval("um_password") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="lblContact" runat="server" Text='<%# Eval("um_contact") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtContact" runat="server" Text='<%# Eval("um_contact") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Permanent Address">
                <ItemTemplate>
                    <asp:Label ID="lblPerAddress" runat="server" Text='<%# Eval("um_PerAddress") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPerAddress" runat="server" Text='<%# Eval("um_PerAddress") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Correspondence Address">
                <ItemTemplate>
                    <asp:Label ID="lblCorrAddress" runat="server" Text='<%# Eval("um_CorAddress") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCorrAddress" runat="server" Text='<%# Eval("um_CorAddress") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email ID">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("um_emailId") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("um_emailId") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ButtonType="Image" InsertImageUrl="Images/edit.png" ShowEditButton="true" HeaderText="Action" />
            <asp:CommandField ButtonType="Image" InsertImageUrl="Images/ok.png" ShowSelectButton="true" HeaderText="Action" />

        </Columns>
    </asp:GridView>--%>
</asp:Content>
