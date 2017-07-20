<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 313px;
        }
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2">Papa Bob&#39;s Pizza and Software</h1>
        </div>
        <div class="auto-style2">
        <asp:RadioButton ID="smallButton" runat="server" GroupName="size" Text="Baby Bob Pizza (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="mediumButton" runat="server" GroupName="size"  Text="Mama Bob Pizza (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="largeButton" runat="server" GroupName="size"  Text="Papa Bob Pizza (16&quot;) -$16" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustButton" runat="server" GroupName="crust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepDishButton" runat="server" GroupName="crust" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepBox" runat="server"  Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsBox" runat="server" Text="Onions (+.75)" />
        <br />
        <asp:CheckBox ID="gpeppersBox" runat="server" Text="Green Peppers (+$.50)" />
        <br />
        <asp:CheckBox ID="rpeppersBox" runat="server" Text="Red Peppers (+$.75)" />
        <br />
        <asp:CheckBox ID="anchoviesBox" runat="server" Text="Anchovies (+$2)" />
        <br />
        <br />
        </div>
        <h2 class="auto-style2">Papa Bob&#39;s <span class="auto-style1">Special Deal</span></h2>
        <p class="auto-style2">
            Save $2 when add Pepperoni , Green Peppers , and Anchovies OR Pepperoni and Onions to your Pizza</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" />
        </p>
        <p class="auto-style2">
            Total: $ <asp:Label ID="totalLabel" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
