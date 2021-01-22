using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class fakulteekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fakulteAdi = fakulteAditxt.Text;
            


            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO fakulteTbl (fakulteAdi) VALUES ( @fakulteAdi)", baglanti);
            ekleKomutu.Parameters.AddWithValue("@fakulteAdi", fakulteAdi);
     



            baglanti.Open();
            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();

            Label1.Text = fakulteAdi + " İsimli Fakülte Eklendi !";
        }
    }
}