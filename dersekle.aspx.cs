using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.Unicode;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class dersekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dersAdi = dersAditxt.Text;
            int dersKodu= Convert.ToInt32(dersKodutxt.Text);
            string dersKazanim = kazanimAditxt.Text;
            int bolumID = Convert.ToInt32(bolumAditxt.Text);
            int donemID = Convert.ToInt32(donemAditxt.Text);


            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO dersTbl (dersAdi, dersKodu,dersKazanim,bolumID,donemID) VALUES (@dersAdi, @dersKodu,@dersKazanim,@bolumID,@donemID)", baglanti);
            ekleKomutu.Parameters.AddWithValue("@dersAdi", dersAdi);
            ekleKomutu.Parameters.AddWithValue("@dersKodu", dersKodu);
            ekleKomutu.Parameters.AddWithValue("@dersKazanim", dersKazanim);
            ekleKomutu.Parameters.AddWithValue("@bolumID", bolumID);
            ekleKomutu.Parameters.AddWithValue("@donemID", donemID);

            baglanti.Open();
            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();

            Label1.Text = dersAdi + " İsimli Ders Eklendi !";
        }
    }
}