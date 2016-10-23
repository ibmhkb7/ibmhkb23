<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCustomer.aspx.cs" Inherits="BankManagementUI.DeleteCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <div class="col-md-6 col-sm-9 col-xs-12">
        <fieldset>
            <legend>Customer Details</legend>

           
             <div class="form-group">
                <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name"></asp:Label>
                <asp:TextBox ID="txtCustomerName" CssClass="form-control" runat="server"></asp:TextBox>
                 <br />
                 <br />
            </div>
            <div class="form-group">
                <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="txtAge" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
             <div class="form-group">
                <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1"></asp:Label>
                <asp:TextBox ID="txtAddressLine1" CssClass="form-control" runat="server"></asp:TextBox>
                 <br />
                 <br />
            </div>
            <div class="form-group">
                <asp:Label ID="lblAddress2" runat="server" Text="Address Line2"></asp:Label>
                <asp:TextBox ID="txtAddress2" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
            <div class="form-group">
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="4">Kerala</asp:ListItem>
                    <asp:ListItem Value="2">Chennai</asp:ListItem>
                    <asp:ListItem Value="3">Karnataka</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </div>
            <div class="form-group">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
               <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control"  AutoPostBack="true" ></asp:DropDownList>
               
                <br />
                <br />
               
            </div>
            <div class="form-group">
                <asp:Button ID="Delete" runat="server" Text="Delete"  />
            </div>
</fieldset>
            </div>
            




    </form>
</body>
</html>
