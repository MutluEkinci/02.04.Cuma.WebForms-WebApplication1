<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ürün.aspx.cs" Inherits="WebApplication1.Ürün" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 317px;
        }
        .auto-style3 {
            width: 764px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT [UrunID], [UrunAdi], [Resim] FROM [tbl_Urunler]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UrunID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                            <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim">
                            <ControlStyle Height="100px" Width="100px" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="Resimler/{0}">
                            </asp:ImageField>
                            <asp:HyperLinkField DataNavigateUrlFields="UrunID" DataNavigateUrlFormatString="ÜrünDetay.aspx?id={0}" DataTextField="UrunAdi" Text="link" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UrunID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" Width="126px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Fields>
                            <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                            <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                            <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                            <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                        </Fields>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [tbl_Urunler] WHERE ([UrunID] = @UrunID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="UrunID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="ProductCategoryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2019ConnectionString %>" SelectCommand="SELECT ProductCategoryID, Name FROM Production.ProductCategory"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="ProductSubcategoryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2019ConnectionString %>" SelectCommand="SELECT ProductCategoryID, Name, ProductSubcategoryID FROM Production.ProductSubcategory WHERE (ProductCategoryID = @catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="catid" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
