﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewEvent.aspx.cs" Inherits="MSISDepartmentApp.NewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Event</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/AppCSS.css" rel="stylesheet" />
    <link rel="manifest" href="manifest.json" />
    <link href="Content/OSU1.css" rel="stylesheet" />
    <link href="Content/OSU2.css" rel="stylesheet" />
    <link href="Content/OSU3.css" rel="stylesheet" />
    <link href="Content/OSU4.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container nopadding">
            <div class="row">
                <div class="col-sm-12 nopadding">
                    <nav class="navbar navbar-expand-md cust-navbar fixed-top container">
                        <!-- Brand -->
                        <a class="navbar-brand" href="HOME.aspx">
                            <%--<img src="../images/Cookie%20Street%20Logo.jpg" class="logo" />--%>
                            <img src="images/OSULogo.png" class="logo2" />
                        </a>

                        <!-- Toggler/collapsibe Button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <!-- Navbar links -->
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <%if (Params.IsLoggedIn)
                                        { %>
                                    <a class="nav-link nav-text-color" id="AdminLink" href="SignOut.aspx">Sign Out</a>
                                    <% }
                                        else
                                        { %>
                                    <a class="nav-link nav-text-color" id="LoginLink" href="SignIn.aspx">Sign In</a>
                                    <%} %>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="content-space">
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label>Type</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtBoxType" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label>Description</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtBoxDesc" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label>Date</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtBoxDate" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label>Color</label>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="txboxColor" runat="server" TextMode="Color"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <label>Color</label>
                </div>
                <div class="col-sm-6">
                    <asp:Button ID="btnCreate" Text="Create" runat="server" OnClick="btnCreate_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
