<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ÜrünDetay.aspx.cs" Inherits="WebApplication1.ÜrünDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UrunID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [tbl_Urunler] WHERE ([UrunID] = @UrunID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="UrunID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT tbl_Urunler.UrunID, tbl_Urunler.UrunAdi, tbl_Urunler.KategoriID, tbl_Urunler.Fiyat, tbl_Urunler.Resim, tbl_Urunler.Aciklama, tbl_Kategoriler.KategoriAdi FROM tbl_Urunler INNER JOIN tbl_Kategoriler ON tbl_Urunler.KategoriID = tbl_Kategoriler.KategoriID WHERE (tbl_Urunler.UrunID = @UrunID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="UrunID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
