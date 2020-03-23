<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MSISDepartmentApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/AppCSS.css" rel="stylesheet" />
    <link rel="manifest" href="manifest.json"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-12">
                <asp:TextBox ID="tboxUsername" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <asp:TextBox ID="tboxPassword" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
