<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="MSISDepartmentApp.pages.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account</title>
    <script src="Scripts/app.js"></script>
    <script src="../Scripts/jquery-3.4.1.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

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
                        <%-- First Name --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">First Name</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxFirstName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vailidatorFirst" runat="server" ErrorMessage="Please enter your firstname" ControlToValidate="tboxFirstName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- Last Name --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Last Name</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxLastname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="LastValidator" runat="server" ErrorMessage="Please enter your lastname" ControlToValidate="tboxLastName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- UserName --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">UserName</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxUsername" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ErrorMessage="Please enter your username" ControlToValidate="tboxUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- Password --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="right-margin">Password</p>
                                <asp:TextBox CssClass="contact-text form-control" ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tboxPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <%-- IsAdmin --%>
                        <%--<div class="row">
                            <div class="col-sm-2">
                                <p class="right-margin">Admin</p>
                            </div>
                            <div class="col-sm-10">
                                <asp:CheckBox CssClass="larger-checkbox" ID="CboxAdmin" runat="server" />
                            </div>
                        </div>--%>
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
        </div>
    </form>
</body>
</html>
