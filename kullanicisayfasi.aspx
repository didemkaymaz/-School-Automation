<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kullanicisayfasi.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.kullanicisayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url(kullaniciarkaplan2.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
            height:500px;
        }
    </style>
    <link rel="Stylesheet" type="text/css" href="style.css">
    <div class="menu4">
        <ul id="menu4" style="margin-bottom: 90px; margin-top: 30px; margin-left: 51px;">
            <li><a href="https://localhost:44393/testsinaviokutmaislemi" target="iframe" style="margin-left: 127px">
                <img src="test.png" width="31" />Test Sınavı Okutma İşlemi</a></li>

            <li><a href="https://localhost:44393/sorubazli.aspx" target="iframe">
                <img src="sorubazli.png" width="31" style="margin-left: -15px;" />Soru Bazlı Değerlendirme</a></li>

            <li><a href="https://localhost:44393/kazanimbazli.aspx" target="iframe">
                <img src="kazanimbazli.png" width="25" style="margin-left: -15px;" />Kazanım Bazlı Değerlendirme</a></li>
            <li><a href="https://localhost:44393/">
                <img src="exit.png" width="40" />Oturumu Sonlandır</a></li>
        </ul>
    </div>
    <div style="float: right; width: 700px; height: 600px; margin-left: auto; margin-right: auto; margin-top: 20px;">
        <iframe id="iframeid" name="iframe" runat="server" style="margin-left: -350px; width: 1010px; height:727px; display: block; margin-top: -100px;"></iframe>
    </div>

</asp:Content>

