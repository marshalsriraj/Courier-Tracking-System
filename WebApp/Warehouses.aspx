<%@ Page Title="ABC Courier Services - Warehouses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Warehouses.aspx.cs" Inherits="WebApp.Warehouses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin-top: 5% !important; text-align: center">

        <asp:GridView ID="gdvWarehouse" runat="server" AutoGenerateColumns="false">
            <Columns>

                <asp:TemplateField HeaderText="Warehouse location">
                    <ItemTemplate>
                        <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("bm_branchName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="No. of orders">
                    <ItemTemplate>
                        <asp:Label ID="lblOrders" runat="server" Text='<%# Eval("bm_orders") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <a href="#" onclick="return warehouseAdd()">Add</a>        
        <br />
        <br />
        <asp:Button ID="btnAddRow" runat="server" OnClick="btnAddRow_Click" Text="Add Row" />
        <br />

        <div id="warehouseAdd" style="display:none;">
            <div class="form-group row">
                <asp:Label runat="server" ID="lblUserFirstName" CssClass="col-md-4 col-form-label text-md-right">Warehouse Name</asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="txtWname" runat="server" CssClass="form-control" placeholder="Warehouse Name *"
                     ClientIDMode="Static"></asp:TextBox>
                </div>
            </div>
        </div>

        <%--<div class="form-group row">
            <asp:Label runat="server" ID="Label1" CssClass="col-md-4 col-form-label text-md-right">Orders in the warehouse</asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Warehouse Name *"
                    ClientIDMode="Static"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-6 offset-md-4">
            <asp:Button runat="server" ID="btnUpdate" Text="Add" ClientIDMode="Static" class="btn btn-primary" OnClick="btnUpdate_Click" />
        </div>--%>

    </div>
</asp:Content>
