<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Satışİşlemleri.aspx.cs" Inherits="_211501050_CeyhunDirilce.Satışİşlemleri" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Satış İşlemleri</title>
    <style type="text/css">

        .auto-style49 {
            width: 100%;
        }
        .auto-style51 {
            width: 275px;
            height: 32px;
        }
        .auto-style53 {
            width: 6px;
            height: 32px;
        }
        .auto-style55 {
            width: 275px;
        }
        .auto-style50 {
            width: 6px;
        }
        
        .auto-style4 {
            width: 100%;
            margin-top: 0px;
            height: 346px;
        }
        .auto-style36 {
            margin-left: 190px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style43 {
            margin-left: 187px;
        }
        .auto-style47 {
            height: 63px;
        }
        .auto-style70 {
            margin-left: 13px;
        }
        .auto-style74 {
            margin-left: 31px;
        }
        .auto-style75 {
            margin-left: 49px;
        }
        .auto-style78 {
            margin-left: 28px;
        }
        .auto-style79 {
            margin-left: 10px;
        }
        .auto-style80 {
            width: 709px;
            height: 106px;
        }
        .auto-style81 {
            width: 709px;
            height: 232px;
        }
        .auto-style82 {
            width: 709px;
            height: 63px;
        }
        .auto-style83 {
            width: 414px;
            }
        .auto-style85 {
            width: 414px;
            height: 63px;
        }
        .auto-style86 {
            margin-left: 9px;
        }
        .auto-style88 {
            margin-left: 7px;
        }
        .auto-style89 {
            margin-left: 19px;
        }
        .auto-style90 {
            margin-left: 39px;
        }
        .auto-style91 {
            margin-left: 35px;
        }
        .auto-style92 {
            margin-left: 32px;
        }
        .auto-style93 {
            width: 410px;
            height: 32px;
        }
        .auto-style94 {
            width: 410px;
        }
    </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
            <table class="auto-style49">
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style93">
            <asp:Label ID="Label1" runat="server" Text="SATIŞ İŞLEMLERİ" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style94">&nbsp;</td>
                    <td class="auto-style50">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style94">&nbsp;</td>
                    <td class="auto-style50">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style83" rowspan="2">
                        <asp:ImageButton ID="btn_satisİslemleri" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/sözleşme.png" Width="150px" BorderStyle="Dashed" OnClick="btn_satisİslemleri_Click" />
                        </td>
                    <td class="auto-style80">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="MÜŞTERİ" Font-Bold="True" Font-Underline="True"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text="ARAÇ" Font-Bold="True" Font-Underline="True"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="TC:"></asp:Label>
                        <asp:TextBox ID="txt_musteriTc" runat="server" BackColor="White" CssClass="auto-style90" Font-Names="Arial Black" MaxLength="11" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Şase No:"></asp:Label>
                        <asp:TextBox ID="txt_aracSase" runat="server" BackColor="White" CssClass="auto-style91" Font-Names="Arial Black" Enabled="False" Width="173px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="label4" runat="server" Text="Ad:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_musteriAd" runat="server" BackColor="White" CssClass="auto-style88" Font-Names="Arial Black" MaxLength="50" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Marka:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddl_aracMarka" runat="server" AutoPostBack="True" CssClass="auto-style74" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracMarka_SelectedIndexChanged" Width="136px">
                        </asp:DropDownList>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Soyad:"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txt_musteriSoyad" runat="server" BackColor="White" CssClass="auto-style10" Font-Names="Arial Black" MaxLength="50" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Model:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracModel" runat="server" AutoPostBack="True" CssClass="auto-style75" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracModel_SelectedIndexChanged" Width="136px">
                        </asp:DropDownList>
                    </td>
                    <td rowspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style81">
                        <asp:Label ID="Label15" runat="server" Text="Plaka:"></asp:Label>
                        &nbsp; <asp:TextBox ID="txt_aracPlaka" runat="server" BackColor="White" CssClass="auto-style70" Font-Names="Arial Black" MaxLength="10" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label16" runat="server" Text="Kasa Tipi:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracKasa" runat="server" AutoPostBack="True" CssClass="auto-style78" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracKasa_SelectedIndexChanged" Width="136px">
                        </asp:DropDownList>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label17" runat="server" Text="Model Tarihi:"></asp:Label>
                        <asp:TextBox ID="txt_modelTarihi" runat="server" BackColor="White" CssClass="auto-style86" Font-Names="Arial Black" Enabled="False" Width="123px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label18" runat="server" Text="Araç Fiyat:"></asp:Label>
                        <asp:TextBox ID="txt_aracFiyat" runat="server" BackColor="White" CssClass="auto-style78" Font-Names="Arial Black" Enabled="False" Width="124px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label19" runat="server" Text="Satış Tarihi:"></asp:Label>
                        <asp:TextBox ID="txt_satisTarihi" runat="server" BackColor="White" CssClass="auto-style79" Font-Names="Arial Black" Enabled="False" Width="95px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label20" runat="server" Text="Satış Fiyatı:"></asp:Label>
                        <asp:TextBox ID="txt_satisFiyati" runat="server" BackColor="White" CssClass="auto-style79" Font-Names="Arial Black" Enabled="False" Width="95px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label21" runat="server" Text="Ödeme Türü:"></asp:Label>
                        <asp:DropDownList ID="ddl_odemeTuru" runat="server" AutoPostBack="True" CssClass="auto-style89" Font-Names="Arial Black" Width="105px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style85">
                        &nbsp;</td>
                    <td class="auto-style82">
                        <asp:Button ID="btn_satinAl" runat="server" CssClass="auto-style43" Font-Bold="True" Height="45px" Text="SATIN AL" Width="100px" BackColor="Gray" OnClick="btn_satinAl_Click" />
                        <asp:Button ID="btn_temizle" runat="server" CssClass="auto-style92" Font-Bold="True" Height="45px" Text="TEMİZLE" Width="100px" BackColor="Gray" OnClick="btn_temizle_Click" />
                        </td>
                    <td class="auto-style47">
                    </td>
                </tr>
            </table>
            </form>
</body>
</html>
