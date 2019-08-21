<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvertisementsOnline.aspx.cs" Inherits="WebAppSharpening.AdvertisementsOnline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Advertisements</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" Target="_blank" AdvertisementFile="~/AdsData.xml" />
        </div>
    </form>
</body>
</html>
