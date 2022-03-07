<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="34">İstanbul</asp:ListItem>
                <asp:ListItem Value="06">Ankara</asp:ListItem>
                <asp:ListItem Value="35">İzmir</asp:ListItem>
                <asp:ListItem Value="22">Edirne</asp:ListItem>
            </asp:DropDownList>

        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Button" />
        </p>
    </form>
</body>
</html>
