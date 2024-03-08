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
    public partial class Araçİşlemleri : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["CeyhunDirilceCS"].ConnectionString;
        int gun=DateTime.Now.Day;
        int ay = DateTime.Now.Month;
        int yil = DateTime.Now.Year;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_aracModelTarih.Enabled = false;
                txt_aracModelTarih.Text = yil + "-" + ay + "-" + gun;
                btn_ekle.Enabled = false;
                btn_guncelle.Enabled = false;
                GridView1.Visible = false;
                Sase_Doldur();
                Marka_Doldur();
            }
        }
        private void GW_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("Select [saseNo] AS [Şase No],[marka] AS [Marka] ,[model] AS [Model]" +
                ",[kasaTipi] AS [Kasa Tipi],[segment] AS [Segment] ,[renk] AS [Renk] ,[modelTarihi] AS [Model Tarihi]" +
                ",[fiyat_TL] AS [Fiyat] , [jantBoyutu] AS [Jant Boyutu], [motorHacmi_CC] AS [Motor Hacmi]" +
                ",[yakitTuru] AS [Yakıt Türü] , [vitesTuru] AS [Vites Türü] from Araclar", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            con.Close();
        }
        private void Sase_Doldur()
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("select aracID, saseNo from Araclar", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_saseAra.DataSource = dr;
            ddl_saseAra.DataValueField = "aracID";
            ddl_saseAra.DataTextField = "saseNo";
            ddl_saseAra.DataBind();
            dr.Close();
            con.Close();
        }
        private void Marka_Doldur()
        {
            ddl_aracMarka.Items.Add("Audi");
            ddl_aracMarka.Items.Add("Mercedes");
            ddl_aracMarka.Items.Add("BMW");
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
        }
        protected void ddl_aracMarka_SelectedIndexChanged(object sender, EventArgs e)
        {
            Model_Doldur();
        }
        private void Model_Doldur()
        {
            if (ddl_aracMarka.SelectedItem.Text=="Audi")
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
        protected void ddl_aracModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            KasaTipi_Doldur();
        }
        private void KasaTipi_Doldur()
        {
            ddl_aracKasa.Items.Clear();
            ddl_aracKasa.Items.Add("Sedan");
            ddl_aracKasa.Items.Add("Hatchback");
            ddl_aracKasa.Items.Add("Station Wagon");
            ddl_aracKasa.Items.Add("Cabrio");
            ddl_aracKasa.Items.Add("Coupe");
            ddl_aracKasa.Items.Add("Suv");
            ddl_aracKasa.Items.Add("Roadster");
            ddl_aracKasa.Items.Add("MPV");
        }
        protected void ddl_aracKasa_SelectedIndexChanged(object sender, EventArgs e)
        {
            Renk_Doldur();
        }
        private void Renk_Doldur()
        {
            ddl_aracRenk.Items.Clear();
            ddl_aracRenk.Items.Add("Sarı");
            ddl_aracRenk.Items.Add("Kırmızı");
            ddl_aracRenk.Items.Add("Siyah");
            ddl_aracRenk.Items.Add("Mavi");
            ddl_aracRenk.Items.Add("Kahverengi");
            ddl_aracRenk.Items.Add("Beyaz");
            ddl_aracRenk.Items.Add("Gri");
            ddl_aracRenk.Items.Add("Yeşil");
        }
        protected void ddl_aracRenk_SelectedIndexChanged(object sender, EventArgs e)
        {
            Segment_Doldur();
        }
        private void Segment_Doldur()
        {
            ddl_aracSegment.Items.Clear();
            ddl_aracSegment.Items.Add("A");
            ddl_aracSegment.Items.Add("B");
            ddl_aracSegment.Items.Add("C");
            ddl_aracSegment.Items.Add("D");
            ddl_aracSegment.Items.Add("E");
            ddl_aracSegment.Items.Add("F");
            ddl_aracSegment.Items.Add("G");
            ddl_aracSegment.Items.Add("M");
            ddl_aracSegment.Items.Add("J");
            ddl_aracSegment.Items.Add("S");
        }
        protected void ddl_aracSegment_SelectedIndexChanged(object sender, EventArgs e)
        {
            Jant_Doldur();
            YakitTuru_Doldur();
            VitesTuru_Doldur();
        }
        private void Jant_Doldur()
        {
            ddl_aracJant.Items.Clear();
            ddl_aracJant.Items.Add("10");
            ddl_aracJant.Items.Add("11");
            ddl_aracJant.Items.Add("12");
            ddl_aracJant.Items.Add("13");
            ddl_aracJant.Items.Add("14");
            ddl_aracJant.Items.Add("15");
            ddl_aracJant.Items.Add("16");
            ddl_aracJant.Items.Add("17");
            ddl_aracJant.Items.Add("18");
            ddl_aracJant.Items.Add("19");
            ddl_aracJant.Items.Add("20");
        }
        private void YakitTuru_Doldur()
        {
            ddl_aracYakitTuru.Items.Clear();
            ddl_aracYakitTuru.Items.Add("Benzin");
            ddl_aracYakitTuru.Items.Add("Dizel");
            ddl_aracYakitTuru.Items.Add("Hibrit");
            ddl_aracYakitTuru.Items.Add("Elektrik");
        }
        private void VitesTuru_Doldur()
        {
            ddl_aracVitesTuru.Items.Clear();
            ddl_aracVitesTuru.Items.Add("Otomatik");
            ddl_aracVitesTuru.Items.Add("Yarı Otomatik");
            ddl_aracVitesTuru.Items.Add("Manuel");
        }
        protected void btn_temizle_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == true)
            {
                btn_ekle.Enabled = true;
            }
            txt_aracModelTarih.Text = yil + "-" + ay + "-" + gun;
            txt_aracSase.Text = null;
            ddl_aracModel.Items.Clear();
            ddl_aracKasa.Items.Clear();
            ddl_aracRenk.Items.Clear();
            ddl_aracSegment.Items.Clear();
            ddl_aracJant.Items.Clear();
            ddl_aracYakitTuru.Items.Clear();
            ddl_aracVitesTuru.Items.Clear();
            txt_aracFiyat.Text = null;
            txt_aracMotorHacim.Text = null;
            txt_aracSase.Enabled= true;
            btn_guncelle.Enabled = false;

            txt_aracSase.BackColor = Color.White;
            txt_aracFiyat.BackColor = Color.White;
            txt_aracMotorHacim.BackColor = Color.White;
        }
        protected void btn_gosterKapatYenile_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == false || btn_gosterKapatYenile.Text == "YENİLE")
            {
                GridView1.Visible = true;
                if (txt_aracSase.Enabled == true)
                    btn_ekle.Enabled = true;
                if (txt_aracSase.Enabled == false)
                    btn_guncelle.Enabled = true;
                btn_yazdir.Enabled = false;
                btn_gosterKapatYenile.Text = "KAPAT";
                btn_gosterKapatYenile.BackColor = Color.Gray;
                ddl_saseAra.SelectedValue = ddl_saseAra.SelectedValue;
                GW_Doldur();
                Sase_Doldur();
            }
            else if (GridView1.Visible == true && btn_gosterKapatYenile.Text != "YENİLE")
            {
                GridView1.Visible = false;
                btn_ekle.Enabled = false;
                btn_guncelle.Enabled = false;
                btn_gosterKapatYenile.Text = "GÖSTER";
            }
        }
        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            if (txt_aracSase.Text != "" && ddl_aracMarka.Text != "" && ddl_aracModel.Text != "" && ddl_aracKasa.Text != "" && ddl_aracJant.Text != "" && ddl_aracSegment.Text != "" && txt_aracFiyat.Text != "" && txt_aracMotorHacim.Text != "")
            {
                if (txt_aracSase.Text.Length == 17)
                {
                    SqlConnection con = new SqlConnection(conStr);
                    SqlCommand cmd = new SqlCommand("Select*from Araclar where saseNo=@saseNo", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@saseNo", txt_aracSase.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["saseNo"] = dr["saseNo"].ToString();
                        txt_aracSase.Text = "";
                        dr.Close();
                        con.Close();
                    }
                    else
                    {
                        if (txt_aracFiyat.Text.Length < 10)
                        {
                            if (txt_aracMotorHacim.Text.Length < 6)
                            {
                                SqlConnection con2 = new SqlConnection(conStr);
                                SqlCommand cmd2 = new SqlCommand("insert into Araclar(saseNo,marka,model,kasaTipi,jantBoyutu,segment,renk,modelTarihi,fiyat_TL,motorHacmi_CC,yakitTuru,vitesTuru) values " +
                                    "(@saseNo,@marka,@model,@kasaTipi,@jantBoyutu,@segment,@renk,@modelTarihi,@fiyat_TL,@motorHacmi_CC,@yakitTuru,@vitesTuru)", con2);
                                con2.Open();
                                cmd2.Parameters.AddWithValue("@saseNo", txt_aracSase.Text.ToUpper());
                                cmd2.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@kasaTipi", ddl_aracKasa.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@jantBoyutu", ddl_aracJant.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@segment", ddl_aracSegment.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@renk", ddl_aracRenk.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@modelTarihi", txt_aracModelTarih.Text);
                                cmd2.Parameters.AddWithValue("@fiyat_TL", txt_aracFiyat.Text);
                                cmd2.Parameters.AddWithValue("@motorHacmi_CC", txt_aracMotorHacim.Text);
                                cmd2.Parameters.AddWithValue("@yakitTuru", ddl_aracYakitTuru.SelectedItem.Text);
                                cmd2.Parameters.AddWithValue("@vitesTuru", ddl_aracVitesTuru.SelectedItem.Text);
                                cmd2.ExecuteNonQuery();
                                con2.Close();

                                btn_gosterKapatYenile.Text = "YENİLE";
                                btn_gosterKapatYenile.BackColor = Color.Green;

                                txt_aracFiyat.BackColor = Color.White;
                                txt_aracMotorHacim.BackColor = Color.White;
                                txt_aracSase.BackColor = Color.White;

                            }
                            else
                            {
                                txt_aracMotorHacim.BackColor = Color.Red;
                                txt_aracFiyat.BackColor = Color.White;
                            }
                        }
                        else
                        {
                            txt_aracFiyat.BackColor = Color.Red;
                            txt_aracMotorHacim.BackColor = Color.White;
                        }
                    }
                }
                else
                {
                    txt_aracSase.BackColor = Color.Red;
                    txt_aracFiyat.BackColor = Color.White;
                    txt_aracMotorHacim.BackColor = Color.White;

                }
            }
        }
        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (txt_aracSase.Text != "" && ddl_aracMarka.Text != "" && ddl_aracModel.Text != "" && ddl_aracKasa.Text != "" && ddl_aracJant.Text != "" && ddl_aracSegment.Text != "" && txt_aracFiyat.Text != "" && txt_aracMotorHacim.Text != "")
            {
                if (txt_aracSase.Text.Length == 17)
                {
                    if (txt_aracFiyat.Text.Length < 10)
                    {
                        if (txt_aracMotorHacim.Text.Length < 6)
                        {
                            SqlConnection con = new SqlConnection(conStr);
                            SqlCommand cmd = new SqlCommand("update Araclar set marka=@marka,model=@model,kasaTipi=@kasaTipi,jantBoyutu=@jantBoyutu" +
                                        ",segment=@segment,renk=@renk,modelTarihi=@modelTarihi,fiyat_TL=@fiyat_TL,motorHacmi_CC=@motorHacmi_CC" +
                                        ",yakitTuru=@yakitTuru,vitesTuru=@vitesTuru where saseNo=@saseNo", con);
                            con.Open();
                            cmd.Parameters.AddWithValue("@saseNo", txt_aracSase.Text.ToUpper());
                            cmd.Parameters.AddWithValue("@marka", ddl_aracMarka.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@model", ddl_aracModel.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@kasaTipi", ddl_aracKasa.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@jantBoyutu", ddl_aracJant.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@segment", ddl_aracSegment.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@renk", ddl_aracRenk.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@modelTarihi", txt_aracModelTarih.Text);
                            cmd.Parameters.AddWithValue("@fiyat_TL", txt_aracFiyat.Text);
                            cmd.Parameters.AddWithValue("@motorHacmi_CC", txt_aracMotorHacim.Text);
                            cmd.Parameters.AddWithValue("@yakitTuru", ddl_aracYakitTuru.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@vitesTuru", ddl_aracVitesTuru.SelectedItem.Text);
                            cmd.ExecuteNonQuery();
                            con.Close();

                            btn_gosterKapatYenile.Text = "YENİLE";
                            btn_gosterKapatYenile.BackColor = Color.Green;

                            txt_aracFiyat.BackColor = Color.White;
                            txt_aracMotorHacim.BackColor = Color.White;
                            txt_aracSase.BackColor = Color.White;

                        }
                        else
                        {
                            txt_aracMotorHacim.BackColor = Color.Red;
                            txt_aracFiyat.BackColor = Color.White;
                        }
                    }
                    else
                    {
                        txt_aracFiyat.BackColor = Color.Red;
                        txt_aracMotorHacim.BackColor = Color.White;
                    }
                }

                else
                {
                    txt_aracSase.BackColor = Color.Red;
                    txt_aracFiyat.BackColor = Color.White;
                    txt_aracMotorHacim.BackColor = Color.White;

                }
            }
        }

        protected void ddl_saseAra_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("Select [saseNo] AS [Şase No],[marka] AS [Marka] ,[model] AS [Model]" +
                ",[kasaTipi] AS [Kasa Tipi],[segment] AS [Segment] ,[renk] AS [Renk] ,[modelTarihi] AS [Model Tarihi]" +
                ",[fiyat_TL] AS [Fiyat] , [jantBoyutu] AS [Jant Boyutu], [motorHacmi_CC] AS [Motor Hacmi]" +
                ",[yakitTuru] AS [Yakıt Türü] , [vitesTuru] AS [Vites Türü] from Araclar where saseNo=@saseNo", con);
            cmd.Parameters.AddWithValue("@saseNo", ddl_saseAra.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            con.Close();
            btn_yazdir.Enabled = true;
        }
        protected void btn_yazdir_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("select*from Araclar where saseNo=@saseNo", con);
            con.Open();
            cmd.Parameters.AddWithValue("@saseNo", ddl_saseAra.SelectedItem.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Marka_Doldur();
                Model_Doldur();
                KasaTipi_Doldur();
                Renk_Doldur();
                Segment_Doldur();
                Jant_Doldur();
                YakitTuru_Doldur();
                VitesTuru_Doldur();

                txt_aracSase.Text = dr["saseNo"].ToString();
                txt_aracSase.Enabled = false;
                ddl_aracMarka.Text= dr["marka"].ToString();
                ddl_aracModel.SelectedItem.Text = dr["model"].ToString();
                ddl_aracKasa.Text = dr["kasaTipi"].ToString();
                ddl_aracRenk.Text = dr["renk"].ToString();
                ddl_aracSegment.Text =  dr["segment"].ToString();
                ddl_aracJant.Text= dr["jantBoyutu"].ToString();
                txt_aracModelTarih.Text = dr["modelTarihi"].ToString();
                txt_aracFiyat.Text = dr["fiyat_TL"].ToString();
                txt_aracMotorHacim.Text = dr["motorHacmi_CC"].ToString();
                ddl_aracYakitTuru.Text = dr["yakitTuru"].ToString();
                ddl_aracVitesTuru.Text = dr["vitesTuru"].ToString();

                btn_ekle.Enabled = false;
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