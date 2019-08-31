<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenField.aspx.cs" Inherits="WebAppSharpening.HiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">

        function GetHiddenFieldData() {
            alert('EmployeeId = ' + document.getElementById('HiddenField1').value);
        }

        function Button1_onclick() {
            GetHiddenFieldData();
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>
        <table>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Department:</td>
                <td>
                    <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </td>
                <td>
                    <asp:Button ID="btnLoad" runat="server" Text="Load Employee" OnClick="btnLoad_Click" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ViewId" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
