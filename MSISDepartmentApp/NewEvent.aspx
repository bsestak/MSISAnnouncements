<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewEvent.aspx.cs" Inherits="MSISDepartmentApp.NewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Event</title>
    <script src="Scripts/app.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/AppCSS.css" rel="stylesheet" />
    <link rel="manifest" href="manifest.json" />
    <link href="Content/OSU1.css" rel="stylesheet" />
    <link href="Content/OSU2.css" rel="stylesheet" />
    <link href="Content/OSU3.css" rel="stylesheet" />
    <link href="Content/OSU4.css" rel="stylesheet" />

    <link rel="manifest" href="manifest.json" />
        <%-- IOS support --%>
    <link rel="apple-touch-icon" href="/images/OSU_Icon_192.png" />
    <meta name="apple-moblie-web-app-status-bar" content="#AA7700" />
    <meta name="theme-color" content="#FFE1C4"/>
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
            <div class="row boxborder nopadding notop">
                <div class="col-sm-12">
                    <%-- First Name --%>
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:Label ID="lblMessage" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <%-- Type --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Type</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxType" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vailidatorFirst" runat="server" ErrorMessage="Please enter the event type" ControlToValidate="tboxType" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- Desc --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Description</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxDesc" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="LastValidator" runat="server" ErrorMessage="Please enter the event description" ControlToValidate="tboxDesc" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <%-- Date --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Date</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxDate" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ErrorMessage="Please enter the event date" ControlToValidate="tboxDate" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- color --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Color</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxColor" runat="server" TextMode="Color"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select a color for your event" ControlToValidate="tboxColor" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- Submit --%>
                        <div class="row">
                            <div class="col-sm-12 Submit-margin">
                                <asp:Button ID="BtnCreate" runat="server" Text="Submit" OnClick="BtnCreate_Click" CssClass="btn btn-primary orange" />
                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="row">
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
            </div>--%>
        </div>
    </form>
</body>
</html>
