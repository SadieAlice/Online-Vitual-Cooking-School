using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVirtualCookingSchool.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButSubmit_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from " + DropDownList1.SelectedItem.Text;
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(DropDownList1.SelectedItem.Text == "Coursetable")

            {
                GdCourse.Visible = true;
                GdStudent.Visible = false;
                GdTutor.Visible = false;
                GdLevels.Visible = false;
                GdCourse.DataSource = dt;
                GdCourse.DataBind();
            }
            
            else if (DropDownList1.SelectedItem.Text == "tblUsers")
            {
                GdStudent.Visible = true;
                GdCourse.Visible = false;
                GdTutor.Visible = false;
                GdLevels.Visible = false;
                GdStudent.DataSource = dt;
                GdStudent.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "Levels")
            {
                GdLevels.Visible = true;
                GdStudent.Visible = false;
                GdCourse.Visible = false;
                GdTutor.Visible = false;
                GdLevels.DataSource = dt;
                GdLevels.DataBind();
            }

            else
            {
                GdTutor.Visible = true;
                GdStudent.Visible = false;
                GdLevels.Visible = false;
                GdCourse.Visible = false;
                GdTutor.DataSource = dt;
                GdTutor.DataBind();
            }

            sqlconn.Close();
        }

        protected void GdCourse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdCourse.EditIndex = -1;
        }

        protected void GdCourse_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdCourse.Rows[e.RowIndex];

            int courseid = Convert.ToInt32(GdCourse.DataKeys[e.RowIndex].Values[0]);
            string cname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Duration = (row.Cells[3].Controls[0] as TextBox).Text;
            string Fees = (row.Cells[4].Controls[0] as TextBox).Text;

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "update Coursetable set Cname=@Cname, Duration=@Duration, Cfees=@Cfees where Cid=@Cid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cid", courseid);
            sqlcomm.Parameters.AddWithValue("@Cname", cname);
            sqlcomm.Parameters.AddWithValue("@Duration", Duration);
            sqlcomm.Parameters.AddWithValue("@Cfees", Fees);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdCourse.EditIndex = e.NewEditIndex;
        }

        protected void GdCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int courseid = Convert.ToInt32(GdCourse.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from Coursetable where Cid=@Cid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cid", courseid);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

              protected void GdStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(GdStudent.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from tblUsers where Id=@Id";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Id", Id);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdTutor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdTutor.EditIndex = -1;
        }

        protected void GdTutor_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdTutor.Rows[e.RowIndex];

            int Tid = Convert.ToInt32(GdTutor.DataKeys[e.RowIndex].Values[0]);
            string Tname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Temail = (row.Cells[3].Controls[0] as TextBox).Text;
            string Tphone = (row.Cells[4].Controls[0] as TextBox).Text;
            string Tcourse = (row.Cells[5].Controls[0] as TextBox).Text;
            string Tqualification = (row.Cells[6].Controls[0] as TextBox).Text;
           
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "update tutor set Tname=@Tname, Temail=@Temail, Tphone=@Tphone,Tcourse=@Tcourse, Tqualification=@Tqualification where Tid=@Tid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Tid", Tid);
            sqlcomm.Parameters.AddWithValue("@Tname", Tname);
            sqlcomm.Parameters.AddWithValue("@Temail", Temail);
            sqlcomm.Parameters.AddWithValue("@Tphone", Tphone);
            sqlcomm.Parameters.AddWithValue("@Tcourse", Tcourse);
            sqlcomm.Parameters.AddWithValue("@Tqualification", Tqualification);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdTutor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdTutor.EditIndex = e.NewEditIndex;
        }

        protected void GdTutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Tid = Convert.ToInt32(GdTutor.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from tutor where Tid=@Tid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Tid", Tid);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdLevels_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdLevels.Rows[e.RowIndex];

            int lid = Convert.ToInt32(GdLevels.DataKeys[e.RowIndex].Values[0]);
            string lname = (row.Cells[2].Controls[0] as TextBox).Text;
            

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "update Levels set lname=@lname where lid=@lid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@lid", lid);
            sqlcomm.Parameters.AddWithValue("@lname", lname);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdLevels_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdLevels.EditIndex = e.NewEditIndex;
        }

        protected void GdLevels_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int lid = Convert.ToInt32(GdLevels.DataKeys[e.RowIndex].Values[0]);

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "delete from Levels where lid=@lid";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@lid", lid);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void GdLevels_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdLevels.EditIndex = -1;
        }
    }
}