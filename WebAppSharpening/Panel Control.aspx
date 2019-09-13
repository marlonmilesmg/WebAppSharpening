<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel Control.aspx.cs" Inherits="WebAppSharpening.Panel_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style"font-family: Arial">

        <asp:DropDownList ID="DropDownList1" runat="server"
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem Text="Select User" Value="-1"></asp:ListItem>
        <asp:ListItem Text="Admin User" Value="Admin"></asp:ListItem>
        <asp:ListItem Text="Non-Admin User" Value="NonAdmin"></asp:ListItem>        
        </asp:DropDownList>

        <asp:Panel ID="AdminPanel" runat="server">   
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="AdminGreeting" runat="server" Font-Size="XX-Large"
                        Text="You are logged in as Administrator">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AdminNameLabel" runat="server" Text="Admin Name:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AdminNameTextBox" runat="server" Text="Marlon">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AdminRegionLabel" runat="server" Text="Admin Region:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AdminRegionTextBox" runat="server" Text="Southern Africa">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AdminActionLabel" runat="server" Text="Actions:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AdminActionsTextBox" runat="server" Font-Size="Medium" TextMode="Multiline"
                        Text="There are 4 user queries to be answered by the end of December 24th 2019" Font-Bold="true">                        
                    </asp:TextBox>
                </td>
            </tr>

        </table>
        </asp:Panel>

        <asp:Panel ID="NonAdminPanel" runat="server">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="NonAdminGreeting" runat="server" Font-Size="XX-Large" Text="Welcome Timothy!">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="NonAdminNameLabel" runat="server" Text="User Name:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NonAdminNameTextBox" runat="server" Text="Timothy">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="NonAdminRegion" runat="server" Text="User Region:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NonAdminRegionTextBox" runat="server" Text="East Africa">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="City:">
                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Text="Mombasa">
                    </asp:TextBox>
                </td>
            </tr>
        </table>
        </asp:Panel>

        </div>
        <br />
    </form>
</body>
</html>
