<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersata.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.dersata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset style="margin-top: 30px;margin-left:2px; border-radius:13px;font-weight:bold;background-color:#7fdb71">
           <div style="background-color:palegreen;border-radius:10px;" >
            <h1 style="text-align:center">DERS ATAMA</h1></div>
            <br /><br />
            <div style="float:left; font-size:20pt;margin-left:235px;">
            <asp:Label ID="Label1" runat="server" Text="Ders Adı:" ></asp:Label><br /><br />
                <asp:Label ID="Label2" runat="server" Text="Dönem Adı:"></asp:Label><br /><br />
                <asp:Label ID="Label3" runat="server" Text="Bölüm Adı:"></asp:Label><br /><br />
                <asp:Label ID="Label4" runat="server" Text="Kullanıcı Sicil No:"></asp:Label>
            </div> <div>
            <asp:DropDownList style="padding:10px;border-radius:10px;" ID="dersAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="dersAdi" DataValueField="dersKodu" OnTextChanged="dersAditxt_TextChanged"></asp:DropDownList>
            <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [dersKodu], [dersAdi] FROM [dersTbl]"></asp:SqlDataSource>
            <br /><br />
            <asp:DropDownList style="padding:10px;border-radius:10px;" ID="donemAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="donemAdi" DataValueField="donemID"></asp:DropDownList>           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [donemAdi], [donemID] FROM [donemTbl]"></asp:SqlDataSource>
            <br /><br />
            <asp:DropDownList style="padding:10px;border-radius:10px;" ID="bolumAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="bolumAdi" DataValueField="bolumID"></asp:DropDownList>           
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [bolumAdi], [bolumID] FROM [bolumTbl]"></asp:SqlDataSource>
            <br /><br />
            <asp:DropDownList style="padding:10px;" ID="sicilNotxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="sicilNo" DataValueField="sicilNo"></asp:DropDownList>          
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [sicilNo] FROM [kullaniciTbl]"></asp:SqlDataSource>
            <br /><br />
            </div>
            <div>
           <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="KAYDET" style="border-radius: 10px; background-color: chartreuse; margin-top: 30px; margin-left:543px;width:106px;height:50px;font-weight:bold;font-size:large" />
       </div>
            </fieldset>
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
