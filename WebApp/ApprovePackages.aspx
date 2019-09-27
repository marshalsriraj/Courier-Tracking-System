<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApprovePackages.aspx.cs" Inherits="WebApp.ApprovePackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top: 5% !important;">
        <asp:GridView runat="server" ID="gdvApprovalData" class="table table-responsive" AutoGenerateColumns="false"
            OnRowCommand="gdvApprovalData_RowCommand" OnRowDataBound="GridView1_RowDataBound">

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
                        <asp:TextBox runat="server" ID="txtPkCost"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Current location">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlLocation" runat="server">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status" Visible="false">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Value="Rejected" Text="Rejected"></asp:ListItem>
                            <asp:ListItem Value="Booked" Text="Booked"></asp:ListItem>
                            <asp:ListItem Value="In Transit" Text="In Transit"></asp:ListItem>
                            <asp:ListItem Value="Delivered" Text="Delivered"></asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:ButtonField HeaderText="Approve" ButtonType="Image" ImageUrl="Images/ok.png" CommandName="approve" />
                <asp:ButtonField HeaderText="Reject" ButtonType="Image" ImageUrl="Images/delete.png" CommandName="reject" />
            </Columns>
        </asp:GridView>        
    </div>
</asp:Content>
