<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatetimeTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            How many days have elapsed?<br />
            <br />
            Choose one date:<br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            Choose a second date:<br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
        </div>
        <p>
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" style="height: 26px" Text="OK" />
        </p>
        <p>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
