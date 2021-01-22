using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TestDeğerlendirmeUygulaması_kou;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System.Windows.Forms;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class bolumekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bolumAdi = bolumAditxt.Text;
            int fakulteID = Convert.ToInt32(fakulteAditxt.Text);
            string bolumKazanimi = bolumKazanimitxt.Text;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand ekleKomutu = new SqlCommand("INSERT INTO bolumTbl (fakulteID,bolumAdi,bolumKazanimi) VALUES (@fakulteID, @bolumAdi,@bolumKazanimi)", baglanti);
            baglanti.Open();
            ekleKomutu.Parameters.AddWithValue("@bolumAdi", bolumAdi);
            ekleKomutu.Parameters.AddWithValue("@fakulteID", fakulteID);
            ekleKomutu.Parameters.AddWithValue("@bolumKazanimi", bolumKazanimi);


            ekleKomutu.ExecuteNonQuery();
            baglanti.Close();
            
            Label1.Text = bolumAdi + " İsimli Bölüm Eklendi !";
        }
       
    }
}