<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankManagementUI.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Hanumanth" />
    <link rel="shortcut icon" href="http://getbootstrap.com/docs-assets/ico/favicon.png" />

    <title>Login</title>

   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#E5E7E9  ">
        <div class="container" >
               <h3> Hello. .<label></label></h3>
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" style="background-color:#566573  ">
                    <div class="panel-heading">
                        <div class="panel-title" style="font-weight:bold">Login Please</div>

                    </div>

                    <div style="padding-top: 30px" class="panel-body">

                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="loginform" class="form-horizontal" role="form" runat="server">

                            <div style="margin-bottom: 25px" class="input-group">
                             
                                <asp:Textbox id="txtUsername" class="form-control" name="username" value="" placeholder="USERNAME" runat="server"  />&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User  Name Required" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="User Name should be minimum of 8 characters" ControlToValidate="txtUsername" ValidationExpression = "^[\s\S]{8,20}$" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                               
                                <asp:Textbox id="txtPassword"  class="form-control" name="password" TextMode="Password" placeholder="PASSWORD" runat="server" />
                             
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should be minimum of 10 characters" ValidationExpression = "^[\s\S]{10,20}$" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                                <div style="margin-top:5px" class="form-group">
                                    <div class="col-sm-12 controls">
                                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success center-block" Text="LOGIN" OnClick="btnLogin_Click" />
                                    </div>
                                </div>
                        </form>

                    </div>
                </div>
            </div>

        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</body>
</html>