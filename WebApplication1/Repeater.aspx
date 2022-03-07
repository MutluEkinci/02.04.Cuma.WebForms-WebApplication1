<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="WebApplication1.Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table>
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("UrunAdi") %></td>
                    <td><%# Eval("Fiyat") %></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr bgcolor="gray">
                    <td><%# Eval("UrunAdi") %></td>
                    <td><%# Eval("Fiyat") %></td>
                </tr>
            </AlternatingItemTemplate>
        </asp:Repeater>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [tbl_Urunler]"></asp:SqlDataSource>
    </form>
</body>
</html>
