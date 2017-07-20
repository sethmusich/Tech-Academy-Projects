<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeSimpleCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1">Simple Calculator</h2>
        </div>
        <p class="auto-style1">
            First Value:
            <asp:TextBox ID="firstValueBox" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Second Value:
            <asp:TextBox ID="secondValueBox" runat="server"></asp:TextBox>
        </p>
        <div class="auto-style1">
        <asp:Button ID="addButton" runat="server" Text="+" />
&nbsp;
&nbsp;<asp:Button ID="subtractButton" runat="server" Text="-" />
&nbsp;&nbsp; <asp:Button ID="multiplyButton" runat="server" Text="*" />
&nbsp;&nbsp; <asp:Button ID="divideButton" runat="server" Text="/" />
        </div>
        <p class="auto-style1">
            <asp:Label ID="resultLabel" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Size="Larger"></asp:Label>
        </p>
    </form>
</body>
</html>
