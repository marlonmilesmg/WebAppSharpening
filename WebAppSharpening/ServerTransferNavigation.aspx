<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerTransferNavigation.aspx.cs" Inherits="WebAppSharpening.ServerTransferNavigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Destination Form"></asp:Label>
            <br />
            <asp:Label ID="lblName1" runat="server" Text="Name:"></asp:Label>
            <asp:Label ID="lblName" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblEmail1" runat="server" Text="Email"></asp:Label>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Back To Page Navigation Techniques" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
