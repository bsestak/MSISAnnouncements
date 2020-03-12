<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MSISDepartmentApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
                <div class="col-sm-12">
                    <div class="row jumbotron orange" >
                        <div class="col-sm-8 offset-2">
                            <h1>Cowboy Updates</h1>
                        </div>
                        <div class="col-sm-2">
                            <asp:Button Id="BtnAction" Text="Sign In" runat="server" OnClick="BtnAction_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <%-- <div class="row">
                <div class="col-sm-12">
                    <iframe class="span-viewport" src="https://calendar.google.com/calendar/embed?src=brady.sestak%40gmail.com&ctz=America%2FChicago"></iframe>
                </div>
            </div>--%>
            <div class="row">
                <div class="col-sm-12 span-viewport">
                    <asp:Calendar ID="EventsCalender" class="span-viewport" runat="server" BackColor="#FFFFCC"
                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
                        Font-Names="Verdana" Font-Size="12pt" ForeColor="#663399"
                        OnDayRender="EventsCalender_DayRender" ShowGridLines="True" OnSelectionChanged="EventsCalender_SelectionChanged">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt"
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
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
