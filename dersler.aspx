<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersler.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.dersler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div style="background-color: #ffd800; border-radius: 10px;">
        <h1 style="text-align: center">DERSLER</h1>
    </div>
    <form id="form1" runat="server">

        <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!" DataKeyNames="dersKodu" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Style="padding: 20px;" Height="436px" Width="875px" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="dersKodu" HeaderText="Ders Kodu" SortExpression="dersKodu" ReadOnly="True" />
                <asp:BoundField DataField="dersAdi" HeaderText="Ders Adı" SortExpression="dersAdi" />
                <asp:BoundField DataField="dersKazanim" HeaderText="Ders Kazanımları" SortExpression="dersKazanim" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" 
            SelectCommand="SELECT [dersKodu], [dersAdi], [dersKazanim] FROM [dersTbl]" 
            DeleteCommand="DELETE FROM dersTbl where dersKodu=@dersKodu" 
            UpdateCommand="UPDATE dersTbl SET dersAdi=@dersAdi, dersKazanim=@dersKazanim where dersKodu=@dersKodu"></asp:SqlDataSource>

    </form>
</body>
</html>
