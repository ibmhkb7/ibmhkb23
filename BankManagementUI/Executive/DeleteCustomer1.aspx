<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/ExecutiveMaster.Master" AutoEventWireup="true" CodeBehind="DeleteCustomer1.aspx.cs" Inherits="BankManagementUI.Executive.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Delete Customer
    <form name="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="5"   OnPageIndexChanging="GridView1_PageIndexChanging"  OnRowCommand="GridView1_RowCommand"  >
         <Columns>
            <asp:BoundField HeaderText="Customer_SSN_ID" DataField="CustomerSSNID" />
            <asp:BoundField HeaderText="CustomerName" DataField="CustomerName" />
            <asp:BoundField HeaderText="Age" DataField="Age"/>
            <asp:BoundField HeaderText="AddressLine1" DataField="AddressLine1"/>
            <asp:BoundField HeaderText="AddressLine2" DataField="AddressLine2"/>
            <asp:BoundField HeaderText="City" DataField="City" />
             <asp:BoundField HeaderText="State" DataField="State" />
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="cmddelete" CssClass="btn btn-default" Text="Edit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  >Delete</asp:LinkButton>
                     <asp:LinkButton ID="lnkEdit" runat="server" CommandName="cmdedit" CssClass="btn btn-default" >Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </form>
</asp:Content>
