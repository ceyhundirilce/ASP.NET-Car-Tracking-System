<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelMüşteriGirişi.aspx.cs" Inherits="_211501050_CeyhunDirilce.PersonelMüşteriGirişi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş İşlemleri</title>
    <style type="text/css">
        .auto-style2 {
            width: 183px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            margin-left: 73px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style76 {
            margin-left: 271px;
            margin-top: 0px;
        }
        .auto-style77 {
            margin-left: 18px;
        }
        .auto-style78 {
            margin-left: 5px;
            margin-bottom: 0px;
        }
        .auto-style79 {
            width: 183px;
            height: 93px;
        }
        .auto-style80 {
            width: 181px;
            height: 93px;
        }
        .auto-style81 {
            height: 93px;
            width: 1145px;
        }
        .auto-style82 {
            width: 183px;
            height: 36px;
        }
        .auto-style83 {
            width: 181px;
            height: 36px;
        }
        .auto-style84 {
            height: 36px;
            width: 1145px;
        }
        .auto-style85 {
            margin-left: 42px;
            margin-bottom: 0px;
        }
        .auto-style86 {
            margin-left: 20px;
            margin-bottom: 0px;
        }
        .auto-style87 {
            margin-left: 51px;
            margin-bottom: 0px;
        }
        .auto-style89 {
            margin-left: 16px;
            margin-bottom: 0px;
        }
        .auto-style90 {
            margin-left: 31px;
            margin-bottom: 0px;
        }
        .auto-style91 {
            margin-left: 26px;
            margin-bottom: 0px;
        }
        .auto-style92 {
            width: 101%;
            margin-right: 0px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
        <table class="auto-style92">
            <tr>
                <td class="auto-style82"></td>
                <td class="auto-style83"></td>
                <td class="auto-style84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_baslik" runat="server" Text="GİRİŞ İŞLEMLERİ" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style79">
                    <asp:ImageButton ID="btn_personelGiris" runat="server" CssClass="auto-style5" Height="150px" ImageUrl="~/Items/personel.png" OnClick="btn_personelGiris_Click" Width="150px" />
                </td>
                <td class="auto-style80">
                    <asp:ImageButton ID="btn_musteriGiris" runat="server" CssClass="auto-style5" Height="150px" ImageUrl="~/Items/müşteri.png" OnClick="btn_musteriGiris_Click" Width="150px" />
                </td>
                <td class="auto-style81">&nbsp;<asp:Label ID="lbl_tc" runat="server" Font-Bold="True" Text="TC:"></asp:Label>
                    <asp:TextBox ID="txt_musteriTc" runat="server" CssClass="auto-style85" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="11"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbl_yas" runat="server" Font-Bold="True" Text="Yaş:"></asp:Label>
                    <asp:TextBox ID="txt_musteriYas" runat="server" CssClass="auto-style85" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="2"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_ePosta" runat="server" Font-Bold="True" Text="Eposta:"></asp:Label>
                    <asp:TextBox ID="txt_musteriEposta" runat="server" CssClass="auto-style78" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="50"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_adres" runat="server" Font-Bold="True" Text="Adres:"></asp:Label>
                    <asp:TextBox ID="txt_musteriAdres" runat="server" CssClass="auto-style78" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="50" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="lbl_ad" runat="server" Font-Bold="True" Text="Ad:"></asp:Label>
                    <asp:TextBox ID="txt_musteriAd" runat="server" CssClass="auto-style87" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="50"></asp:TextBox>
                    &nbsp;&nbsp; &nbsp;<asp:Label ID="lbl_cinsiyet" runat="server" Font-Bold="True" Text="Cinsiyet:"></asp:Label>
                    <asp:TextBox ID="txt_musteriCinsiyet" runat="server" CssClass="auto-style89" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="1"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_kullaniciAd" runat="server" Font-Bold="True" Text="K.ad:"></asp:Label>
                    <asp:TextBox ID="txt_musteriKullaniciAd" runat="server" CssClass="auto-style91" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="15"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_soyad" runat="server" Font-Bold="True" Text="Soyad:"></asp:Label>
                    <asp:TextBox ID="txt_musteriSoyad" runat="server" CssClass="auto-style86" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="50"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbl_tel" runat="server" Font-Bold="True" Text="Tel:"></asp:Label>
                    <asp:TextBox ID="txt_musteriTel" runat="server" CssClass="auto-style85" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="11"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_sifre" runat="server" Font-Bold="True" Text="Şifre:"></asp:Label>
                    <asp:TextBox ID="txt_musteriSifre" runat="server" CssClass="auto-style90" Font-Names="Arial Black" Height="24px" Width="150px" BackColor="White" MaxLength="5" TextMode="Password"></asp:TextBox>
&nbsp;<br />
                        <asp:Button ID="btn_kayit" runat="server" Font-Bold="True" Height="45px" Text="KAYIT OL" Width="100px" BackColor="Gray" CssClass="auto-style76" OnClick="btn_kayit_Click" />
                        <asp:Button ID="btn_giris" runat="server" Font-Bold="True" Height="45px" Text="GİRİŞ" Width="100px" BackColor="Gray" CssClass="auto-style77" OnClick="btn_giris_Click" />
                        </td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:ImageButton ID="btn_servisİslemleri" runat="server" CssClass="auto-style10" Height="150px" ImageUrl="~/Items/araç servis listesi.png" Width="150px" OnClick="btn_servisİslemleri_Click" />
                        </td>
                <td colspan="2">&nbsp; &nbsp;&nbsp;&nbsp; 
        <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="450px" ImageUrl="~/Items/araçlar.png" Width="900px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
