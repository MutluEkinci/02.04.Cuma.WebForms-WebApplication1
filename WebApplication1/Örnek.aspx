<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Örnek.aspx.cs" Inherits="WebApplication1.Örnek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                    <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                    <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                    <asp:ImageField DataImageUrlField="Resim">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="UrunID" DataNavigateUrlFormatString="detay.aspx?id={0}" DataTextField="UrunAdi" HeaderText="Detay" Text="Detay" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT [UrunID], [UrunAdi], [Resim] FROM [tbl_Urunler]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
