<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApprovePackages.aspx.cs" Inherits="WebApp.ApprovePackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="container" style="margin-top:5% !important;">
        <asp:GridView runat="server" ID="gdvApprovalData" class="table table-responsive" AutoGenerateColumns="false"
            OnRowCommand="gdvApprovalData_RowCommand">

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
                <asp:ButtonField HeaderText="Approve" ButtonType="Image" ImageUrl="Images/ok.png" CommandName="approve"/>
                <asp:ButtonField HeaderText="Reject" ButtonType="Image" ImageUrl="Images/delete.png" CommandName="reject"/>                
                </Columns>
        </asp:GridView>
    </div>
</asp:Content>
