<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="MSISDepartmentApp.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Frontier_CSS.css" rel="stylesheet" />
    <link href="Content/CreateAccount.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-float">
            <div class="row boxborder">
                <div class="col-sm-12">
                    <%-- Lbl Sussess message --%>
                    <div class="row">
                        <div class=" offset-4 col-sm-8">
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    <%-- First Name --%>
                    <div class="row">
                        <div class="col-sm-4">
                            <p>First Name</p>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox CssClass="contact-text" ID="tboxFirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="tboxFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- Lastname --%>
                    <div class="row">
                        <div class="col-sm-4">
                            <p>Last Name</p>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox CssClass="contact-text" ID="tboxLastName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="tboxLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- Password --%>
                    <div class="row">
                        <div class="col-sm-4">
                            <p>Password</p>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox CssClass="contact-text" ID="tboxPassword" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tboxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- Username --%>
                    <div class="row">
                        <div class="col-sm-4">
                            <p>Username</p>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox CssClass="contact-text" ID="tboxUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ErrorMessage="Please enter your Username" ControlToValidate="tboxUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="UserNameExpressionValidator" runat="server" ErrorMessage="Invalid username" ControlToValidate="tboxUsername" ValidationExpression="^[\s\S]{0,8}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- Create account button --%>
                    <div class="row">
                        <div class="col-sm-8  offset-4">
                            <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" CausesValidation="true" OnClick="btnCreateAccount_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
