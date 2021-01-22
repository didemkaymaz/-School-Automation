<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donemekle.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.donemekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Dönem Ekle</title>
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

        <fieldset style="margin-top: 30px; width: 430px; height: 264px; margin-left: 229px; border-radius: 10px;background-color:#7fdb71">
            <div style="background-color:palegreen;border-radius:10px;" >
            <h1 style="text-align:center">DÖNEM EKLEME</h1></div>
            <br />
            <br />
            <form runat="server">
                <div style="float: left; font-size: 19pt;margin-left:21px;margin-top:2px;">
                    <label><b>Dönem Adı:</b></label><br />
                    <br />
                    <br />

                </div>
                <div style="float: right">
                    <asp:TextBox ID="donemAditxt" runat="server" CssClass="frm2" style="width:197px;height:29px;border-radius:10px;" ></asp:TextBox>
                    
                </div>
                <div style="float:right;margin-right:14px;margin-top:-31px;margin-bottom:9px;"><asp:Label ID="Label2" runat="server" Text="Örn: 2019-2020 Güz Yarıyılı"></asp:Label></div>
                <div>
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="KAYDET" Style="border-radius: 10px; background-color:chartreuse; margin-top: 1px; margin-left: 298px; width: 106px; height: 50px; font-weight: bold; font-size: large;margin-right:36px;" />
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
