using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace _211501050_CeyhunDirilce
{
    public partial class Satışİşlemleri : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        int gun = DateTime.Now.Day;
        int ay = DateTime.Now.Month;
        int yil = DateTime.Now.Year;
        int aracID, musteriID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_satisTarihi.Text = yil + "-" + ay + "-" + gun;
                Marka_Doldur();
                OdemeTuru_Doldur();
            }
        }
        private void Sase_Doldur()
        {
            var chars = "0123456789ABCDEFGHIJKLMNOPRSTUVWXYZ";
            var random = new Random();
            var result = new string(
                Enumerable.Repeat(chars, 17)
                          .Select(s => s[random.Next(s.Length)])
                          .ToArray());
            txt_aracSase.Text = result;
        }
     
        private void Marka_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("Select distinct marka from Satislar s inner join Araclar a on s.aracID = s.aracID", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_aracMarka.DataSource = dr;
            ddl_aracMarka.DataTextField = "marka";
            ddl_aracMarka.DataBind();
            dr.Close();
            con.Close();
        }
        protected void ddl_aracMarka_SelectedIndexChanged(object sender, EventArgs e)
        {
            Model_Doldur();
        }
        private void Model_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("SELECT distinct model FROM Araclar WHERE marka = @marka", con);
            cmd.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_aracModel.DataSource = dr;
            ddl_aracModel.DataTextField = "model";
            ddl_aracModel.DataBind();
            dr.Close();
            con.Close();
            if (ddl_aracModel.Items.Count == 1)
            {
                KasaTipi_Doldur();
            }
        }
        protected void ddl_aracModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            KasaTipi_Doldur();
        }
        private void KasaTipi_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("SELECT distinct kasaTipi FROM Araclar WHERE marka = @marka and model=@model", con);
            cmd.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_aracKasa.DataSource = dr;
            ddl_aracKasa.DataTextField = "kasaTipi";
            ddl_aracKasa.DataBind();
            dr.Close();
            con.Close();
            if (ddl_aracKasa.Items.Count==1)
            {
                ModelTarihi_AracFiyat_Doldur();
                Sase_Doldur();
            }
        }
        protected void ddl_aracKasa_SelectedIndexChanged(object sender, EventArgs e)
        {
            ModelTarihi_AracFiyat_Doldur();
            Sase_Doldur();
        }
        private void ModelTarihi_AracFiyat_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("SELECT*FROM Araclar WHERE marka = @marka and model=@model and kasaTipi=@kasaTipi", con);
            cmd.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@kasaTipi", ddl_aracKasa.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txt_modelTarihi.Text = dr["modelTarihi"].ToString();
                txt_aracFiyat.Text = dr["fiyat_TL"].ToString();
                txt_satisFiyati.Text = txt_aracFiyat.Text;
            }
            dr.Close();
            con.Close();
        }
        private void OdemeTuru_Doldur()
        {
            ddl_odemeTuru.Items.Add("Kredi Kartı");
            ddl_odemeTuru.Items.Add("Nakit");
        }
        protected void btn_satinAl_Click(object sender, EventArgs e)
        {
            Musteri_Dogrula();
            Arac_Dogrula();
            Plaka_Dogrula();

            if (aracID>0 && musteriID>0 && txt_aracPlaka.Text!="" && txt_aracSase.Text != "")
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("insert into Satislar(musteriID,aracID,plaka,saseNo,satisTarihi,satisFiyati,odemeTuru) values " +
                    "(@musteriID,@aracID,@plaka,@saseNo,@satisTarihi,@satisFiyati,@odemeTuru)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@musteriID",musteriID.ToString());
                cmd.Parameters.AddWithValue("@aracID", aracID.ToString());
                cmd.Parameters.AddWithValue("@plaka",txt_aracPlaka.Text);
                cmd.Parameters.AddWithValue("@saseNo", txt_aracSase.Text);
                cmd.Parameters.AddWithValue("@satisTarihi", txt_satisTarihi.Text);
                cmd.Parameters.AddWithValue("@satisFiyati", txt_satisFiyati.Text);
                cmd.Parameters.AddWithValue("@odemeTuru", ddl_odemeTuru.SelectedItem.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                btn_satinAl.BackColor = Color.Green;

                aracID = 0;
                musteriID = 0;
            }
        }
        private void Musteri_Dogrula()
        {
            if (txt_musteriTc.Text != "" && txt_musteriAd.Text != "" && txt_musteriSoyad.Text != "")
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Select*from Musteriler where tc=@tc and ad=@ad and soyad=@soyad", con);
                con.Open();
                cmd.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                cmd.Parameters.AddWithValue("@ad", txt_musteriAd.Text);
                cmd.Parameters.AddWithValue("@soyad", txt_musteriSoyad.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["TC"] = dr["tc"].ToString();
                    musteriID = Convert.ToInt32(dr["musteriID"]);
                }
                else
                {
                    txt_musteriTc.Text = null;
                    txt_musteriAd.Text = null;
                    txt_musteriSoyad.Text = null;
                }
                dr.Close();
                con.Close();
            }
            else
            {
                txt_musteriTc.Text = null;
                txt_musteriAd.Text = null;
                txt_musteriSoyad.Text = null;
            }
        }
        private void Arac_Dogrula()
        {
            if (ddl_aracModel.SelectedValue != "" && ddl_aracKasa.SelectedValue != "")
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("SELECT*FROM Araclar WHERE marka = @marka and model=@model and kasaTipi=@kasaTipi", con);
                cmd.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@kasaTipi", ddl_aracKasa.SelectedItem.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    aracID = Convert.ToInt32(dr["aracID"]);
                }
                else
                {
                    ddl_aracModel.Items.Clear();
                    ddl_aracKasa.Items.Clear();
                }
                dr.Close();
                con.Close();
            }
        }

        protected void btn_temizle_Click(object sender, EventArgs e)
        {
            txt_musteriTc.Text = "";
            txt_musteriAd.Text = "";
            txt_musteriSoyad.Text = "";
            txt_aracPlaka.Text = "";
            txt_aracSase.Text = "";
            txt_modelTarihi.Text = "";
            txt_aracFiyat.Text = "";
            txt_satisFiyati.Text = "";
            ddl_aracModel.Items.Clear();
            ddl_aracKasa.Items.Clear();

            btn_satinAl.BackColor = Color.Gray;
        }
        private void Plaka_Dogrula()
        {
            if (txt_aracPlaka.Text!="")
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Select*from Satislar where plaka=@plaka", con);
                con.Open();
                cmd.Parameters.AddWithValue("@plaka", txt_aracPlaka.Text);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["Plaka"] = dr["plaka"].ToString();
                    txt_aracPlaka.Text = null;
                }
                dr.Close();
                con.Close();
            }           
        }
        protected void btn_satisİslemleri_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Satışİşlemleri.aspx");
        }
    }
}