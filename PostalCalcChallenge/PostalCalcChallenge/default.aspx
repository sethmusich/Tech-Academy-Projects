<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PostalCalcChallenge._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Postal Calculator<br />
            <br />
            Width:<asp:TextBox ID="widthBox" runat="server" AutoPostBack="true" OnTextChanged="handleChange"></asp:TextBox>
            <br />
            Height:<asp:TextBox ID="heightBox" runat="server" AutoPostBack="true" OnTextChanged="handleChange"></asp:TextBox>
            <br />
            Length:<asp:TextBox ID="lengthBox" runat="server" AutoPostBack="true" OnTextChanged="handleChange"></asp:TextBox>
            <br />
        </div>
        <asp:RadioButton ID="groundButton" runat="server" AutoPostBack="true" OnCheckedChange="handleChange" Text="Ground" GroupName="buttons" />
        <br />
        <asp:RadioButton ID="airButton" runat="server" AutoPostBack="true" OnCheckedChanged="handleChange" Text="Air" GroupName="buttons" />
        <br />
        <asp:RadioButton ID="nextDayButton" runat="server" AutoPostBack="true" OnCheckedChanged="handleChange" Text="Next Day" GroupName="buttons" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
