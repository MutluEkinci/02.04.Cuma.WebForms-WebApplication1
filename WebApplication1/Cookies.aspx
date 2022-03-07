<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="WebApplication1.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnCookieYaz" runat="server" OnClick="btnCookieYaz_Click" Text="Yaz" />
        <p>
            <asp:Button ID="btnCookieOku" runat="server" OnClick="btnCookieOku_Click" Text="Oku" />
        </p>
    </form>
</body>
</html>
