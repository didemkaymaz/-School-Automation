<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bolumler.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.bolumler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
  <div style="background-color:#ffd800;border-radius:10px;" >
            <h1 style="text-align:center">BÖLÜMLER</h1></div>
    <form id="form1" runat="server">
        <div>
            <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!" DataKeyNames="bolumID" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="319px" Width="879px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="bolumID" HeaderText="Bölüm ID" SortExpression="bolumID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="bolumAdi" HeaderText="Bölüm Adı" SortExpression="bolumAdi" />
                    <asp:BoundField DataField="bolumKazanimi" HeaderText="Bölüm Kazanımı" SortExpression="bolumKazanimi" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [bolumID], [bolumAdi], [bolumKazanimi] FROM [bolumTbl]" DeleteCommand="DELETE FROM bolumTbl where bolumID=@bolumID" UpdateCommand="UPDATE bolumTbl SET bolumAdi=@bolumAdi, bolumKazanimi=@bolumKazanimi"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
