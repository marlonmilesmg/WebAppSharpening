<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageNavigationTechniques.aspx.cs" Inherits="WebAppSharpening.PageNavigationTechniques" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>Hyperlinks</h4>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="https://www.pragimtech.com/courses/asp-net-tutorial-for-beginners/" Text="PragimTech Online Courses" runat="server"></asp:HyperLink>
            <h4>Response.Redirect</h4>
            <asp:Button ID="Button1" runat="server" Text="Response.Redirect" OnClick="Button1_Click" />
            <h4>Server.Transfer</h4>
            <asp:Label ID="Label1" runat="server" Text="Capturing Form" Font-Size="Large"></asp:Label>

            <br />
            <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Transfer To Server Transfer Navigation" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Transfer To External Website" Width="231px" />

            <h4>Server.Execute</h4>
            <h4>Cross-Page Postback</h4>
            <h4>Window.Open</h4>
        </div>
    </form>
</body>
</html>
