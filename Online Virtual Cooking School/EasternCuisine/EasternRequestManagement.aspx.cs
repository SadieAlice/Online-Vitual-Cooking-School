using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace OnlineVirtualCookingSchool.EasternCuisine
{
    public partial class EasternRequestManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from Requests";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GdRequests.Visible = true;
            GdRequests.DataSource = dt;
            GdRequests.DataBind();
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            sqlconn.Close();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[EasternEnrollments] (StdEmail,Elevel) values (@StdEmail, @Elevel)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@StdEmail", TextBox1.Text);
            sqlcomm.Parameters.AddWithValue("@Elevel", DDLevel.SelectedItem.Text);
            sqlcomm.ExecuteNonQuery();
            Label3.Text = "The student with email " + TextBox1.Text + " Is Successfully Enrolled in this Course!";
            TextBox1.Text = "";
            DDLevel.SelectedItem.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            sqlconn.Close();
        }

        

        protected void GdRequests_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Stid = Convert.ToInt32(GdRequests.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from Requests where Stid=@Stid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Stid", Stid);
            sqlcomm.ExecuteNonQuery();
            Label4.Text = "The Request Is deleted Successfully!";
            Label3.Text = "";
            Label5.Text = "";
            sqlconn.Close();

        }

        protected void DDLevel_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[Levels] where lname=@lname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@lname", DDLevel.SelectedItem.Text);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from EasternEnrollments";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GdEnrollments.Visible = true;
            GdEnrollments.DataSource = dt;
            GdEnrollments.DataBind();
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            sqlconn.Close();
        }

        protected void GdEnrollments_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Eeid = Convert.ToInt32(GdEnrollments.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from EasternEnrollments where Eeid=@Eeid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Eeid", Eeid);
            sqlcomm.ExecuteNonQuery();
            Label5.Text = "The Student Is deleted Successfully!";
            Label3.Text = "";
            Label4.Text = "";
            sqlconn.Close();
        }
    }
}