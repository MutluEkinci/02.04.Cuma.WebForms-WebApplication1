<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPostBack.aspx.cs" Inherits="WebApplication1.CrossPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/detay.aspx" Text="Button" />
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/detay.aspx">LinkButton</asp:LinkButton>
        </p>
        <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="~/detay.aspx" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/detay.aspx">HyperLink</asp:HyperLink>
        </p>
    </form>
</body>
</html>
