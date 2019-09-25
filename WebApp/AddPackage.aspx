<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="WebApp.AddPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">  
    <div class="border-bottom-info" style="margin-bottom: 4%; padding-bottom: 2%;">
        Add Package 
        <span style="float:right;">
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
            <label for="inputEmail4">Package Weight</label>
            <asp:TextBox runat="server" ID="txtPackageWeight" class="form-control" placeholder="Package Weight" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Sender Address</label>
            <asp:TextBox runat="server" ID="txtSenderAddress" class="form-control" placeholder="Sender Address" TextMode="MultiLine" ClientIDMode="Static">
            </asp:TextBox>
        </div>
         <div class="form-group col-md-6">
            <label for="inputPassword4">Receiver Address</label>
            <asp:TextBox runat="server" ID="txtReceiverAddress" class="form-control" placeholder="Receiver Address" TextMode="MultiLine" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAddress">Package Type</label>
            <asp:DropDownList runat="server" ID="ddlPackageType" class="form-control" ClientIDMode="Static">
                <asp:ListItem Value="" Text="--select--"></asp:ListItem>
                <asp:ListItem Value="1" Text="Standard courier services"></asp:ListItem>
                <asp:ListItem Value="2" Text="Overnight service"></asp:ListItem>
                <asp:ListItem Value="3" Text="Same day express courier"></asp:ListItem>
                <asp:ListItem Value="4" Text="International courier service"></asp:ListItem>
                <asp:ListItem Value="5" Text="Pallet courier services"></asp:ListItem>
            </asp:DropDownList>
        </div>
        
    <%-- <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputPassword4">Price Per Day</label>
            <asp:TextBox runat="server" ID="txtPriceperDay" placeholder="Price/Day" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Insurance Expiry Date</label>
            <asp:TextBox runat="server" ID="txtInsuranceExpiryDate" placeholder="Insurance Expiry Date" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Last Serviced Date</label>
            <asp:TextBox runat="server" ID="txtLastServicedDate" class="form-control" placeholder="Service Date" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Service Due Date</label>
            <asp:TextBox runat="server" ID="txtServiceDueDate" class="form-control" placeholder="Due Date" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>   
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                Agree <a href="#">Terms & Conditions</a>
            </label>
        </div>
    </div>--%>
    <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-primary"  OnClick="btnSubmit_Click"/>    
</asp:Content>
