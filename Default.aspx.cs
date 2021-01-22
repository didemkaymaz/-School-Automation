using System;
using System.Web;
using System.Web.UI;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;
using TestDeğerlendirmeUygulaması_kou;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=.;Database=testdegerlendirmeotomasyonu;Integrated Security = True";

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int sicilNo = Convert.ToInt32(sicilNotxt.Text);

            int sifre = Convert.ToInt32(sifretxt.Text);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand sorgulaKomutu = new SqlCommand("SELECT *FROM kullaniciTbl WHERE sicilNo=@sicilNo AND sifre=@sifre", baglanti);
            sorgulaKomutu.Parameters.AddWithValue("@sicilNo", sicilNo);
            sorgulaKomutu.Parameters.AddWithValue("@sifre", sifre);


            baglanti.Open();
            SqlDataReader oku = sorgulaKomutu.ExecuteReader();
            if (oku.Read())
            {
                Session["kullaniciTbl"] = oku["sicilNo"].ToString();
                Response.Redirect("https://localhost:44393/kullanicisayfasi");
            }
            else
                Label1.Text = "Sicil numarası ya da şifre hatalı! Lütfen tekrar giriş yapınız.";
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }
      

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sicilNo = Convert.ToInt32(sicilNotxtadmin.Text);

            int sifre = Convert.ToInt32(sifretxtadmin.Text);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString);
            SqlCommand sorgulaKomutu = new SqlCommand("SELECT *FROM adminTbl WHERE sicilNo=@sicilNo AND sifre=@sifre", baglanti);
            sorgulaKomutu.Parameters.AddWithValue("@sicilNo", sicilNo);
            sorgulaKomutu.Parameters.AddWithValue("@sifre", sifre);

            baglanti.Open();
            SqlDataReader oku = sorgulaKomutu.ExecuteReader();
            if (oku.Read())
            {
                Session["adminTbl"] = oku["sicilNo"].ToString();
                Response.Redirect("https://localhost:44393/adminsayfasi");
            }
            else
                lblMessage1.Text = "Sicil numarası ya da şifre hatalı! Lütfen tekrar giriş yapınız.";
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }
    }
    }

