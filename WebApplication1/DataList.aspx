<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="WebApplication1.DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="UrunID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Resim", "Resimler/{0}") %>' Width="100px" />
                <br />
                UrunID:
                <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                <br />
                UrunAdi:
                <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                <br />
                KategoriID:
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
                <br />
                Fiyat:
                <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                <br />
                <br />
                &nbsp;<br />
<br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">Sepete Ekle</asp:LinkButton>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [tbl_Urunler]"></asp:SqlDataSource>
    </form>
</body>
</html>
