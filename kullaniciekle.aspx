<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullaniciekle.aspx.cs" Inherits="TestDeğerlendirmeUygulaması_kou.kullaniciekle" %>
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

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css" runat="server">
        * {
            
            
        }

        p {
            margin-bottom: 5px
        }

        .frm {
            margin-bottom: 40px;
        }
    </style>
   
</head>
<body>
    <fieldset style="margin-top: 62px; border-radius: 10px;width:41px;margin-left:204px;background-color:#7fdb71">
       <div style="background-color:palegreen;border-radius:10px;" >
            <h1 style="text-align:center">KULLANICI EKLEME</h1></div>
        <br /><br />
        <div style="float: left; margin-top: 23px;font-weight:bold;margin-left:60px;" runat="server">
            <form runat="server">
                <div style="float: left;font-size:13pt; ">
                    <label><b>Adı:</b></label><hr /><br /><br />
                  
                    <label><b>Soyadı:</b><hr /></label><br /><br />
                  
                    <label><b>Sicil No:</b><hr /></label><br /><br />
                    
                    <label><b>Şifre:</b><hr /></label>
                </div>
                <div style="float: right;margin-right:105px;">
                    <asp:TextBox ID="kulAditxt" runat="server" CssClass="frm" style="padding:8px;border-radius:10px;"></asp:TextBox><br />

                    <asp:TextBox ID="kulSoyaditxt" runat="server" CssClass="frm" style="padding:8px;border-radius:10px;"></asp:TextBox><br />

                    <asp:TextBox ID="sicilNotxt" runat="server" CssClass="frm" style="padding:8px;border-radius:10px;" MaxLength="6" onkeypress='return event.keyCode >= 48 && event.keyCode <= 57' ></asp:TextBox><br />

                    <asp:TextBox ID="sifretxt" runat="server" CssClass="frm" style="padding:8px;border-radius:10px;" MaxLength="5"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click" style="border-radius: 10px; background-color: chartreuse; margin-top: 1px; margin-left: 298px;width:106px;height:50px;font-weight:bold;font-size:large;" />
                </div>
                
            </form>

        </div>

        <div style="float: right">
        </div>
    </fieldset>
    <asp:Label ID="Label1" runat="server" Text="" style="margin-left:306px;"></asp:Label>
</body>
</html>
