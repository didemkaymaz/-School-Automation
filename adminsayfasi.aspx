<%@ Page Title="Admin Sayfası" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminsayfasi.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.adminsayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('adminarkaplani.jfif');
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
    <link rel="Stylesheet" type="text/css" href="style.css">
    <div class="menu1" style="float: left; margin-top: 86px;">
        <ul id="menu1" style="padding-top: -600px; margin-left: -145px;">
            <li><a style="width: 260px;" class="active" href="https://localhost:44393/kullaniciekle" target="iframe" id="kullaniciekleme">
                <img src="kullaniciekle3.png" width="40" />Kullanıcı Ekle</a></li>

            <li><a href="https://localhost:44393/bolumekle" target="iframe" id="bolumekleme">
                <img src="bolumekle.png" width="40" />Bölüm Ekle</a></li>

            <li><a href="https://localhost:44393/dersekle" target="iframe" id="dersekleme">
                <img src="dersekle.png" width="40" />Ders Ekle</a></li>

            <li><a href="https://localhost:44393/fakulteekle" target="iframe" id="fakulteekleme">
                <img src="fakulteekle.png" width="40" />Fakülte Ekle</a></li>

            <li><a href="https://localhost:44393/donemekle" target="iframe" id="donemekleme">
                <img src="donemekle1.png" width="40" />Dönem Ekle</a></li>

            <li><a href="https://localhost:44393/dersata" target="iframe" id="dersatama">
                <img src="dersata.png" width="40" />Ders Ata</a></li>

            <li><a href="https://localhost:44393/" id="cikis">
                <img src="exit.png" width="40" />Oturumu Sonlandır</a></li>
        </ul>
    </div>

    <div class="menu3" style="float: right; margin-top: 86px;">
        <ul id="menu3" style="padding-top: -600px; margin-left: 65px; border-radius: 10px;">
            <li><a style="width: 260px;" class="active" href="https://localhost:44393/kullanicilar" target="iframe" id="kullanicilar">
                <img src="kullanicilar.png" width="40" />Kullanıcılar</a></li>

            <li><a href="https://localhost:44393/dersatamalari" target="iframe" id="dersatamalari">
                <img src="dersataması.png" width="40" />Ders Atamaları</a></li>

            <li><a href="https://localhost:44393/bolumler" target="iframe" id="bolumler">
                <img src="bolumler.png" width="40" />Bölümler</a></li>

            <li><a href="https://localhost:44393/dersler" target="iframe" id="dersler">
                <img src="dersler.png" width="40" />Dersler</a></li>
            <li><a href="https://localhost:44393/donemler" target="iframe" id="donemler">
                <img src="donemler.png" width="40" />Dönemler</a></li>
            <li><a href="https://localhost:44393/fakulteler" target="iframe" id="fakulteler">
                <img src="fakulte.png" width="40" />Fakülteler</a></li>
        </ul>
    </div>
    <div class="menu2" style="float: left; font-size: 11pt; margin-top: 17px;">
        <ul id="menu2" style="margin-bottom: 90px; margin-right: -200px; margin-left: -93px; border-radius: 10px; width: 900px;">
            <li><a href="https://localhost:44393/testsinaviokutmaislemi" target="iframe" style="margin-left: 106px;">
                <img src="test.png" width="31" />Test Sınavı Okutma İşlemi</a></li>

            <li><a href="https://localhost:44393/sorubazli.aspx" target="iframe" style="margin-left: 63px;">
                <img src="sorubazli.png" width="31" style="margin-left: -15px;" />Soru Bazlı Değerlendirme</a></li>

            <li><a href="yardımdosyası.htm" target="iframe" style="margin-left: 60px;">
                <img src="help.png" width="25" style="margin-left: -15px;" />Yardım</a></li>
        </ul>
    </div>
    <div style="float: right; width: 700px; height: 600px; margin-left: auto; margin-right: auto; margin-top: 20px;">
        <iframe id="iframeid" name="iframe" runat="server" style="margin-left: -336px; width: 693px; height: 720px; display: block; margin-top: -100px; border-radius: 20px; width: 902px;"></iframe>
    </div>


</asp:Content>
