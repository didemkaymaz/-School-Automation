<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('arkaplan3.jpg');
            background-attachment: local;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <script type="text/javascript">

        function SadeceRakam(e, allowedchars) {
            var key = e.charCode == undefined ? e.keyCode : e.charCode;
            if ((/^[0-9]+$/.test(String.fromCharCode(key))) || key == 0 || key == 13 || isPassKey(key, allowedchars)) { return true; }
            else { return false; }
        }
        function isPassKey(key, allowedchars) {
            if (allowedchars != null) {
                for (var i = 0; i < allowedchars.length; i++) {
                    if (allowedchars[i] == String.fromCharCode(key))
                        return true;
                }
            }
            return false;
        }
        function SadeceRakamBlur(e, clear) {
            var nesne = e.target ? e.target : e.srcElement;
            var val = nesne.value;
            val = val.replace(/^\s+|\s+$/g, "");
            if (clear) val = val.replace(/\s{2,}/g, " ");
            nesne.value = val;
        }
</script>
    
    <div class="row" style="margin-top: 6px;">
        <div class="col-md-6" style="background-color: rgba(92, 62, 55, 0.75); font-family: 'Comic Sans MS'">
            <h2 style="margin-top: 327px;">
                <img src="kullaniciicon.png" style="width: 100px;" />KULLANICI GİRİŞİ</h2>
            <hr style="border: groove" />
            <br />
            <div>
                <asp:TextBox Style="padding: 8px; width: 260px; border-radius: 9px; font-weight: bold" placeholder="Sicil No" runat="server" ID="sicilNotxt" onkeypress='return event.keyCode >= 48 && event.keyCode <= 57' />
            </div>
            <br />
            <asp:TextBox Style="padding: 8px; width: 260px; border-radius: 9px; font-weight: bold" placeholder="Şifre" runat="server" ID="sifretxt" TextMode="Password" />
            <br />

            <div style="float: left">


                <p style="float: left;">
                    <asp:Button Style="background-color: bisque; padding: 10px; font-weight: bold" class="btn btn-default" ID="btnLogin" runat="server" Text="Giriş Yap >>" OnClick="btnLogin_Click" />
                </p>
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="col-md-6" style="background-color: rgba(92, 62, 55, 0.75); font-family: 'Comic Sans MS'">
            <h2 style="text-align: right; margin-top: 327px;">ADMİN GİRİŞİ<img src="adminicon.png" style="width: 113px; height: 100px;" /></h2>
            <hr style="border: groove" />

            <div style="float: right; margin-top: 18px;">
                <asp:TextBox Style="padding: 8px; width: 260px; border-radius: 9px; font-weight: bold" placeholder="Sicil No" runat="server" ID="sicilNotxtadmin" onkeypress='return event.keyCode >= 48 && event.keyCode <= 57' />
            </div>
            <br />
            <br />

            <div style="float: right; margin-top: 38px; margin-right: -260px;">
                <asp:TextBox Style="padding: 8px; width: 260px; border-radius: 9px; font-weight: bold" placeholder="Şifre" runat="server" ID="sifretxtadmin" TextMode="Password" />
            </div>
            <br />
            <br />


            <p style="float: right; margin-top: 52px;">
                <asp:Button Style="background-color: bisque; padding: 10px; font-weight: bold" class="btn btn-default" ID="Button1" runat="server" Text="Giriş Yap >>" OnClick="Button1_Click" />
            </p>
            <br />
            <br />
            <div style="float: right; margin-left: 10px; margin-top: 22px;">
                <asp:Label ID="lblMessage1" runat="server" Text="" onblur="SadeceRakam(event,false)" onkeypress="return SadeceRakam(event);"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
