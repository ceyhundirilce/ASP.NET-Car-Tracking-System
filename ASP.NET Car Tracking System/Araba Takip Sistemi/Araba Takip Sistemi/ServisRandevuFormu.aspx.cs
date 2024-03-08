using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211501050_CeyhunDirilce
{
    public partial class Servisİşlemleri : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        long tel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Servis_Doldur();
                Marka_Doldur();
                Sube_Doldur();
            }
        }
        private void Servis_Doldur()
        {
            ddl_servisTipi.Items.Add("Periyodik Bakım");
            ddl_servisTipi.Items.Add("Karoseri");
            ddl_servisTipi.Items.Add("Mekanik");
            ddl_servisTipi.Items.Add("Diğer");
        }
        private void Marka_Doldur()
        {
            ddl_aracMarka.Items.Add("Audi");
            ddl_aracMarka.Items.Add("BMW");
            ddl_aracMarka.Items.Add("Mercedes");
            ddl_aracMarka.Items.Add("Ford");
            ddl_aracMarka.Items.Add("Honda");
            ddl_aracMarka.Items.Add("Nissan");
            ddl_aracMarka.Items.Add("Volvo");
            ddl_aracMarka.Items.Add("Renault");
            ddl_aracMarka.Items.Add("Hyundai");
            ddl_aracMarka.Items.Add("Peugeot");
            ddl_aracMarka.Items.Add("Fiat");
            ddl_aracMarka.Items.Add("Opel");
            ddl_aracMarka.Items.Add("Toyota");
            Model_Doldur();
        }
        protected void ddl_aracMarka_SelectedIndexChanged(object sender, EventArgs e)
        {
            Model_Doldur();
        }
        private void Model_Doldur()
        {
            if (ddl_aracMarka.SelectedItem.Text == "Audi")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("A3");
                ddl_aracModel.Items.Add("A4");
                ddl_aracModel.Items.Add("A5");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Mercedes")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("A Serisi");
                ddl_aracModel.Items.Add("B Serisi");
                ddl_aracModel.Items.Add("C Serisi");
                ddl_aracModel.Items.Add("E Serisi");
                ddl_aracModel.Items.Add("G Serisi");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "BMW")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("5 Serisi");
                ddl_aracModel.Items.Add("i4 Serisi");
                ddl_aracModel.Items.Add("8 Serisi");
                ddl_aracModel.Items.Add("M8 Serisi");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Ford")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Fiesta");
                ddl_aracModel.Items.Add("Focus");
                ddl_aracModel.Items.Add("Kuga");
                ddl_aracModel.Items.Add("Mondeo");
                ddl_aracModel.Items.Add("Ranger");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Ford")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Fiesta");
                ddl_aracModel.Items.Add("Focus");
                ddl_aracModel.Items.Add("Kuga");
                ddl_aracModel.Items.Add("Mondeo");
                ddl_aracModel.Items.Add("Ranger");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Honda")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Civic");
                ddl_aracModel.Items.Add("City");
                ddl_aracModel.Items.Add("Jazz");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Nissan")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Micra");
                ddl_aracModel.Items.Add("Qashqai");
                ddl_aracModel.Items.Add("Juke");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Volvo")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("V40");
                ddl_aracModel.Items.Add("XC40");
                ddl_aracModel.Items.Add("XC90");
                ddl_aracModel.Items.Add("S60");
                ddl_aracModel.Items.Add("S90");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Renault")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Clio");
                ddl_aracModel.Items.Add("Megane");
                ddl_aracModel.Items.Add("Symbol");
                ddl_aracModel.Items.Add("Taliant");
                ddl_aracModel.Items.Add("Captur");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Hyundai")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("i20");
                ddl_aracModel.Items.Add("i30");
                ddl_aracModel.Items.Add("i40");
                ddl_aracModel.Items.Add("Kona");
                ddl_aracModel.Items.Add("Elantra");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Peugeot")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("208");
                ddl_aracModel.Items.Add("308");
                ddl_aracModel.Items.Add("2008");
                ddl_aracModel.Items.Add("3008");
                ddl_aracModel.Items.Add("5008");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Fiat")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("500X Cross");
                ddl_aracModel.Items.Add("500X Sport");
                ddl_aracModel.Items.Add("500L Cross Plus");
                ddl_aracModel.Items.Add("Fullback");
                ddl_aracModel.Items.Add("Fiorino");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Opel")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Corsa");
                ddl_aracModel.Items.Add("Crossland");
                ddl_aracModel.Items.Add("Grandland X");
            }
            else if (ddl_aracMarka.SelectedItem.Text == "Toyota")
            {
                ddl_aracModel.Items.Clear();
                ddl_aracModel.Items.Add("Corolla");
                ddl_aracModel.Items.Add("Yaris");
                ddl_aracModel.Items.Add("C-HR");
                ddl_aracModel.Items.Add("RAV4");
            }
        }
        private void Sube_Doldur()
        {
            ddl_sube.Items.Add("Akçakoca");
            ddl_sube.Items.Add("Gölyaka");
            ddl_sube.Items.Add("Gümüşova");
            ddl_sube.Items.Add("Kaynaşlı");
            ddl_sube.Items.Add("Yığılca");
            ddl_sube.Items.Add("Çilimli");
            ddl_sube.Items.Add("Cumayeri");
        }
        protected void btn_randevuAl_Click(object sender, EventArgs e)
        {
            if (txt_musteriAd.Text != "" && txt_musteriSoyad.Text != "" && txt_aracPlaka.Text != "" && txt_servisTarihi.Text != "" & txt_musteriEposta.Text != "" && txt_musteriTel.Text != "" && txt_aciklama.Text != "")
            {
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Select*from Servisler where plaka=@plaka", con);
                con.Open();
                cmd.Parameters.AddWithValue("@plaka", txt_aracPlaka.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["plaka"] = dr["plaka"].ToString();
                    txt_aracPlaka.Text = "";
                    lbl_plakaKontrol.Text = "Mevcut";
                    dr.Close();
                    con.Close();
                }
                else
                {
                    lbl_plakaKontrol.Text = "";
                    if (System.Text.RegularExpressions.Regex.IsMatch(txt_musteriTel.Text, @"^\d+$"))
                    {
                        tel = Convert.ToInt64(txt_musteriTel.Text);
                    }
                    if (tel > 00000000000 && tel <= 99999999999)
                    {
                        SqlConnection con2 = new SqlConnection(conStr);
                        SqlCommand cmd2 = new SqlCommand("insert into Servisler(servisTipi,ad,soyad,eposta,tel,marka,model,plaka,kilometre,servisTarihi,sube,aciklama) values " +
                            "(@servisTipi,@ad,@soyad,@eposta,@tel,@marka,@model,@plaka,@kilometre,@servisTarihi,@sube,@aciklama)", con2);
                        con2.Open();
                        cmd2.Parameters.AddWithValue("@servisTipi", ddl_servisTipi.SelectedItem.Text);
                        cmd2.Parameters.AddWithValue("@ad", txt_musteriAd.Text);
                        cmd2.Parameters.AddWithValue("@soyad", txt_musteriSoyad.Text);
                        cmd2.Parameters.AddWithValue("@eposta", txt_musteriEposta.Text);
                        cmd2.Parameters.AddWithValue("@tel", txt_musteriTel.Text);
                        cmd2.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
                        cmd2.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
                        cmd2.Parameters.AddWithValue("@plaka", txt_aracPlaka.Text);
                        cmd2.Parameters.AddWithValue("@kilometre", txt_aracKm.Text);
                        cmd2.Parameters.AddWithValue("@servisTarihi", txt_servisTarihi.Text);
                        cmd2.Parameters.AddWithValue("@sube", ddl_sube.SelectedItem.Text);
                        cmd2.Parameters.AddWithValue("@aciklama", txt_aciklama.Text);
                        cmd2.ExecuteNonQuery();
                        con2.Close();

                        btn_randevuAl.BackColor = Color.Green;
                    }
                    else
                    {
                        txt_musteriTel.Text = "";
                    }
                }
            }
        }
        protected void btn_temizle_Click(object sender, EventArgs e)
        {
            txt_musteriAd.Text = "";
            txt_musteriSoyad.Text = "";
            txt_servisTarihi.Text = "";
            txt_musteriEposta.Text = "";
            txt_musteriTel.Text = "";
            txt_aracPlaka.Text = "";
            txt_aracKm.Text = "";
            txt_aciklama.Text = "";
        }
    }
}