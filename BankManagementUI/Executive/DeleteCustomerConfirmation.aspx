<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/ExecutiveMaster.Master" AutoEventWireup="true" CodeBehind="DeleteCustomerConfirmation.aspx.cs" Inherits="BankManagementUI.Executive.DeleteCustomerConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID :"></asp:Label>
          <br />
         <asp:Label ID="lblCustometName" runat="server" Text="Customer Name"></asp:Label>
         <br />
         <asp:Label ID="lblAge" runat="server" Text="Age :"></asp:Label>
         <br />
         <asp:Label ID="lblAddress" runat="server" Text="Address "></asp:Label>
        <br />
         <asp:Label ID="lblStatus" runat="server" Text="Status : "></asp:Label>
       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>
