using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class kullaniciekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kulAdi = kulAditxt.Text;
            string kulSoyadi = kulSoyaditxt.Text;
            int sicilNo = Convert.ToInt32(sicilNotxt.Text);
            int sifre = Convert.ToInt32(sifretxt.Text);
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO kullaniciTbl (kulAdi, kulSoyadi, sicilNo, sifre) VALUES (@kulAdi, @kulSoyadi, @sicilNo, @sifre)", baglanti);
            ekleKomutu.Parameters.AddWithValue("@kulAdi", kulAdi);
            ekleKomutu.Parameters.AddWithValue("@kulSoyadi", kulSoyadi);
            ekleKomutu.Parameters.AddWithValue("@sicilNo", sicilNo);
            ekleKomutu.Parameters.AddWithValue("@sifre", sifre);
            baglanti.Open();
            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();
            Label1.Text = kulAdi + " İsimli Kullanıcı Eklendi!";
        }        
    }
}