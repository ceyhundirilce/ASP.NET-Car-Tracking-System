<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServisRandevuFormu.aspx.cs" Inherits="_211501050_CeyhunDirilce.Servisİşlemleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Servis Randevu Formu</title>
    <style type="text/css">


        .auto-style4 {
            width: 100%;
            margin-top: 0px;
            height: 346px;
        }
        .auto-style83 {
            width: 373px;
            }
        .auto-style80 {
            width: 709px;
            height: 106px;
            margin-left: 40px;
        }
        .auto-style88 {
            margin-left: 45px;
        }
        .auto-style70 {
            margin-left: 55px;
        }
        .auto-style85 {
            width: 373px;
            height: 63px;
        }
        .auto-style82 {
            width: 709px;
            height: 63px;
        }
        .auto-style43 {
            margin-left: 187px;
        }
        .auto-style92 {
            margin-left: 32px;
        }
        .auto-style47 {
            height: 63px;
        }
        .auto-style74 {
            margin-left: 23px;
        }
        .auto-style93 {
            margin-left: 40px;
        }
        .auto-style95 {
            margin-left: 58px;
        }
        .auto-style72 {
            margin-left: 57px;
        }
        .auto-style97 {
            width: 341px;
            height: 232px;
        }
        .auto-style28 {
            margin-left: 18px;
        }
        .auto-style98 {
            margin-left: 39px;
        }
        .auto-style99 {
            width: 400px;
            height: 232px;
        }
        .auto-style101 {
            margin-left: 34px;
        }
        .auto-style102 {
            margin-left: 47px;
        }
        .auto-style103 {
            margin-left: 11px;
        }
        .auto-style104 {
            margin-left: 37px;
        }

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
        .auto-style94 {
            width: 410px;
        }
        .auto-style50 {
            width: 6px;
        }
        
        </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
            <table class="auto-style49">
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style93">
            <asp:Label ID="Label1" runat="server" Text="SERVİS İŞLEMLERİ" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
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
                        &nbsp;</td>
                    <td class="auto-style80" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Servis Tipi:"></asp:Label>
                        <asp:DropDownList ID="ddl_servisTipi" runat="server" AutoPostBack="True" CssClass="auto-style74" Font-Names="Arial Black" Width="142px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="label21" runat="server" Text="Servis Tarihi:"></asp:Label>
                        <asp:TextBox ID="txt_servisTarihi" runat="server" BackColor="White" CssClass="auto-style103" Font-Names="Arial Black" Width="150px" TextMode="DateTimeLocal"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="label4" runat="server" Text="Ad:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_musteriAd" runat="server" BackColor="White" CssClass="auto-style88" Font-Names="Arial Black" MaxLength="50" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label16" runat="server" Text="Eposta:"></asp:Label>
                        &nbsp; <asp:TextBox ID="txt_musteriEposta" runat="server" BackColor="White" CssClass="auto-style101" Font-Names="Arial Black" MaxLength="50" Width="133px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Soyad:"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txt_musteriSoyad" runat="server" BackColor="White" CssClass="auto-style93" Font-Names="Arial Black" MaxLength="50" Width="133px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label17" runat="server" Text="Tel:"></asp:Label>
                        &nbsp; <asp:TextBox ID="txt_musteriTel" runat="server" BackColor="White" CssClass="auto-style95" Font-Names="Arial Black" MaxLength="11" Width="133px"></asp:TextBox>
                    </td>
                    <td rowspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style97">
                        <asp:Label ID="Label18" runat="server" Text="Marka:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracMarka" runat="server" AutoPostBack="True" CssClass="auto-style72" Font-Names="Arial Black" Width="100px" OnSelectedIndexChanged="ddl_aracMarka_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label19" runat="server" Text="Model:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_aracModel" runat="server" AutoPostBack="True" CssClass="auto-style98" Font-Names="Arial Black" Width="100px">
                        </asp:DropDownList>
                        &nbsp;<br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Plaka:"></asp:Label>
                        &nbsp; <asp:TextBox ID="txt_aracPlaka" runat="server" BackColor="White" CssClass="auto-style70" Font-Names="Arial Black" MaxLength="10" Width="133px"></asp:TextBox>
                        <asp:Label ID="lbl_plakaKontrol" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="Araç Km:"></asp:Label>
                        <asp:TextBox ID="txt_aracKm" runat="server" BackColor="White" CssClass="auto-style104" Font-Names="Arial Black" MaxLength="7" Width="133px" TextMode="Number"></asp:TextBox>
                        <br />
                        <br />
                        </td>
                    <td class="auto-style99">
                        <asp:Label ID="Label20" runat="server" Text="Şube:"></asp:Label>
                        <asp:DropDownList ID="ddl_sube" runat="server" AutoPostBack="True" CssClass="auto-style102" Font-Names="Arial Black" Width="100px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Açıklama:"></asp:Label>
                        <asp:TextBox ID="txt_aciklama" runat="server" CssClass="auto-style28" Font-Names="Arial Black" Height="123px" TextMode="MultiLine" BackColor="White" Width="253px" MaxLength="200"></asp:TextBox>
&nbsp;<br />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style85">
                        &nbsp;</td>
                    <td class="auto-style82" colspan="2">
                        <asp:Button ID="btn_randevuAl" runat="server" CssClass="auto-style43" Font-Bold="True" Height="45px" Text="RANDEVU AL" Width="120px" BackColor="Gray" OnClick="btn_randevuAl_Click" />
                        <asp:Button ID="btn_temizle" runat="server" CssClass="auto-style92" Font-Bold="True" Height="45px" Text="TEMİZLE" Width="100px" BackColor="Gray" OnClick="btn_temizle_Click" />
                        </td>
                    <td class="auto-style47">
                    </td>
                </tr>
            </table>
            </form>
</body>
</html>
