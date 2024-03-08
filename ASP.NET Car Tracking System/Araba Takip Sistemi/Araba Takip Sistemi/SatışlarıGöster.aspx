<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SatışlarıGöster.aspx.cs" Inherits="_211501050_CeyhunDirilce.SatışlarıGöster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Satışları Göster</title>
    <style type="text/css">

        .auto-style49 {
            width: 100%;
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
                
        .auto-style4 {
            width: 100%;
            margin-top: 0px;
            height: 242px;
            margin-bottom: 0px;
        }
        .auto-style36 {
            margin-left: 190px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style66 {
            margin-left: 94px;
        }
        .auto-style67 {
            margin-left: 329px;
        }
        .auto-style71 {
            width: 329px;
        }
        .auto-style72 {
            width: 787px;
        }
        </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
            <table class="auto-style49">
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style52">
            <asp:Label ID="Label1" runat="server" Text="SATIŞLARI GÖSTER" Font-Bold="True" Font-Names="Snap ITC" Font-Overline="False" Font-Size="15pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style53"></td>
                </tr>
                </table>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style71">
                        <asp:ImageButton ID="btn_musteriİslemleri" runat="server" CssClass="auto-style36" Height="150px" ImageUrl="~/Items/müşteri listesi.png" Width="150px" OnClick="btn_musteriİslemleri_Click" />
                    </td>
                    <td class="auto-style72">
                        <asp:ImageButton ID="btn_aracİslemleri" runat="server" CssClass="auto-style67" Height="150px" ImageUrl="~/Items/araç listesi.png" Width="150px" OnClick="btn_aracİslemleri_Click" />
                    </td>
                    <td>
                        <asp:ImageButton ID="btn_satislariGoster" runat="server" CssClass="auto-style10" Height="150px" ImageUrl="~/Items/sözleşme.png" Width="150px" BorderStyle="Dashed" OnClick="btn_satislariGoster_Click" />
                        </td>
                </tr>
                </table>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style66" ForeColor="Black" GridLines="Vertical" Height="16px">
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
            </form>
</body>
</html>
