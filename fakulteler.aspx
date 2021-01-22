<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fakulteler.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.fakulteler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <div style="background-color:#ffd800;border-radius:10px;" >
            <h1 style="text-align:center">FAKÜLTELER</h1></div>
    <form id="form1" runat="server">
        <div>
            <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!"  ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="fakulteID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="343px" Width="886px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="fakulteID" HeaderText="Fakulte ID" InsertVisible="False" ReadOnly="True" SortExpression="fakulteID" />
                    <asp:BoundField DataField="fakulteAdi" HeaderText="Fakülte Adı" SortExpression="fakulteAdi" />
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
                DeleteCommand="DELETE FROM fakulteTbl where fakulteID=@fakulteID" 
                SelectCommand="SELECT [fakulteID], [fakulteAdi] FROM [fakulteTbl]" 
                UpdateCommand="UPDATE fakulteTbl SET fakulteAdi=@fakulteAdi where fakulteID=@fakulteID"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
