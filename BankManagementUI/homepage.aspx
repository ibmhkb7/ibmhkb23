<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="BankManagementUI.homepage" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing:border-box}
body {
    font-family: Verdana,sans-serif;
    background-color:#bbb;
}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin:10px;
  max-width:100%;
  
  border-bottom-left-radius:20px;
  border-bottom-right-radius:20px;
  border-top-left-radius:20px;
    border-top-right-radius:20px;
}
.button {
    border-style: none;
        border-color: inherit;
        /*//border-width: medium;*/
        background-color: #000000; /* Green */
        color:#f8f5f5;
        padding: 15px 32px;
    text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
    /*margin: 4px 2px 4px 0px;*/
        cursor: pointer;
      max-width: 1000px;
}
.button4 {border-radius: 12px;
            max-width: 1000px;
}
/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  text-align: center;

}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<html>
    <head runat="server">
       
        <title></title>
        
        </head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1>  <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></h1>
        <asp:Button ID="btnMessage" runat="server" Text="" OnClick="Button2_Click" class="button button4" Width="930px"/>
         <br />
        <br />
    </div>
        <div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/honduras-banking.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/piggybank.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/o-ONLINE-BANKING-facebook.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
