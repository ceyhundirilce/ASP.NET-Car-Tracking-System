<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Müşteriİşlemleri.aspx.cs" Inherits="_211501050_CeyhunDirilce.Müşteriİşlemleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Müşteri İşlemleri</title>
    <style type="text/css">

        .auto-style4 {
            width: 100%;
            margin-top: 0px;
            height: 346px;
        }
        .auto-style36 {
            margin-left: 190px;
        }
        .auto-style37 {
            width: 583px;
            height: 106px;
        }
        .auto-style29 {
            margin-left: 76px;
        }
        .auto-style25 {
            margin-left: 70px;
        }
        .auto-style7 {
            height: 106px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style45 {
            width: 583px;
            height: 232px;
        }
        .auto-style26 {
            margin-left: 44px;
        }
        .auto-style27 {
            margin-left: 75px;
        }
        .auto-style40 {
            margin-left: 54px;
        }
        .auto-style28 {
            margin-left: 58px;
        }
        .auto-style46 {
            height: 232px;
        }
        .auto-style39 {
            width: 583px;
            height: 63px;
        }
        .auto-style43 {
            margin-left: 27px;
        }
        .auto-style42 {
            margin-left: 30px;
        }
        .auto-style47 {
            height: 63px;
        }
        .auto-style48 {
            margin-left: 171px;
        }
        .auto-style49 {
            width: 100%;
        }
        .auto-style50 {
            width: 6px;
        }
        .auto-style51 {
            width: 377px;
            height: 32px;
        }
        .auto-style52 {
            height: 32px;
            width: 522px;
        }
        .auto-style53 {
            width: 6px;
            height: 32px;
        }
        .auto-style54 {
            width: 522px;
        }
        .auto-style55 {
            width: 377px;
        }
        .auto-style58 {
            margin-left: 74px;
        }
        .auto-style59 {
            margin-left: 53px;
        }
        .auto-style60 {
            margin-left: 23px;
        }
        .auto-style61 {
            width: 599px;
            height: 106px;
        }
        .auto-style62 {
            width: 599px;
            height: 232px;
        }
        .auto-style63 {
            width: 599px;
            height: 63px;
        }
        </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form2" runat="server">
        <div>
            <table class="auto-style49">
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style52">
            <asp:Label ID="Label1" runat="server" Text="MÜŞTERİ İŞLEMLERİ" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style54">&nbsp;</td>
                    <td class="auto-style50">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style54">&nbsp;</td>
                    <td class="auto-style50">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style61">
                        <asp:ImageButton ID="btn_musteriİslemleri" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/müşteri listesi.png" Width="150px" BorderStyle="Dashed" OnClick="btn_musteriİslemleri_Click" />
                    </td>
                    <td class="auto-style37">
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="TC:"></asp:Label>
                        <asp:TextBox ID="txt_musteriTc" runat="server" BackColor="White" CssClass="auto-style58" Font-Names="Arial Black" MaxLength="11"></asp:TextBox>
                        <asp:Button ID="btn_yazdir" runat="server" BackColor="Gray" CssClass="auto-style10" Font-Bold="True" Height="25px" OnClick="btn_yazdir_Click" Text="YAZDIR" />
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Ad:"></asp:Label>
                        <asp:TextBox ID="txt_musteriAd" runat="server" CssClass="auto-style29" Font-Names="Arial Black" BackColor="White" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Soyad:"></asp:Label>
                        <asp:TextBox ID="txt_musteriSoyad" runat="server" CssClass="auto-style40" Font-Names="Arial Black" BackColor="White" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label5" runat="server" Text="Yaş:"></asp:Label>
                        <asp:TextBox ID="txt_musteriYas" runat="server" CssClass="auto-style25" Font-Names="Arial Black" BackColor="White" MaxLength="3"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;<asp:ImageButton ID="btn_aracİslemleri" runat="server" CssClass="auto-style10" Height="150px" ImageUrl="~/Items/araç listesi.png" Width="150px" OnClick="btn_aracİslemleri_Click" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style62">
                        <asp:ImageButton ID="btn_satislariGoster" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/sözleşme.png" Width="150px" OnClick="btn_satislariGoster_Click" />
                    </td>
                    <td class="auto-style45">
                        <asp:Label ID="Label6" runat="server" Text="Cinsiyet:"></asp:Label>
                        <asp:TextBox ID="txt_musteriCinsiyet" runat="server" CssClass="auto-style26" Font-Names="Arial Black" BackColor="White" MaxLength="1"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Tel:"></asp:Label>
                        <asp:TextBox ID="txt_musteriTel" runat="server" CssClass="auto-style27" Font-Names="Arial Black" BackColor="White" MaxLength="11"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Eposta:"></asp:Label>
                        <asp:TextBox ID="txt_musteriEposta" runat="server" CssClass="auto-style59" Font-Names="Arial Black" BackColor="White" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Adres:"></asp:Label>
                        <asp:TextBox ID="txt_musteriAdres" runat="server" CssClass="auto-style28" Font-Names="Arial Black" Height="66px" TextMode="MultiLine" BackColor="White"></asp:TextBox>
&nbsp;
                        <asp:Button ID="btn_temizle" runat="server" BackColor="Gray" CssClass="auto-style40" Font-Bold="True" Height="45px" OnClick="btn_temizle_Click" Text="TEMİZLE" Width="100px" />
                        </td>
                    <td class="auto-style46">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="TC Ara:"></asp:Label>
                        <asp:DropDownList ID="ddl_tcAra" runat="server" AutoPostBack="True" CssClass="auto-style60" Font-Names="Arial Black" Height="56px" OnSelectedIndexChanged="ddl_tcKimlik_SelectedIndexChanged" Width="122px" BackColor="White">
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style39">
                        <asp:Button ID="btn_sil" runat="server" Font-Bold="True" Height="45px" Text="SİL" Width="100px" OnClick="btn_sil_Click" BackColor="Gray" />
                        <asp:Button ID="btn_gosterKapatYenile" runat="server" CssClass="auto-style43" Font-Bold="True" Height="45px" OnClick="btn_gosterKapatYenile_Click" Text="GÖSTER" Width="100px" BackColor="Gray" />
                        <asp:Button ID="btn_guncelle" runat="server" CssClass="auto-style42" Font-Bold="True" Height="45px" Text="GÜNCELLE" Width="100px" BackColor="Gray" OnClick="btn_guncelle_Click" />
                        </td>
                    <td class="auto-style47">
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style48" ForeColor="Black" GridLines="Vertical" Height="16px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
