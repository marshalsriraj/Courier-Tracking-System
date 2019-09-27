<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApp.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="UpdateStatus" margin-top: 5% !important">

        <asp:GridView runat="server" ID="gdvApprovalData" class="table table-responsive" AutoGenerateColumns="false" 
            OnRowCommand="gdvApprovalData_RowCommand" OnRowDataBound="gdvApprovalData_RowDataBound">

            <Columns>
                <asp:TemplateField HeaderText="Consignment ID">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblcnsngId" Text='<%#Eval("pk_consignment_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package Weight">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblpkWeight" Text='<%#Eval("pk_Package_weight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sender Address">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblSendAddress" Text='<%#Eval("pk_Sender_address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Receiver Address">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblReceiverAddress" Text='<%#Eval("pk_Receiver_address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Package Type">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblPkType" Text='<%#Eval("pk_package_type")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Cost">
                    <ItemTemplate>
                        <asp:TextBox runat="server" ID="txtPkCost" Text='<%#Eval("pk_cost")%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Current location">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlLocation" runat="server">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Value="Rejected" Text="Rejected"></asp:ListItem>
                            <asp:ListItem Value="Booked" Text="Booked"></asp:ListItem>
                            <asp:ListItem Value="In Transit" Text="In Transit"></asp:ListItem>
                            <asp:ListItem Value="Delivered" Text="Delivered"></asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>                

                <asp:ButtonField HeaderText="Approve" ButtonType="Image" ImageUrl="Images/ok.png" CommandName="approve"/>

            </Columns>
        </asp:GridView>


    </div>
</asp:Content>
