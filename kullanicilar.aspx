<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicilar.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.kullanicilar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div style="background-color:#ffd800;border-radius:10px;" >
            <h1 style="text-align:center">KULLANICILAR</h1></div>
    
        <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!" OnRowDeleting="GridView1_RowDeleting" DataSourceValue="" DataKeyNames="sicilNo" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Height="323px" Width="879px" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="sicilNo" HeaderText="Sicil No" SortExpression="sicilNo" />
                <asp:BoundField DataField="kulAdi" HeaderText="Adı" SortExpression="kulAdi" />
                <asp:BoundField DataField="kulSoyadi" HeaderText="Soyadı" SortExpression="kulSoyadi" />
                <asp:BoundField DataField="sifre" HeaderText="Şifre" SortExpression="sifre" />
                
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
            SelectCommand="SELECT [sicilNo], [kulAdi], [kulSoyadi], [sifre] FROM [kullaniciTbl]" 
            UpdateCommand="UPDATE kullaniciTbl SET sicilNo =@sicilNo, kulAdi=@kulAdi,kulSoyadi=@kulSoyadi,sifre=@sifre where sicilNo=@sicilNo" 
            DeleteCommand="DELETE FROM kullaniciTbl FROM kullaniciTbl INNER JOIN atamaTbl ON kullaniciTbl.sicilNo = atamaTbl.sicilNo where atamaTbl.sicilNo=@sicilNo">
            <DeleteParameters>
                <asp:Parameter Name="sicilNo" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="sicilNo" />
                <asp:Parameter Name="kulAdi" />
                <asp:Parameter Name="kulSoyadi" />
                <asp:Parameter Name="sifre" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>  </form>
</body>
</html>
