<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Araçİşlemleri.aspx.cs" Inherits="_211501050_CeyhunDirilce.Araçİşlemleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Araç İşlemleri</title>
    <style type="text/css">

        .auto-style49 {
            width: 100%;
        }
        .auto-style51 {
            width: 409px;
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
        .auto-style55 {
            width: 409px;
        }
        .auto-style54 {
            width: 522px;
        }
        .auto-style50 {
            width: 6px;
        }
        .auto-style4 {
            width: 100%;
            margin-top: 0px;
            height: 346px;
        }
        .auto-style6 {
            width: 502px;
            height: 106px;
        }
        .auto-style36 {
            margin-left: 190px;
        }
        .auto-style37 {
            width: 681px;
            height: 106px;
        }
        .auto-style7 {
            height: 106px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style44 {
            width: 502px;
            height: 232px;
        }
        .auto-style45 {
            width: 681px;
            height: 232px;
        }
        .auto-style42 {
            margin-left: 30px;
        }
        .auto-style46 {
            height: 232px;
        }
        .auto-style35 {
            width: 502px;
            height: 63px;
        }
        .auto-style60 {
            margin-left: 23px;
        }
        .auto-style39 {
            width: 681px;
            height: 63px;
        }
        .auto-style43 {
            margin-left: 27px;
        }
        .auto-style47 {
            height: 63px;
        }
        .auto-style48 {
            margin-left: 216px;
        }
        .auto-style71 {
            margin-left: 16px;
        }
        .auto-style72 {
            margin-left: 29px;
        }
        .auto-style40 {
            margin-left: 470px;
        }
        .auto-style76 {
            margin-left: 97px;
        }
        .auto-style81 {
            margin-left: 9px;
        }
        .auto-style82 {
            margin-left: 5px;
        }
        .auto-style83 {
            margin-left: 36px;
        }
        .auto-style84 {
            margin-left: 34px;
        }
        .auto-style85 {
            margin-left: 38px;
        }
        .auto-style86 {
            margin-left: 19px;
        }
        .auto-style87 {
            margin-left: 40px;
        }
        </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style49">
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style52">
            <asp:Label ID="Label1" runat="server" Text="ARAÇ İŞLEMLERİ" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
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
                    <td class="auto-style6">
                        <asp:ImageButton ID="btn_musteriİslemleri" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/müşteri listesi.png" Width="150px" OnClick="btn_musteriİslemleri_Click" />
                    </td>
                    <td class="auto-style37">
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="Şase:"></asp:Label>
                        <asp:TextBox ID="txt_aracSase" runat="server" BackColor="White" CssClass="auto-style87" Font-Names="Arial Black" MaxLength="17" Width="90px"></asp:TextBox>
                        <asp:Button ID="btn_yazdir" runat="server" BackColor="Gray" CssClass="auto-style10" Font-Bold="True" Height="25px" OnClick="btn_yazdir_Click" Text="YAZDIR" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="Jant Boyutu:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracJant" runat="server" AutoPostBack="True" CssClass="auto-style72" Font-Names="Arial Black" Width="63px">
                        </asp:DropDownList>
                        <asp:Label ID="Label15" runat="server" Text="inc"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Marka:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracMarka" runat="server" AutoPostBack="True" CssClass="auto-style72" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracMarka_SelectedIndexChanged" Width="100px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Model Tarihi:"></asp:Label>
                        <asp:TextBox ID="txt_aracModelTarih" runat="server" CssClass="auto-style71" Font-Names="Arial Black" Width="90px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Model:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_aracModel" runat="server" AutoPostBack="True" CssClass="auto-style81" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracModel_SelectedIndexChanged" Width="100px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Fiyat (TL):"></asp:Label>
                        <asp:TextBox ID="txt_aracFiyat" runat="server" CssClass="auto-style85" Font-Names="Arial Black" Width="90px" MaxLength="9" TextMode="Number"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Kasa:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_aracKasa" runat="server" AutoPostBack="True" CssClass="auto-style82" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracKasa_SelectedIndexChanged" Width="100px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Motor Hacmi:"></asp:Label>
                        <asp:TextBox ID="txt_aracMotorHacim" runat="server" CssClass="auto-style86" Font-Names="Arial Black" Width="90px" MaxLength="5" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;<asp:ImageButton ID="btn_aracİslemleri" runat="server" CssClass="auto-style10" Height="150px" ImageUrl="~/Items/araç listesi.png" Width="150px" BorderStyle="Dashed" OnClick="btn_aracİslemleri_Click" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:ImageButton ID="btn_satislariGoster" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/sözleşme.png" Width="150px" OnClick="btn_satislariGoster_Click" />
                    </td>
                    <td class="auto-style45" aria-atomic="False">
                        <asp:Label ID="Label6" runat="server" Text="Renk:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_aracRenk" runat="server" AutoPostBack="True" CssClass="auto-style60" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracRenk_SelectedIndexChanged" Width="100px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Yakıt Türü:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracYakitTuru" runat="server" AutoPostBack="True" CssClass="auto-style84" Font-Names="Arial Black" Width="100px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Segment:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_aracSegment" runat="server" AutoPostBack="True" CssClass="auto-style10" Font-Names="Arial Black" OnSelectedIndexChanged="ddl_aracSegment_SelectedIndexChanged" Width="100px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Vites Türü:"></asp:Label>
                        <asp:DropDownList ID="ddl_aracVitesTuru" runat="server" AutoPostBack="True" CssClass="auto-style83" Font-Names="Arial Black" Width="100px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btn_temizle" runat="server" BackColor="Gray" CssClass="auto-style40" Font-Bold="True" Height="45px" Text="TEMİZLE" Width="100px" OnClick="btn_temizle_Click" />
                        </td>
                    <td class="auto-style46">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Şase Ara:"></asp:Label>
                        <asp:DropDownList ID="ddl_saseAra" runat="server" AutoPostBack="True" CssClass="auto-style60" Font-Names="Arial Black" Height="56px" Width="108px" BackColor="White" OnSelectedIndexChanged="ddl_saseAra_SelectedIndexChanged">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style39">
                        <asp:Button ID="btn_ekle" runat="server" Font-Bold="True" Height="45px" Text="EKLE" Width="100px" BackColor="Gray" CssClass="auto-style76" OnClick="btn_ekle_Click" />
                        <asp:Button ID="btn_gosterKapatYenile" runat="server" CssClass="auto-style43" Font-Bold="True" Height="45px" Text="GÖSTER" Width="100px" BackColor="Gray" OnClick="btn_gosterKapatYenile_Click" />
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
