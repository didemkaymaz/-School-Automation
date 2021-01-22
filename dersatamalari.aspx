<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersatamalari.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.dersatamalari" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #ffd800; border-radius: 10px;">
            <h1 style="text-align: center">DERS ATAMALARI</h1>
        </div>
        <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" Style="border-radius: 10px;" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Height="297px" Width="884px" ForeColor="Black" GridLines="Vertical" DataKeyNames="atamaID">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField HeaderText="Atama ID" DataField="atamaID" InsertVisible="False" ReadOnly="True" SortExpression="atamaID" />
                <asp:BoundField HeaderText="Sicil No" DataField="sicilNo" SortExpression="sicilNo" />
                <asp:BoundField HeaderText="Bölüm Adı" DataField="bolumAdi" SortExpression="bolumAdi"/>
                <asp:BoundField HeaderText="Ders Adı" DataField="dersAdi" SortExpression="dersAdi" />
                <asp:BoundField HeaderText="Dönem Adı" DataField="donemAdi" SortExpression="donemAdi" />



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
            SelectCommand="SELECT atamaTbl.atamaID,kullaniciTbl.sicilNo,bolumTbl.bolumAdi,dersTbl.dersAdi,donemTbl.donemAdi from [dbo].[atamaTbl] 
            inner join [dbo].[kullaniciTbl] on atamaTbl.sicilNo=kullaniciTbl.sicilNo  
            inner join [dbo].[bolumTbl] on atamaTbl.bolumID=bolumTbl.bolumID 
            inner join [dbo].[dersTbl] on atamaTbl.dersKodu=dersTbl.dersKodu
            inner join [dbo].[donemTbl] on atamaTbl.donemID=donemTbl.donemID"
            UpdateCommand="UPDATE atamaTbl SET bolumID = @bolumID, sicilNo = @sicilNo, dersKodu = @dersKodu, donemID = @donemID WHERE atamaID = @atamaID"
            DeleteCommand="DELETE FROM atamaTbl where atamaID=@atamaID">
            <DeleteParameters>
                <asp:Parameter Name="atamaID" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="bolumID" />
                <asp:Parameter Name="sicilNo" />
                <asp:Parameter Name="dersKodu" />
                <asp:Parameter Name="donemID" />
                <asp:Parameter Name="atamaID" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
