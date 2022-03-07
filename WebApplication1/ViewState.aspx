<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="WebApplication1.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <input id="Text1" type="text" /><asp:Button ID="Button1" runat="server" Text="Button" />

        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnYaz" runat="server" OnClick="BtnYaz_Click" Text="Yaz" />
        </p>
        <asp:Button ID="BtnOku" runat="server" OnClick="BtnOku_Click" Text="Oku" />
    </form>
</body>
</html>
