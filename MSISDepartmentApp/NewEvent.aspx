<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewEvent.aspx.cs" Inherits="MSISDepartmentApp.NewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Event</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/AppCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
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
                    <asp:Button ID="btnCreate" Text="Create" runat="server" OnClick="btnCreate_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
