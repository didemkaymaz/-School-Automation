using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;




namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class dersata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int bolumID = Convert.ToInt32(bolumAditxt.Text);
            int donemID = Convert.ToInt32(donemAditxt.Text);
            int dersKodu = Convert.ToInt32(dersAditxt.Text);
            int sicilNo = Convert.ToInt32(sicilNotxt.Text);
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO atamaTbl (bolumID, donemID, dersKodu, sicilNo) VALUES (@bolumID, @donemID, @dersKodu, @sicilNo)", baglanti);
            baglanti.Open();
            ekleKomutu.Parameters.AddWithValue("@bolumID", bolumID);
            ekleKomutu.Parameters.AddWithValue("@donemID", donemID);
            ekleKomutu.Parameters.AddWithValue("@dersKodu", dersKodu);
            ekleKomutu.Parameters.AddWithValue("@sicilNo", sicilNo);
            
            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();

            Label5.Text =  " Ders Ataması Başarılı Bir Şekilde Gerçekleşti !";
        }

        protected void dersAditxt_TextChanged(object sender, EventArgs e)
        {
            Label5.Text = dersAditxt.Text;
                
        }
    }
}