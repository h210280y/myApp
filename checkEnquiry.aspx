﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkEnquiry.aspx.cs" Inherits="WebApplication3.checkEnquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content=""/>
  <meta property="og:image" content=""/>
  <meta name="twitter:title" content="Home"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>
  <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon"/>
  <meta name="description" content=""/> 
  
  <title>Enquiries</title>

  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css"/>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css"/>
  <link rel="stylesheet" href="style.css"/>
  <link rel="preload" as="style" href="assets/bootstrap/css/mbr-additional.css"/>
   <link rel="stylesheet" href="assets/bootstrap/css/mbr-additional.css" type="text/css"/>
  
</head>
<body>

    <section data-bs-version="5.1" class="menu cid-s48OLK6784" once="menu" id="menu1-h">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.html">
                        <img src="assets/images/hp_250.jpg" alt="Go to home page" style="height: 3.8rem;"/>
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-black display-7" href="default.aspx">Spiders Technologies</a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="products.aspx">Products</a></li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="pricing.aspx">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="about.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="QN1.aspx">Question 1</a></li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="enquiries.aspx">Enquiries</a></li>
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="login.aspx">Login</a></li>
                </ul>
                
            </div>
        </div>
    </nav>

</section>

<section data-bs-version="5.1" class="content1 cid-s48udlf8KU" id="content1-8"> 
<div class="container">
    <form action="checkEnquiry.aspx" method="post" id="enquiries" runat="server">
        <h1 class="mbr-section-title mbr-fonts-style mb-3 display-2"><strong>Enquiries</strong></h1>

        <div class="field">
            <label for="myName" class="mbr-text mbr-fonts-style display-7">Name:</label>
            <input type="text" runat="server" id="myName" name="myName" placeholder="Enter your fullname" class="mbr-text mbr-fonts-style display-7"/>
            <small></small>
        </div>

        <div class="field">
            <label for="myNumber" class="mbr-text mbr-fonts-style display-7">Number:</label>
            <input type="text" runat="server" id="myNumber" name="myNumber" placeholder="Enter your number" class="mbr-text mbr-fonts-style display-7"/>
            <small></small>
        </div>

        <div class="field">
            <label for="myEmail" class="mbr-text mbr-fonts-style display-7">Email:</label>
            <input type="text" runat="server" id="myEmail" name="myEmail" placeholder="Enter your email address" class="mbr-text mbr-fonts-style display-7"/>
            <small></small>
        </div>

        <div class="field">
            <label for="myEnquiry" class="mbr-text mbr-fonts-style display-7" id="lblEnquiry" visible="false">Enquiry:</label>
            <textarea id="myEnquiry" runat="server" name="myEnquiry" placeholder="" rows="6" class="mbr-text mbr-fonts-style display-7" visible="False"></textarea>
            <small></small>
        </div>

        <div class="field">
            <label for="myResponse" class="mbr-text mbr-fonts-style display-7" id="lblResponse" visible="false">Response:</label>
            <textarea id="myResponse" runat="server" name="myResponse" placeholder="" rows="6" class="mbr-text mbr-fonts-style display-7" visible="False"></textarea>
            <small></small>
        </div>

        <div class="field">
        <div class="mbr-section-btn"><
            <asp:button runat="server" type="submit" class="btn btn-success display-4" id="btnGetEnquiry" Text="Retrieve Enquiry" OnClick="btnGetEnquiry_Click"></asp:button>
       
        </div>
            <p></p>
            <p></p>
            <div class="mbr-text display-7">
                <asp:label runat="server" for="myResult" id="myResult" ForeColor="Red"></asp:label>
            </div>
    </div>

    </form>
</div>

<!---<script src="validation.js"></script> -->
</section>

<section data-bs-version="5.1" class="footer3 cid-s48P1Icc8J" once="footers" id="footer3-i">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                    &copy;Copyright 2022 Spiders Technologies. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</section> 
  
</body>
</html>
