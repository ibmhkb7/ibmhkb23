<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/ExecutiveMaster.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="BankManagementUI.Executive.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <form runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="container">
        <div class="col-md-6 col-sm-9 col-xs-12">
        <fieldset>
            <legend>Customer Registration</legend>
           
             <div class="form-group">
                <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name"></asp:Label>
                <asp:TextBox ID="txtCustomerName" CssClass="form-control" runat="server"   maxlength="30" pattern="[a-zA-Z\s]+"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Mandatory" ControlToValidate="txtCustomerName" ForeColor="Red"></asp:RequiredFieldValidator>
             
            </div>
             <div class="form-group">
                <asp:Label ID="lblDate" runat="server" Text="Date of Birth (yyyy-mm-dd)"></asp:Label>
                <asp:TextBox ID="txtDate" CssClass="form-control" runat="server"   ></asp:TextBox>
                 
            </div>
             <div class="form-group">
                <asp:Label ID="lblAddress1" runat="server" Text="Address Line1" ></asp:Label>
                <asp:TextBox ID="txtAddress1" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is Mandatory" ControlToValidate="txtAddress1" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server"></asp:UpdatePanel>
                <asp:Label ID="lblAddress2" runat="server" Text="Address Line2" ></asp:Label>
                <asp:TextBox ID="txtAddress2" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                
            </div>
             <div class="form-group">
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                 <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control"  AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"  Width="280px" Height="34px"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlState" ErrorMessage="Please make a selection" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
                <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
               <asp:DropDownList ID="ddlCity" runat="server"  Width="280px" CssClass="form-control"  AutoPostBack="true" ></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlCity" ErrorMessage="Please make a selection" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                <asp:Button ID="CustomerAdd" runat="server" Text="ADD CUSTOMER" CssClass=" btn btn-danger" OnClick="CustomerAdd_Click" />
                  <br />
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server"   DisplayMode ="BulletList" ShowSummary ="true" HeaderText="Errors:"  ForeColor="Red"/>
            </div>
            <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
</fieldset>
            </div>
             </div>
        </form>
           
</asp:Content>
