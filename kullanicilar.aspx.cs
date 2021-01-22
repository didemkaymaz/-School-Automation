using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Data;


namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class kullanicilar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();  
            conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(mainconn);

            GridViewRow row = GridView1.Rows[e.RowIndex];
            int sicilNo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            using (SqlCommand command = new SqlCommand("delete from atamaTbl where sicilNo=" + sicilNo, conn))
            {
                conn.Open();
                command.ExecuteNonQuery();

                //Change it to the primary table to delete the row that is to be deleted itself.
                command.CommandText = "delete from kullaniciTbl where sicilNo=" + sicilNo;
                command.ExecuteNonQuery();
                conn.Close();

                GridView1.DataBind();
            }
        }
    }
}