using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace _211501050_CeyhunDirilce
{
    public partial class Müşteriİşlemleri : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        int yas;
        long tel, tc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_sil.Enabled = false;
                btn_guncelle.Enabled = false;
                GridView1.Visible = false;
                txt_musteriTc.Enabled = false;
                TC_Doldur();
            }
        }
        private void GW_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("Select [tc] AS [TC]" +
                ",[ad] AS [Ad],[soyad] AS [Soyad],[yas] AS [Yaş] ,[cinsiyet] AS [Cinsiyet] " +
                ",[tel] AS [Telefon] ,[eposta] AS [E-posta] ,[kullaniciAd] AS [Kullanıcı Ad] ,[adres] AS [Adres] from Musteriler", con);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            con.Close();
        }
        private void TC_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("select musteriID, tc from Musteriler", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_tcAra.DataSource = dr;
            ddl_tcAra.DataValueField = "musteriID";
            ddl_tcAra.DataTextField = "tc";
            ddl_tcAra.DataBind();
            dr.Close();
            con.Close();
        }
        protected void btn_temizle_Click(object sender, EventArgs e)
        {
            Temizle();
        }
        private void Temizle()
        {
            txt_musteriTc.Text = null;
            txt_musteriAd.Text = null;
            txt_musteriSoyad.Text = null;
            txt_musteriYas.Text = null;
            txt_musteriCinsiyet.Text = null;
            txt_musteriTel.Text = null;
            txt_musteriEposta.Text = null;
            txt_musteriAdres.Text = null;
            btn_guncelle.Enabled = false;
            btn_sil.Enabled = false;

            txt_musteriTc.BackColor = Color.White;
            txt_musteriAd.BackColor = Color.White;
            txt_musteriSoyad.BackColor = Color.White;
            txt_musteriYas.BackColor = Color.White;
            txt_musteriCinsiyet.BackColor = Color.White;
            txt_musteriTel.BackColor = Color.White;
            txt_musteriEposta.BackColor = Color.White;
            txt_musteriAdres.BackColor = Color.White;
        }
        protected void btn_gosterKapatYenile_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == false || btn_gosterKapatYenile.Text == "YENİLE")
            {
                GridView1.Visible = true;
                btn_guncelle.Enabled = true;
                btn_sil.Enabled = true;
                btn_gosterKapatYenile.Text = "KAPAT";
                btn_gosterKapatYenile.BackColor = Color.Gray;
                ddl_tcAra.SelectedValue = ddl_tcAra.SelectedValue;
                GW_Doldur();
                TC_Doldur();
            }
            else if (GridView1.Visible == true && btn_gosterKapatYenile.Text != "YENİLE")
            {
                GridView1.Visible = false;
                btn_sil.Enabled = false;
                btn_guncelle.Enabled = false;
                btn_gosterKapatYenile.Text = "GÖSTER";
            }
        }
        protected void btn_sil_Click(object sender, EventArgs e)
        {
            if (txt_musteriTc.Text.Length == 11)
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Select*from Musteriler where tc=@tc", con);
                con.Open();
                cmd.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txt_musteriTc.BackColor = Color.White;
                    txt_musteriAd.BackColor = Color.White;
                    txt_musteriSoyad.BackColor = Color.White;
                    txt_musteriYas.BackColor = Color.White;
                    txt_musteriCinsiyet.BackColor = Color.White;
                    txt_musteriTel.BackColor = Color.White;
                    txt_musteriEposta.BackColor = Color.White;
                    txt_musteriAdres.BackColor = Color.White;

                    Session["TC"] = dr["tc"].ToString();
                    dr.Close();
                    cmd = new SqlCommand("Delete from Musteriler where tc=@tc", con);
                    cmd.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                    cmd.ExecuteNonQuery();
                }
                con.Close();

                btn_gosterKapatYenile.Text = "YENİLE";
                btn_gosterKapatYenile.BackColor = Color.Green;
                Temizle();
            }
            else
            {
                txt_musteriTc.BackColor = Color.Red;
                txt_musteriAd.BackColor = Color.Red;
                txt_musteriSoyad.BackColor = Color.Red;
                txt_musteriYas.BackColor = Color.Red;
                txt_musteriCinsiyet.BackColor = Color.Red;
                txt_musteriTel.BackColor = Color.Red;
                txt_musteriEposta.BackColor = Color.Red;
                txt_musteriAdres.BackColor = Color.Red;
            }
        }
        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (txt_musteriAd.Text != "" && txt_musteriSoyad.Text != "" && txt_musteriYas.Text != "" && txt_musteriCinsiyet.Text != null && txt_musteriTel.Text != "" && txt_musteriEposta.Text != "" && txt_musteriAdres.Text != "")
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriTc.Text, @"^\d+$"))
                {
                    tc = Convert.ToInt64(txt_musteriTc.Text);
                }
                if (tc > 00000000000 && tc <= 99999999999)
                {
                    if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriYas.Text, @"^\d+$"))
                    {
                        yas = Convert.ToInt32(txt_musteriYas.Text);
                    }
                    if (yas >= 18 && yas < 100)
                    {
                        if (txt_musteriCinsiyet.Text == "E" || txt_musteriCinsiyet.Text == "K")
                        {
                            if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriTel.Text, @"^\d+$"))
                            {
                                tel = Convert.ToInt64(txt_musteriTel.Text);
                            }
                            if (tel > 00000000000 && tel <= 99999999999)
                            {
                                SqlConnection con = new SqlConnection(conStr);
                                SqlCommand cmd = new SqlCommand("update Musteriler set ad=@ad,soyad=@soyad,yas=@yas,cinsiyet=@cinsiyet" +
                                    ",eposta=@eposta,adres=@adres,tel=@tel where tc=@tc", con);
                                con.Open();
                                cmd.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                                cmd.Parameters.AddWithValue("@ad", txt_musteriAd.Text);
                                cmd.Parameters.AddWithValue("@soyad", txt_musteriSoyad.Text);
                                cmd.Parameters.AddWithValue("@yas", txt_musteriYas.Text);
                                cmd.Parameters.AddWithValue("@cinsiyet", txt_musteriCinsiyet.Text);
                                cmd.Parameters.AddWithValue("@tel", txt_musteriTel.Text);
                                cmd.Parameters.AddWithValue("@eposta", txt_musteriEposta.Text);
                                cmd.Parameters.AddWithValue("@adres", txt_musteriAdres.Text);
                                cmd.ExecuteNonQuery();
                                con.Close();

                                btn_gosterKapatYenile.Text = "YENİLE";
                                btn_gosterKapatYenile.BackColor = Color.Green;

                                txt_musteriTc.BackColor = Color.White;
                                txt_musteriAd.BackColor = Color.White;
                                txt_musteriSoyad.BackColor = Color.White;
                                txt_musteriYas.BackColor = Color.White;
                                txt_musteriCinsiyet.BackColor = Color.White;
                                txt_musteriTel.BackColor = Color.White;
                                txt_musteriEposta.BackColor = Color.White;
                                txt_musteriAdres.BackColor = Color.White;
                            }
                            else
                            {
                                txt_musteriTel.BackColor = Color.Red;
                                txt_musteriTel.Text = txt_musteriTel.MaxLength - txt_musteriTel.Text.Length + " Hane eksik";
                                txt_musteriTc.BackColor = Color.White;
                                txt_musteriTc.BackColor = Color.White;
                                txt_musteriAd.BackColor = Color.White;
                                txt_musteriSoyad.BackColor = Color.White;
                                txt_musteriYas.BackColor = Color.White;
                                txt_musteriCinsiyet.BackColor = Color.White;
                                txt_musteriEposta.BackColor = Color.White;
                                txt_musteriAdres.BackColor = Color.White;
                            }
                        }
                        else
                        {
                            txt_musteriCinsiyet.BackColor = Color.Red;
                            txt_musteriCinsiyet.Text = "E veya K";
                            txt_musteriTc.BackColor = Color.White;
                            txt_musteriTc.BackColor = Color.White;
                            txt_musteriAd.BackColor = Color.White;
                            txt_musteriSoyad.BackColor = Color.White;
                            txt_musteriYas.BackColor = Color.White;
                            txt_musteriTel.BackColor = Color.White;
                            txt_musteriEposta.BackColor = Color.White;
                            txt_musteriAdres.BackColor = Color.White;
                        }
                    }
                    else
                    {
                        txt_musteriYas.BackColor = Color.Red;
                        txt_musteriTc.BackColor = Color.White;
                        txt_musteriTc.BackColor = Color.White;
                        txt_musteriAd.BackColor = Color.White;
                        txt_musteriSoyad.BackColor = Color.White;
                        txt_musteriCinsiyet.BackColor = Color.White;
                        txt_musteriTel.BackColor = Color.White;
                        txt_musteriEposta.BackColor = Color.White;
                        txt_musteriAdres.BackColor = Color.White;
                    }
                }
                else
                {
                    txt_musteriTc.BackColor = Color.Red;
                    txt_musteriTc.Text = Convert.ToString(txt_musteriTc.MaxLength - txt_musteriTc.Text.Length) + " Hane eksik";
                    txt_musteriAd.BackColor = Color.White;
                    txt_musteriSoyad.BackColor = Color.White;
                    txt_musteriYas.BackColor = Color.White;
                    txt_musteriCinsiyet.BackColor = Color.White;
                    txt_musteriTel.BackColor = Color.White;
                    txt_musteriEposta.BackColor = Color.White;
                    txt_musteriAdres.BackColor = Color.White;
                }
            }

            else
            {
                txt_musteriTc.BackColor = Color.Red;
                txt_musteriAd.BackColor = Color.Red;
                txt_musteriSoyad.BackColor = Color.Red;
                txt_musteriYas.BackColor = Color.Red;
                txt_musteriCinsiyet.BackColor = Color.Red;
                txt_musteriTel.BackColor = Color.Red;
                txt_musteriEposta.BackColor = Color.Red;
                txt_musteriAdres.BackColor = Color.Red;
            }
        }
    protected void ddl_tcKimlik_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand("select [tc] AS [TC]" +
            ",[ad] AS [Ad],[soyad] AS [Soyad],[yas] AS [Yaş] ,[cinsiyet] AS [Cinsiyet]" +
            ",[tel] AS [Telefon] ,[eposta] AS [E-posta] ,[adres] AS [Adres] from Musteriler where tc=@tc", con);
        cmd.Parameters.AddWithValue("@tc", ddl_tcAra.SelectedItem.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Close();
        con.Close();
    }
        protected void btn_yazdir_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("select*from Musteriler where tc=@tc", con);
            con.Open();
            cmd.Parameters.AddWithValue("@tc", ddl_tcAra.SelectedItem.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txt_musteriTc.BackColor = Color.White;
                txt_musteriAd.BackColor = Color.White;
                txt_musteriSoyad.BackColor = Color.White;
                txt_musteriYas.BackColor = Color.White;
                txt_musteriCinsiyet.BackColor = Color.White;
                txt_musteriTel.BackColor = Color.White;
                txt_musteriEposta.BackColor = Color.White;
                txt_musteriAdres.BackColor = Color.White;

                txt_musteriTc.Text = dr["tc"].ToString();
                txt_musteriTc.Enabled = false;
                txt_musteriAd.Text = dr["ad"].ToString();
                txt_musteriSoyad.Text = dr["soyad"].ToString();
                txt_musteriYas.Text = dr["yas"].ToString();
                txt_musteriCinsiyet.Text = dr["cinsiyet"].ToString();
                txt_musteriTel.Text = dr["tel"].ToString();
                txt_musteriEposta.Text = dr["eposta"].ToString();
                txt_musteriAdres.Text = dr["adres"].ToString();
                btn_sil.Enabled = true;
                btn_guncelle.Enabled = true;
            }
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