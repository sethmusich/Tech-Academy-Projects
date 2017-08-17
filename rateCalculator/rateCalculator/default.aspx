<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="rateCalculator._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        #form1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <span class="auto-style1">Welcome to the Common Census Rate Calculation Tool<br />
            <br />
            </span>
            <span class="auto-style2">Select Your Options Below to Calculate the Cost of your Plan<br />
            </span><br />
            <br />
            <strong>Choose your Plan Type:</strong> <asp:RadioButton ID="bronzeButton" runat="server" GroupName="Plan" Text="Bronze" />
            &nbsp;
            <asp:RadioButton ID="silverButton" runat="server" GroupName="Plan" Text="Silver" />
            &nbsp;
            <asp:RadioButton ID="goldButton" runat="server" GroupName="Plan" Text="Gold" />
        </div>
        <p class="auto-style3">
            <strong>Choose your Coverage Level:</strong>
            <asp:RadioButton ID="EE" runat="server" GroupName="Coverage" Text="EE (Single)" />
            &nbsp;
            <asp:RadioButton ID="EESpouse" runat="server" GroupName="Coverage" Text="EE + Spouse" />
            &nbsp;
            <asp:RadioButton ID="EEChildren" runat="server" GroupName="Coverage" Text="EE + Children" />
            &nbsp;
            <asp:RadioButton ID="EEFamily" runat="server" GroupName="Coverage" Text="EE + Family" />
        </p>
        <p class="auto-style3">
            <strong>Frequency (in Months):</strong>
            <asp:TextBox ID="freqBox" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
        </p>
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
