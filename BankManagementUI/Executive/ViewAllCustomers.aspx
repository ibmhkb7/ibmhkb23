<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/ExecutiveMaster.Master" AutoEventWireup="true" CodeBehind="ViewAllCustomers.aspx.cs" Inherits="BankManagementUI.Executive.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <asp:TextBox id="txtSearch" class="form-control" runat="server" placeholder="Search by CustomerID" />
                    <span class="input-group-addon">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button  runat="server" id="btnButton" Text="Search " CssClass="btn btn-default" OnClick="btnButton_Click"> </asp:Button>  
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="btnButton" ErrorMessage="Customer SSNID should be minimum 9digits" ValidationExpression = "^[\s\S]{9,12}$" ForeColor="Red"></asp:RegularExpressionValidator>
                       
                    </span>
                </div>
               
            </div>
         
                        <asp:Button  runat="server" id="btnViewAll" Text="View All " CssClass="btn btn-default" OnClick="btnViewAll_Click"> </asp:Button>  
                           
                       
                    
        </div>
	</div> 
        
    <div class="container">
         
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
            <Columns>

                <asp:BoundField HeaderText="CustomerI ID" DataField="CustomerSSNID"></asp:BoundField>
                <asp:BoundField HeaderText="Customer Name" DataField="CustomerName"></asp:BoundField>
                 <asp:BoundField HeaderText="   Age  " DataField="Age"></asp:BoundField>
                <asp:TemplateField HeaderText="  Address  " >
                    <ItemTemplate>
                        <%# string.Format("{0} {1}", Eval("AddressLine1").ToString().Replace(Environment.NewLine, "<br/>"),Eval("AddressLine2"))%>
                       
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:BoundField HeaderText="State" DataField="State"></asp:BoundField>
                 <asp:BoundField HeaderText="City" DataField="City"></asp:BoundField>



            </Columns>
        </asp:GridView>
    </form>
        </div>
</asp:Content>
