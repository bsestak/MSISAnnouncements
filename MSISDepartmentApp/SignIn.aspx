<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MSISDepartmentApp.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Frontier_CSS.css" rel="stylesheet" />
    <link href="Content/HW2CSS.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container-float">
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
                                <asp:Button CssClass="block" ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" CausesValidation="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


