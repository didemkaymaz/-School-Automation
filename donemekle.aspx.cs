using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class donemekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string donemAdi = donemAditxt.Text;
            


            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO donemTbl (donemAdi) VALUES (@donemAdi)", baglanti);
            ekleKomutu.Parameters.AddWithValue("@donemAdi", donemAdi);
            

            baglanti.Open();
            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();

            Label1.Text = donemAdi + " İsimli Dönem Eklendi !";
        }

    }
}