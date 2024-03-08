using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace _211501050_CeyhunDirilce
{
    public partial class PersonelMüşteriGirişi : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        int yas;
        long tel, tc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl_tc.Visible = false;
                lbl_ad.Visible = false;
                lbl_soyad.Visible = false;
                lbl_yas.Visible = false;
                lbl_cinsiyet.Visible = false;
                lbl_tel.Visible = false;
                lbl_ePosta.Visible = false;
                lbl_kullaniciAd.Visible = false;
                lbl_sifre.Visible = false;
                lbl_adres.Visible = false;
                txt_musteriTc.Visible = false;
                txt_musteriAd.Visible = false;
                txt_musteriSoyad.Visible = false;
                txt_musteriYas.Visible = false;
                txt_musteriCinsiyet.Visible = false;
                txt_musteriTel.Visible = false;
                txt_musteriEposta.Visible = false;
                txt_musteriKullaniciAd.Visible = false;
                txt_musteriSifre.Visible = false;
                txt_musteriAdres.Visible = false;
                btn_giris.Visible = false;
                btn_giris.BackColor = Color.Green;
                btn_kayit.Visible = false;
            }
        }
        protected void btn_personelGiris_Click(object sender, ImageClickEventArgs e)
        {
            txt_musteriTc.Text = null;
            txt_musteriAd.Text = null;
            txt_musteriSoyad.Text = null;
            txt_musteriYas.Text = null;
            txt_musteriCinsiyet.Text = null;
            txt_musteriTel.Text = null;
            txt_musteriEposta.Text = null;
            txt_musteriKullaniciAd.Text = null;
            txt_musteriSifre.Text = null;
            txt_musteriAdres.Text = null;

            txt_musteriTc.BackColor = Color.White;
            txt_musteriAd.BackColor = Color.White;
            txt_musteriSoyad.BackColor = Color.White;
            txt_musteriYas.BackColor = Color.White;
            txt_musteriCinsiyet.BackColor = Color.White;
            txt_musteriTel.BackColor = Color.White;
            txt_musteriEposta.BackColor = Color.White;
            txt_musteriKullaniciAd.BackColor = Color.White;
            txt_musteriSifre.BackColor = Color.White;
            txt_musteriAdres.BackColor = Color.White;

            lbl_baslik.Text = "PERSONEL GİRİŞ";
            lbl_tc.Visible = false;
            lbl_ad.Visible = false;
            lbl_soyad.Visible = false;
            lbl_yas.Visible = false;
            lbl_cinsiyet.Visible = false;
            lbl_tel.Visible = false;
            lbl_ePosta.Visible = false;
            lbl_kullaniciAd.Visible = true;
            lbl_sifre.Visible = true;
            lbl_adres.Visible = false;
            txt_musteriTc.Visible = false;
            txt_musteriAd.Visible = false;
            txt_musteriSoyad.Visible = false;
            txt_musteriYas.Visible = false;
            txt_musteriCinsiyet.Visible = false;
            txt_musteriTel.Visible = false;
            txt_musteriEposta.Visible = false;
            txt_musteriKullaniciAd.Visible = true;
            txt_musteriSifre.Visible = true;
            txt_musteriAdres.Visible = false;
            btn_giris.Enabled = true;
            btn_kayit.Enabled = false;
            btn_giris.Height = 45;
            btn_kayit.Height = 25;
            btn_giris.BackColor = Color.Green;
            btn_kayit.BackColor = Color.Gray;
            btn_personelGiris.BorderStyle = BorderStyle.Dashed;
            btn_musteriGiris.BorderStyle = BorderStyle.NotSet;
            btn_kayit.Visible = true;
            btn_kayit.Enabled = false;
            btn_giris.Visible = true;
        }
        protected void btn_musteriGiris_Click(object sender, ImageClickEventArgs e)
        {
            if (btn_giris.BackColor == Color.Green)
            {
                txt_musteriTc.Text = null;
                txt_musteriAd.Text = null;
                txt_musteriSoyad.Text = null;
                txt_musteriYas.Text = null;
                txt_musteriCinsiyet.Text = null;
                txt_musteriTel.Text = null;
                txt_musteriEposta.Text = null;
                txt_musteriKullaniciAd.Text = null;
                txt_musteriSifre.Text = null;
                txt_musteriAdres.Text = null;

                txt_musteriTc.BackColor = Color.White;
                txt_musteriAd.BackColor = Color.White;
                txt_musteriSoyad.BackColor = Color.White;
                txt_musteriYas.BackColor = Color.White;
                txt_musteriCinsiyet.BackColor = Color.White;
                txt_musteriTel.BackColor = Color.White;
                txt_musteriEposta.BackColor = Color.White;
                txt_musteriKullaniciAd.BackColor = Color.White;
                txt_musteriSifre.BackColor = Color.White;
                txt_musteriAdres.BackColor = Color.White;


                lbl_baslik.Text = "MÜŞTERİ GİRİŞ";
                lbl_kullaniciAd.Visible = true;
                lbl_sifre.Visible = true;
                txt_musteriKullaniciAd.Visible = true;
                txt_musteriSifre.Visible = true;
                btn_kayit.BackColor = Color.Gray;
                btn_giris.BackColor = Color.Green;
                btn_kayit.Height = 25;
                btn_giris.Height = 45;
                btn_personelGiris.BorderStyle = BorderStyle.NotSet;
                btn_musteriGiris.BorderStyle = BorderStyle.Dashed;
                btn_kayit.Visible = true;
                btn_kayit.Enabled = true;
                btn_giris.Visible = true;
            }
        }
        protected void btn_servisİslemleri_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ServisRandevuFormu.aspx");
        }
        protected void btn_giris_Click(object sender, EventArgs e)
        {

            if (btn_personelGiris.BorderStyle == BorderStyle.Dashed)
            {
                if (txt_musteriKullaniciAd.Text == "ceyhun" && txt_musteriSifre.Text == "14603")
                {
                    Response.Redirect("Müşteriİşlemleri.aspx");
                }
                else
                {
                    txt_musteriKullaniciAd.Text = null;
                    txt_musteriSifre.Text = null;
                }
            }

            else if (btn_musteriGiris.BorderStyle == BorderStyle.Dashed)
            {
                lbl_tc.Visible = false;
                lbl_ad.Visible = false;
                lbl_soyad.Visible = false;
                lbl_yas.Visible = false;
                lbl_cinsiyet.Visible = false;
                lbl_tel.Visible = false;
                lbl_ePosta.Visible = false;
                lbl_kullaniciAd.Visible = true;
                lbl_sifre.Visible = true;
                lbl_adres.Visible = false;
                txt_musteriTc.Visible = false;
                txt_musteriAd.Visible = false;
                txt_musteriSoyad.Visible = false;
                txt_musteriYas.Visible = false;
                txt_musteriCinsiyet.Visible = false;
                txt_musteriTel.Visible = false;
                txt_musteriEposta.Visible = false;
                txt_musteriKullaniciAd.Visible = true;
                txt_musteriSifre.Visible = true;
                txt_musteriAdres.Visible = false;

                if (txt_musteriKullaniciAd.Text != "" && txt_musteriSifre.Text != "")
                {
                    SqlConnection con = new SqlConnection(conStr);
                    SqlCommand cmd = new SqlCommand("Select*from Musteriler where kullaniciAd=@kullaniciAd and parola=@parola", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@kullaniciAd", txt_musteriKullaniciAd.Text);
                    cmd.Parameters.AddWithValue("@parola", txt_musteriSifre.Text);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["KullaniciAd"] = dr["kullaniciAd"].ToString();
                        Response.Redirect("Satışİşlemleri.aspx");
                    }
                    else
                    {
                        txt_musteriKullaniciAd.Text = null;
                        txt_musteriSifre.Text = null;
                    }
                    dr.Close();
                    con.Close();
                }

                lbl_baslik.Text = "MÜŞTERİ GİRİŞ";
                btn_giris.BackColor = Color.Green;
                btn_kayit.BackColor = Color.Gray;
                btn_kayit.Height = 25;
                btn_giris.Height = 45;
                txt_musteriKullaniciAd.BackColor = Color.White;
                txt_musteriSifre.BackColor = Color.White;
            }
        }

        protected void btn_kayit_Click(object sender, EventArgs e)
        {
            if (txt_musteriTc.Visible == false)
            {
                btn_kayit.BackColor = Color.Green;
                btn_giris.BackColor = Color.Gray;
                btn_kayit.Height = 45;
                btn_giris.Height = 25;
                lbl_adres.Visible = true;
                txt_musteriAdres.Visible = true;

                txt_musteriTc.BackColor = Color.White;
                txt_musteriAd.BackColor = Color.White;
                txt_musteriSoyad.BackColor = Color.White;
                txt_musteriYas.BackColor = Color.White;
                txt_musteriCinsiyet.BackColor = Color.White;
                txt_musteriTel.BackColor = Color.White;
                txt_musteriEposta.BackColor = Color.White;
                txt_musteriKullaniciAd.BackColor = Color.White;
                txt_musteriSifre.BackColor = Color.White;
                txt_musteriAdres.BackColor = Color.White;
            }
            else
            {
                if (txt_musteriTc.Text != "" && txt_musteriAd.Text != "" && txt_musteriSoyad.Text != "" && txt_musteriYas.Text != "" && txt_musteriCinsiyet.Text != "" && txt_musteriTel.Text != "" && txt_musteriEposta.Text != "" && txt_musteriKullaniciAd.Text != "" && txt_musteriSifre.Text != "" && txt_musteriAdres.Text != "")
                {
                    SqlConnection con2 = new SqlConnection(conStr);
                    SqlCommand cmd2 = new SqlCommand("Select*from Musteriler where tc=@tc or kullaniciAd=@kullaniciAd", con2);
                    con2.Open();
                    cmd2.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                    cmd2.Parameters.AddWithValue("@kullaniciAd", txt_musteriKullaniciAd.Text);
                    SqlDataReader dr = cmd2.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["TC"] = dr["tc"].ToString();
                        txt_musteriTc.BackColor = Color.Red;
                        Session["KullaniciAd"] = dr["kullaniciAd"].ToString();
                        txt_musteriKullaniciAd.BackColor = Color.Red;

                        dr.Close();
                        con2.Close();
                    }
                    else
                    {
                        if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriTc.Text, @"^\d{11}$"))
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
                                    if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriTel.Text, @"^\d{11}$"))
                                    {
                                        tel = Convert.ToInt64(txt_musteriTel.Text);
                                    }
                                    if (tel > 00000000000 && tel <= 99999999999)
                                    {
                                        if (txt_musteriKullaniciAd.Text.Length > 2 && txt_musteriKullaniciAd.Text.Length <= 15)
                                        {
                                            txt_musteriKullaniciAd.Text = txt_musteriKullaniciAd.Text.Replace(" ", "");
                                            SqlConnection con = new SqlConnection(conStr);
                                            SqlCommand cmd = new SqlCommand("insert into Musteriler(tc,ad,soyad,yas,cinsiyet,tel,eposta,kullaniciAd,parola,adres) values " +
                                                "(@tc,@ad,@soyad,@yas,@cinsiyet,@tel,@eposta,@kullaniciAd,@parola,@adres)", con);
                                            con.Open();
                                            cmd.Parameters.AddWithValue("@tc", txt_musteriTc.Text);
                                            cmd.Parameters.AddWithValue("@ad", txt_musteriAd.Text);
                                            cmd.Parameters.AddWithValue("@soyad", txt_musteriSoyad.Text);
                                            cmd.Parameters.AddWithValue("@yas", txt_musteriYas.Text);
                                            cmd.Parameters.AddWithValue("@cinsiyet", txt_musteriCinsiyet.Text);
                                            cmd.Parameters.AddWithValue("@tel", txt_musteriTel.Text);
                                            cmd.Parameters.AddWithValue("@eposta", txt_musteriEposta.Text);
                                            cmd.Parameters.AddWithValue("@kullaniciAd", txt_musteriKullaniciAd.Text);
                                            cmd.Parameters.AddWithValue("@parola", txt_musteriSifre.Text);
                                            cmd.Parameters.AddWithValue("@adres", txt_musteriAdres.Text);
                                            cmd.ExecuteNonQuery();
                                            con.Close();

                                            Response.Redirect("PersonelMüşteriGirişi.aspx");
                                        }
                                        else
                                        {
                                            txt_musteriKullaniciAd.BackColor = Color.Red;
                                            txt_musteriTc.BackColor = Color.White;
                                            txt_musteriAd.BackColor = Color.White;
                                            txt_musteriSoyad.BackColor = Color.White;
                                            txt_musteriYas.BackColor = Color.White;
                                            txt_musteriCinsiyet.BackColor = Color.White;
                                            txt_musteriTel.BackColor = Color.White;
                                            txt_musteriEposta.BackColor = Color.White;
                                            txt_musteriSifre.BackColor = Color.White;
                                            txt_musteriAdres.BackColor = Color.White;
                                        }
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
                                        txt_musteriKullaniciAd.BackColor = Color.White;
                                        txt_musteriSifre.BackColor = Color.White;
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
                                    txt_musteriKullaniciAd.BackColor = Color.White;
                                    txt_musteriSifre.BackColor = Color.White;
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
                                txt_musteriKullaniciAd.BackColor = Color.White;
                                txt_musteriSifre.BackColor = Color.White;
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
                            txt_musteriKullaniciAd.BackColor = Color.White;
                            txt_musteriSifre.BackColor = Color.White;
                            txt_musteriAdres.BackColor = Color.White;
                        }
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
                    txt_musteriKullaniciAd.BackColor = Color.Red;
                    txt_musteriSifre.BackColor = Color.Red;
                    txt_musteriAdres.BackColor = Color.Red;
                }
            }
            lbl_baslik.Text = "MÜŞTERİ KAYIT";
            lbl_tc.Visible = true;
            lbl_ad.Visible = true;
            lbl_soyad.Visible = true;
            lbl_yas.Visible = true;
            lbl_cinsiyet.Visible = true;
            lbl_tel.Visible = true;
            lbl_ePosta.Visible = true;
            lbl_kullaniciAd.Visible = true;
            lbl_sifre.Visible = true;
            lbl_adres.Visible = true;
            txt_musteriTc.Visible = true;
            txt_musteriAd.Visible = true;
            txt_musteriSoyad.Visible = true;
            txt_musteriYas.Visible = true;
            txt_musteriCinsiyet.Visible = true;
            txt_musteriTel.Visible = true;
            txt_musteriEposta.Visible = true;
            txt_musteriKullaniciAd.Visible = true;
            txt_musteriSifre.Visible = true;
            txt_musteriAdres.Visible = true;
        }
    }
}