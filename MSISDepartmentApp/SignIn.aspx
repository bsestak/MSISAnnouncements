<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MSISDepartmentApp.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <%--    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
    <script src="Scripts/app.js"></script>
    <script src="../Scripts/jquery-3.4.1.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href="Content/OSU1.css" rel="stylesheet" />
    <link href="Content/OSU2.css" rel="stylesheet" />
    <link href="Content/OSU3.css" rel="stylesheet" />
    <link href="Content/OSU4.css" rel="stylesheet" />
    <link rel="manifest" href="manifest.json" />
        <%-- IOS support --%>
    <link rel="apple-touch-icon" href="/images/OSU_Icon_192.png" />
    <meta name="apple-moblie-web-app-status-bar" content="#AA7700" />
    <meta name="theme-color" content="#FFE1C4"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

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
                            <img src="images/OSULogo.png" class="logo2"/>
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
            <div class="content-space"></div>
            <div class="container-cust">
                <div class=" row boxborder">
                    <div class="col-sm-12 margin-remove login-container">
                        <%-- Login Header Darker Gray section --%>
                        <div class="login-header">
                            <h1>LOGIN</h1>
                            <%-- Lock ICON --%>
                            <i class="fas fa-lock fa-3x icon-cust"></i>
                        </div>
                        <%-- Invalid login lbl --%>
                        <div class="row error-invalid">
                            <div class="col-sm-12">
                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <%-- User name --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <p>User Name</p>
                                </div>
                                <div>
                                    <asp:TextBox CssClass="contact-text txt-box" ID="tboxUsername" runat="server" Font-Size="X-Large"></asp:TextBox>
                                </div>
                                <div class="error-msg">
                                    <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Please enter your username" ControlToValidate="tboxUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <%-- Passwrord --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <p>Password</p>
                                </div>
                                <div>
                                    <asp:TextBox CssClass="contact-text txt-box" ID="tboxPassword" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="error-msg">
                                    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tboxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <%-- Login Button --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <asp:Button CssClass="block" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                        <%-- Cerate account button --%>
                        <div class="row">
                            <div class="col-sm-12">
                                <asp:Button CssClass="block" ID="btnAccount" runat="server" Text="Create Account" OnClick="btnAccount_Click" CausesValidation="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </form>
</body>
</html>


