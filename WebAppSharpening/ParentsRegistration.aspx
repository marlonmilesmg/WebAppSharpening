<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentsRegistration.aspx.cs" Inherits="WebAppSharpening.ParentsRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="CaptureParentsDetails" runat="server">
                    <table style="border:1px solid black">
                        <tr>
                            <td colspan="2">
                                <h2>Step 1 - Parents Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td>
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Phone Number:</td>
                            <td>
                                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Address:</td>
                            <td>
                                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Expectations for the event:</td>
                            <td>
                                <asp:TextBox ID="txtExpectations" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" style="text-align:right">
                                <asp:Button ID="btnConfirm" runat="server"
                                    Text="Register >>" OnClick="btnConfirm_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="ConfirmDetails" runat="server">
                    <table style="border:1px solid black">
                        <tr>
                            <td colspan="2"><h2>Step 2 - Confirm Details</h2></td>
                        </tr>
                        <tr>
                            <td colspan="2"><h3>Personal Details</h3></td>
                        </tr>
                        <tr>
                            <td>First Name</td>
                            <td>
                                <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <asp:Label ID="lblLastName" runat="server"></asp:Label>
                            </td>
                        </tr>
                       
                        
                        <tr>
                            <td>Expectations for the event</td>
                            <td>
                                <asp:Label ID="lblExpectations" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><h3>Contact Details</h3></td>
                        </tr>
                         <tr>
                            <td>Phone Number</td>
                            <td>
                                <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td>
                                <asp:Label ID="lblEmailAddress" runat="server"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="<< Step 1"
                                    onclick="Button1_Click" />
                            </td>
                            <td style="text-align:right">
                                <asp:Button ID="Button2" runat="server" Text="Submit >>"
                                    onclick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="ViewSummary" runat="server">
                    
                </asp:View>

            </asp:MultiView>

        </div>
    </form>
</body>
</html>
