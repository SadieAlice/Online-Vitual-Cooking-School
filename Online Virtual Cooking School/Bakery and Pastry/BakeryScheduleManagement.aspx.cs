using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace OnlineVirtualCookingSchool.Bakery_and_Pastry
{
    public partial class BakeryScheduleManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButSaveSchedule_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[BakerySchedule] (Sday,Stime,Elevel,Elocation,ERoom,Ecapacity) values (@Sday,@Stime, @Elevel,@Elocation, @ERoom,@Ecapacity)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@Sday", TextBox1.Text);
            sqlcomm.Parameters.AddWithValue("@Stime", TextBox2.Text);
            sqlcomm.Parameters.AddWithValue("@Elevel", DDLevel.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Elocation", TextBox4.Text);
            sqlcomm.Parameters.AddWithValue("@ERoom", TextBox5.Text);
            sqlcomm.Parameters.AddWithValue("@Ecapacity", TextBox6.Text);
            sqlcomm.ExecuteNonQuery();
            Label7.Text = "The Schedule Is saved Successfully!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            sqlconn.Close();
        }

        protected void ButViewSchedule_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from BakerySchedule";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GdSchedule.Visible = true;
            GdSchedule.DataSource = dt;
            GdSchedule.DataBind();
            Label7.Text = "";
            Label8.Text = "";
            sqlconn.Close();
        }

        protected void GdSchedule_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdSchedule.EditIndex = -1;
        }

        protected void GdSchedule_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdSchedule.Rows[e.RowIndex];

            int Eid = Convert.ToInt32(GdSchedule.DataKeys[e.RowIndex].Values[0]);
            string Sday = (row.Cells[2].Controls[0] as TextBox).Text;
            string Stime = (row.Cells[3].Controls[0] as TextBox).Text;
            string Elevel = (row.Cells[4].Controls[0] as TextBox).Text;
            string Elocation = (row.Cells[5].Controls[0] as TextBox).Text;
            string ERoom = (row.Cells[6].Controls[0] as TextBox).Text;
            string Ecapacity = (row.Cells[7].Controls[0] as TextBox).Text;


            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "update BakerySchedule set Sday=@Sday, Stime=@Stime, Elevel=@Elevel,Elocation=@Elocation,ERoom=@ERoom,Ecapacity=@Ecapacity where Eid=@Eid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Eid", Eid);
            sqlcomm.Parameters.AddWithValue("@Sday", Sday);
            sqlcomm.Parameters.AddWithValue("@Stime", Stime);
            sqlcomm.Parameters.AddWithValue("@Elevel", Elevel);
            sqlcomm.Parameters.AddWithValue("@Elocation", Elocation);
            sqlcomm.Parameters.AddWithValue("@ERoom", ERoom);
            sqlcomm.Parameters.AddWithValue("@Ecapacity", Ecapacity);
            sqlcomm.ExecuteNonQuery();
            Label8.Text = "The Schedule Is updated Successfully!";
            sqlconn.Close();
        }

        protected void GdSchedule_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Eid = Convert.ToInt32(GdSchedule.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from BakerySchedule where Eid=@Eid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Eid", Eid);
            sqlcomm.ExecuteNonQuery();
            Label8.Text = "The Schedule Is deleted Successfully!";

            sqlconn.Close();

        }

        protected void GdSchedule_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdSchedule.EditIndex = e.NewEditIndex;
        }

    }
}