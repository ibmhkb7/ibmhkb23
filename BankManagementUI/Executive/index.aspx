<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/ExecutiveMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BankManagementUI.Executive.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        function toggleClock() { 
    // get the clock 
    var myClock = document.getElementById('clock');
	var myClock2 = document.getElementById('login');

    // get the current value of the clock's display property 
    var displaySetting = myClock.style.display;

    // also get the clock button, so we can change what it says 
    var clockButton = document.getElementById('reg');
	
				
    // now toggle the clock and the button text, depending on current state
    if (displaySetting == 'none') { 
      // clock is visible. hide it
      myClock.style.display = 'block';
	   myClock2.style.display='none 			'
     
    }
  }  
  function toggleClock2() { 
    // get the clock 
    var myClock = document.getElementById('login');
	var myClock2 = document.getElementById('clock');

    // get the current value of the clock's display property 
    var displaySetting = myClock.style.display;

    // also get the clock button, so we can change what it says 
    var clockButton = document.getElementById('reg');
	
				
    // now toggle the clock and the button text, depending on current state
    if (displaySetting == 'none') { 
      // clock is visible. hide it
      myClock.style.display = 'block';
	   myClock2.style.display='none 			'
     
    }
  }
  
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="#"  class="active" onclick="toggleClock()" id="reg" style="font-size:large;color:#DCDCDC">Customer</a>


                            </div>
                            <div class="col-xs-6">
                                <a href="#" class="active" onclick="toggleClock2()" id="login2" style="font-size:large;color:#DCDCDC">Account</a>

                            </div>

                        </div>
                        <hr>
                    </div>
                    <div class="panel-body" >
                        <div class="row">
                            <div class="col-lg-12">

                                <form id="login" action="login.php" method="post" role="form" style="display: none;" class="hkb">
                                   <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="button" name="CreateAccount" id="CreateAccount" tabindex="4" class="form-control btn btn-register" value="CreateAccount"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="button" name="DeleteAccount" id="DeteleAccount" tabindex="4" class="form-control btn btn-register" value="DeleteAccount"/>
                                                </div>
                                            </div>
                                        </div>

                                    <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="button" name="UpadteAccount" id="UpdateAccount" tabindex="4" class="form-control btn btn-register" value="UpdateAccount"/>
                                                </div>
                                            </div>
                                        </div>

                                    <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="button" name="ViewAccount" id="ViewAccount" tabindex="4" class="form-control btn btn-register" value="ViewAccount"/>
                                                </div>
                                            </div>
                                        </div>
                                </form>
                               
                                    <form   id="clock" action="logsign.php" data-toggle="validator" method="post" role="form" style="display: block;">
                                         <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                   <a href="AddCustomer.aspx"> <input type="button" name="CreateCustomer" id="CreateCustomer" tabindex="4" class="form-control btn btn-register" value="CreateCustomer"/></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                   <a href="DeleteCustomer1.aspx">  <input type="button" name="DeleteCustomer" id="DeleteCustomer" tabindex="4" class="form-control btn btn-register" value="DeleteCustomer"/></a>
                                                </div>
                                            </div>
                                        </div>

                                         <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <a href="ViewCustomerStatus.aspx"> <input type="button" name="ViewCustomerStatus" id="ViewCustomerStatus" tabindex="4" class="form-control btn btn-register" value="ViewCustomerStatus"/></a>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <a href="UpdateCustomer.aspx">  <input type="button" name="UpdateCustomer" id="UpdateCustomer" tabindex="4" class="form-control btn btn-register" value="UpdateCustomer"/></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <a href="SearchCust.aspx">  <input type="button" name="SearchCustomer" id="SearchCustomer" tabindex="4" class="form-control btn btn-register" value="SearchCustomer"/>
                                                </div>
                                            </div>
                                        </div>
                                        
										
                                    </form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    
     



</asp:Content>
