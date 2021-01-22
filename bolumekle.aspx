<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bolumekle.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.bolumekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>BÖLÜM EKLEME</title>
    <style type="text/css">
        * {
        }

        p {
            margin-bottom: 5px
        }

        .frm2 {
            margin-bottom: 40px;
        }
    </style>

</head>
<body>

    <div>

        <fieldset style="margin-top: 30px; width: 400px; height: 600px; margin-left: 200px; border-radius: 10px; background-color: #7fdb71">
            <div style="background-color: palegreen; border-radius: 10px;">
                <h1 style="text-align: center">BÖLÜM EKLEME</h1>
            </div>
            <br />
            <br />
            <form runat="server">
                <div style="float: left; font-size: 18pt; margin-left: 45px; margin-top: -9px; margin-left: 17px;">
                    <label><b>Bölüm Adı:</b></label><br />
                    <br />
                    <br />
                    <label><b>Fakülte Seç:</b></label><br />
                    <br />
                    <br />
                    <asp:Label runat="server"><b>Bölüm Kazanımları</b></asp:Label><br />
                    <br />
                    <div>
                    </div>

                </div>
                <div style="float: right; margin-top: -14px;">
                    <asp:TextBox ID="bolumAditxt" runat="server" CssClass="frm2" Style="margin-right: 20px; padding: 10px; border-radius: 10px;"></asp:TextBox><br />

                    <asp:DropDownList Style="padding: 14px; border-radius: 10px;" ID="fakulteAditxt" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="fakulteAdi" DataValueField="fakulteID"></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdegerlendirmeotomasyonuConnectionString %>" SelectCommand="SELECT [fakulteID],[fakulteAdi] FROM [fakulteTbl]"></asp:SqlDataSource>

                </div>
                <asp:TextBox runat="server" ID="bolumKazanimitxt" TextMode="multiline" Columns="60" Rows="13" Style="border-radius: 10px;"></asp:TextBox>

                <div>
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="KAYDET" Style="border-radius: 10px; background-color: chartreuse; margin-top: 11px; margin-right: 19px; margin-left: 314px; width: 106px; height: 50px; font-weight: bold; font-size: large" />
                </div>
            </form>
        </fieldset>
        <br />
        <br />
        <div style="border-radius: 10px; text-align: center; font-style: italic">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
    </div>

</body>
</html>
