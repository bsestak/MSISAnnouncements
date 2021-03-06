﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MSISDepartmentApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <script src="Scripts/app.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/AppCSS.css" rel="stylesheet" />
    <link href="Content/OSU1.css" rel="stylesheet" />
    <link href="Content/OSU2.css" rel="stylesheet" />
    <link href="Content/OSU3.css" rel="stylesheet" />
    <link href="Content/OSU4.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="manifest" href="manifest.json" />
    <%-- IOS support --%>
    <link rel="apple-touch-icon" href="/images/OSU_Icon_192.png" />
    <meta name="apple-moblie-web-app-status-bar" content="#Fe5c00" />
    <meta name="theme-color" content="#Fe5c00" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container nopadding">
            <div class="row">
                <div class="col-sm-12 nopadding">
                    <nav class="navbar navbar-expand-md navbar-dark cust-navbar fixed-top container">
                <%--<nav class="navbar navbar-expand-md bg-dark navbar-dark navbar-fixed-top container">--%>
                        <!-- Brand -->
                        <a class="navbar-brand" href="HOME.aspx">
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
                                    <a class="nav-link nav-text-color" id="AdminLink" href="NewEvent.aspx">Create Event</a>
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
            <div class="content-space"></div>
            <%-- <div class="row">
                <div class="col-sm-12">
                    <iframe class="span-viewport" src="https://calendar.google.com/calendar/embed?src=brady.sestak%40gmail.com&ctz=America%2FChicago"></iframe>
                </div>
            </div>--%>
            <div class="row">
                <div class="col-sm-12 span-viewport">
                    <asp:Calendar ID="EventsCalender" class="span-viewport" runat="server" BackColor="#C8C8C8"
                        BorderColor="#000000" BorderWidth="1px" DayNameFormat="Shortest"
                        Font-Names="Verdana" Font-Size="12pt" ForeColor="#000000"
                        OnDayRender="EventsCalender_DayRender" ShowGridLines="True" OnSelectionChanged="EventsCalender_SelectionChanged">
                        <DayHeaderStyle BackColor="#Fe5c00" Font-Bold="True" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#Fe5c00" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#Fe5c00" Font-Bold="True" Font-Size="15pt"
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#707070" ForeColor="White" />
                    </asp:Calendar>
                    <%--                    <asp:Calendar class="span-viewport" ID="EventsCalender" runat="server" OnSelectionChanged="EventsCalender_SelectionChanged" OnDayRender="EventsCalender_DayRender"></asp:Calendar>--%>
                </div>
            </div>
            <div class="row">
                <% foreach (var item in DayEvents)
                    { %>
                <div class="col-sm-12">
                    <span>
                        <%= item.Type %><!--The title from the tour -->
                    </span>
                    <p>
                        <%= item.Description %><!--The tour body -->
                    </p>
                    <hr />
                </div>
                <% } %>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
