<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsignmentBill.aspx.cs" Inherits="WebApp.ConsignmentBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="border-bottom-info" style="margin-bottom: 4%; padding-bottom: 2%; margin-top: 5% !important">
        Consignment Bill 
        <span style="float: right;">
            <a href="vehicleCrud" class="btn btn-primary btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-arrow-left"></i>
                </span>
                <span class="text">Go Back</span>
            </a>
        </span>
    </div>
    <asp:HiddenField runat="server" ID="hidId" />
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="txtPackageWeight">Package Weight</label>
            <asp:TextBox runat="server" ID="txtPackageWeight" class="form-control" placeholder="Package Weight"
                ClientIDMode="Static" ReadOnly="true"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="ddlPackageType">Package Type</label>
                <asp:DropDownList runat="server" ID="ddlPackageType" class="form-control" ClientIDMode="Static">
                    <asp:ListItem Value="" Text="--Select Package--"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Standard courier services"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Overnight service"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Same day express courier"></asp:ListItem>
                    <asp:ListItem Value="4" Text="International courier service"></asp:ListItem>
                    <asp:ListItem Value="5" Text="Pallet courier services"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group col-md-6">
            <label for="txtSenderAddress">Sender Address</label>
            <asp:TextBox runat="server" ID="txtSenderAddress" class="form-control" placeholder="Sender Address" TextMode="MultiLine"
                ClientIDMode="Static" ReadOnly="true">
            </asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label for="ddlSendCity">City</label>
            <asp:DropDownList ID="ddlSendCity" runat="server" CssClass="form-control" Enabled="false">
                <asp:ListItem Text="--Select city--" Value="0"></asp:ListItem>
                <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                <asp:ListItem Text="Coimbatore" Value="Coimbatore"></asp:ListItem>
                <asp:ListItem Text="Cochin" Value="Cochin"></asp:ListItem>
                <asp:ListItem Text="Tiruvananthapuram" Value="Tiruvananthapuram"></asp:ListItem>
                <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                <asp:ListItem Text="Kolkata" Value="Kolkata"></asp:ListItem>
                <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                <asp:ListItem Text="Pune" Value="Pune"></asp:ListItem>
                <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group col-md-6">
            <label for="txtReceiverAddress">Receiver Address</label>
            <asp:TextBox runat="server" ID="txtReceiverAddress" class="form-control" placeholder="Receiver Address" TextMode="MultiLine"
                ClientIDMode="Static" ReadOnly="true">
            </asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label for="ddlReceiveCity">City</label>
            <asp:DropDownList ID="ddlReceiveCity" runat="server" CssClass="form-control" Enabled="false">
                <asp:ListItem Text="--Select city--" Value="0"></asp:ListItem>
                <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                <asp:ListItem Text="Coimbatore" Value="Coimbatore"></asp:ListItem>
                <asp:ListItem Text="Cochin" Value="Cochin"></asp:ListItem>
                <asp:ListItem Text="Tiruvananthapuram" Value="Tiruvananthapuram"></asp:ListItem>
                <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                <asp:ListItem Text="Kolkata" Value="Kolkata"></asp:ListItem>
                <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                <asp:ListItem Text="Pune" Value="Pune"></asp:ListItem>
                <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
            </asp:DropDownList>
        </div>        

        <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-primary" />
    </div>
</asp:Content>
