<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fakulteekle.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.fakulteekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div>

        <fieldset style="margin-top: 30px; width: 400px; height: 237px; margin-left: 229px; border-radius: 10px;background-color:#7fdb71">
            <div style="background-color: palegreen; border-radius: 10px;">
                <h1 style="text-align: center">FAKÜLTE EKLEME</h1>
            </div>
            <br />
            <br />
            <form runat="server">
                <div style="float: left; font-size: 18pt; margin-left: 45px; margin-top: 5px;">
                    <label><b>Fakülte Adı:</b></label><br />
                    <br />
                    <br />


                </div>
                <div style="float: right">
                    <asp:TextBox ID="fakulteAditxt" runat="server" CssClass="frm2" Style="margin-right: 20px; padding: 10px;border-radius:10px;"></asp:TextBox><br />



                </div>
                <div>
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="KAYDET" Style="border-radius: 10px; background-color: chartreuse; margin-top: -19px; margin-right: 19px; margin-left: 314px; width: 106px; height: 50px; font-weight: bold; font-size: large" />
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
