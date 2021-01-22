<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersekle.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.dersekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div>

        <fieldset style="margin-top: 30px; width: 600px; height: 592px; margin-left: 136px; border-radius: 10px; background-color:#7fdb71">
            <div style="background-color:palegreen;border-radius:10px;" >
            <h1 style="text-align:center">DERS EKLEME</h1></div>

            <form runat="server">
                <br />

                <div style="float: left; font-size: 16pt; margin-bottom: -76px;">
                    <br />
                    <label style="margin: 23px;"><b>Ders Adı:</b></label><br />
                    <br />

                    <label style="margin: 23px; margin-top: 137px;"><b>Ders Kodu:</b></label>
                    <br />
                    <br />
                    <br />
                    <label style="margin: 23px; margin-top: 137px;"><b>Bölüm Seç:</b></label>
                    <br />
                    <br />
                    <br />
                    <label style="margin: 23px; margin-top: 137px;"><b>Dönem Seç:</b></label>
                    <br />
                    <br />
                    <br />
                    
                    <asp:Label runat="server"><b style="margin-left:22px;">KAZANIMLAR</b></asp:Label><br />
                    <br />
                    <div>
                    </div>
                </div>
                <div style="margin-top: 27px; margin-right: 68px; margin-left: 10px;">
                    <asp:TextBox ID="dersAditxt" runat="server" CssClass="frm2" Style="padding: 4px;border-radius:10px;"></asp:TextBox><br />
                    <br />

                    <asp:TextBox ID="dersKodutxt" runat="server" CssClass="frm2" Style="padding: 4px;border-radius:10px;"></asp:TextBox><br />
                    <br />
                    <br />
                    <br />
                    <asp:DropDownList style="border-radius:10px;padding: 4px;" ID="bolumAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="bolumAdi" DataValueField="bolumID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [bolumAdi], [bolumID] FROM [bolumTbl]"></asp:SqlDataSource>
                    <br /><br /><br />
                    <asp:DropDownList style="border-radius:10px;padding: 4px;" ID="donemAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="donemAdi" DataValueField="donemID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [donemAdi], [donemID] FROM [donemTbl]"></asp:SqlDataSource>
                    <br />

                </div><br />
                <asp:TextBox runat="server" ID="kazanimAditxt" TextMode="multiline"  Columns="50" Rows="5" style="border-radius:10px;margin-left:-139px;margin-top:87px;"></asp:TextBox>
               
                <div style="font-family: Arial, Helvetica, sans-serif; margin-top: -60px; margin-left: 93px;">
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="KAYDET" Style="border-radius: 10px; background-color: chartreuse; margin-top: 65px; margin-left: 157px; width: 106px; height: 50px; font-weight: bold; font-size: large; font-family: Arial, Helvetica, sans-serif" />
                </div>
            </form>
        </fieldset>
        <br />
        <br />
        <div style="border-radius: 10px; text-align: center; font-style: italic">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>
</body>
</html>
