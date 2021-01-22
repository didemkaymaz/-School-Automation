<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donemler.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.donemler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DÖNEMLER</title>
</head>
<body>
    <div style="background-color:#ffd800;border-radius:10px;" >
            <h1 style="text-align:center">DÖNEMLER</h1></div>
        <div><form runat="server">
            <asp:GridView EmptyDataText="Henüz Veri Girişi Yapılmadı!" runat="server" DataKeyNames="donemID" ID="GridView1"  AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Height="329px" Width="883px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="donemID" HeaderText="Dönem ID" InsertVisible="False" ReadOnly="True" SortExpression="donemID" />
                    <asp:BoundField DataField="donemAdi" HeaderText="Dönem Adı" SortExpression="donemAdi" />
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
                DeleteCommand="DELETE FROM donemTbl where donemID=@donemID" 
                SelectCommand="SELECT [donemID], [donemAdi] FROM [donemTbl]" 
                UpdateCommand="UPDATE donemTbl SET donemAdi=@donemAdi where donemID=@donemID"></asp:SqlDataSource>
       </form> </div>
   
</body>
</html>
