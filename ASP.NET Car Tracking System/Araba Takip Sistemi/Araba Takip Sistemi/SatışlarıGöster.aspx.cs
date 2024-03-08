using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211501050_CeyhunDirilce
{
    public partial class SatışlarıGöster : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GW_Doldur();
            }
        }
        private void GW_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("Select satisID as [ID],m.tc as TC, m.ad+' '+m.soyad as [Ad Soyad],s.plaka as Plaka,s.saseNo as [Şase No]" +
                ", a.marka as [Marka], a.model as [Model], a.kasaTipi[Kasa Tipi], a.modelTarihi as [Model Tarihi]" +
                ", a.fiyat_TL[Araç Fiyat], satisTarihi[Satış Tarihi], satisFiyati[Satış Fiyatı], odemeTuru as [Ödeme Türü]" +
                "from Musteriler m inner join Satislar s on m.musteriID = s.musteriID inner join Araclar a on s.aracID = a.aracID", con);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            con.Close();
        }
        protected void btn_musteriİslemleri_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Müşteriİşlemleri.aspx");
        }
        protected void btn_aracİslemleri_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Araçİşlemleri.aspx");
        }
        protected void btn_satislariGoster_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SatışlarıGöster.aspx");
        }
    }
}