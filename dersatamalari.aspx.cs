using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.SqlTypes;

namespace TestDeğerlendirmeUygulaması_kou
{
    public partial class dersatamalari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string mainconn = ConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(mainconn);
            ////conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
            //string sqlquery = "SELECT atamaTbl.atamaID,kullaniciTbl.sicilNo,bolumTbl.bolumAdi,dersTbl.dersAdi,donemTbl.donemAdi from [dbo].[atamaTbl] inner join [dbo].[kullaniciTbl] on atamaTbl.sicilNo=kullaniciTbl.sicilNo  inner join [dbo].[bolumTbl] on atamaTbl.bolumID=bolumTbl.bolumID inner join [dbo].[dersTbl] on atamaTbl.dersKodu=dersTbl.dersKodu inner join [dbo].[donemTbl] on atamaTbl.donemID=donemTbl.donemID";
            //SqlCommand sqlcomm = new SqlCommand(sqlquery, conn);
            //conn.Open();
            //SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            //DataTable dt = new DataTable();

            //sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //conn.Close();

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(mainconn);
            //conn.ConnectionString = "Server=DESKTOP-KRB9K2C/mssqlserver02;Database=testdegerlendirmeotomasyonu;Integrated Security = True";
            string sqlquery = "SELECT atamaTbl.atamaID,kullaniciTbl.sicilNo,bolumTbl.bolumAdi,dersTbl.dersAdi,donemTbl.donemAdi from [dbo].[atamaTbl] inner join [dbo].[kullaniciTbl] on atamaTbl.sicilNo=kullaniciTbl.sicilNo  inner join [dbo].[bolumTbl] on atamaTbl.bolumID=bolumTbl.bolumID inner join [dbo].[dersTbl] on atamaTbl.dersKodu=dersTbl.dersKodu inner join [dbo].[donemTbl] on atamaTbl.donemID=donemTbl.donemID";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, conn);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["testdegerlendirmeotomasyonuConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(mainconn);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int atamaID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            string bolumID = (row.Cells[4].Controls[0] as TextBox).Text;
            //int bolumID1 = Convert.ToInt32(bolumID);
            string dersKodu = (row.Cells[5].Controls[0] as TextBox).Text;
            //int dersKodu1 = Convert.ToInt32(dersKodu);
            string donemID = (row.Cells[3].Controls[0] as TextBox).Text;
            //int donemID1 = Convert.ToInt32(donemID);
            string sicilNo = (row.Cells[2].Controls[0] as TextBox).Text;
            //int sicilNo1 = Convert.ToInt32(sicilNo);


            using (SqlConnection conn = new SqlConnection(mainconn))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE atamaTbl SET bolumID = @bolumID, sicilNo = @sicilNo, dersKodu = @dersKodu, donemID = @donemID WHERE atamaID = @atamaID"))
                {

                    cmd.Parameters.AddWithValue("@bolumID", bolumID);
                    cmd.Parameters.AddWithValue("@sicilNo", sicilNo);
                    cmd.Parameters.AddWithValue("@dersKodu", dersKodu);
                    cmd.Parameters.AddWithValue("@donemID", donemID);
                    cmd.Parameters.AddWithValue("@atamaID", atamaID);
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            this.BindGrid();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Silmek istediğinizden emin misiniz?');";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {

        }
    }
}

 
       