<%@ Page Title="" Language="C#" MasterPageFile="~/Cashier/CashierMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BankManagementUI.Cashier.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1> Hello cashier. . </h1>
     <br/>   <br/>
   <div class="col-md-6 col-sm-9 col-xs-12">
  <button type="button" class="btn btn-primary">Create Customer</button>
 
    
 <button type="button" class="btn btn-primary" >Delete Customer</button><br />
       <br />
   
       
   
<button type="button" class="btn btn-primary" >Update Customer</button>
    
     
<button type="button" class="btn btn-primary" >Create And Delete Account</button>

    <br/>
       <br/>
<button type="button" class="btn btn-primary" >View Customer And Account Status</button>
    </div>   
       

     <p> </p>
</asp:Content>
