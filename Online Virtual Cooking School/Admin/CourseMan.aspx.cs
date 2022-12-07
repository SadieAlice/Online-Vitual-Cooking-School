using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Web.Security;

namespace OnlineVirtualCookingSchool.Admin
{
    public partial class CourseMan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select lname from [dbo].[Levels] where lname=@Clevel";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Clevel", DropDownList1.SelectedItem.Text);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Coursetable] (Cname,Clevel,Duration,Cfees) values (@Cname, @Clevel,@Duration, @Cfees)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@Cname", TxtCoursename.Text);
            sqlcomm.Parameters.AddWithValue("@Clevel", DropDownList1.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Duration", TxtDuration.Text);
            sqlcomm.Parameters.AddWithValue("@Cfees", TxtFees.Text);
            sqlcomm.ExecuteNonQuery();
            LabMsg.Text = "The Course " + TxtCoursename.Text + " Is saved Successfully!";
            TxtCoursename.Text = "";
            TxtDuration.Text = "";
            TxtFees.Text = "";
            sqlconn.Close();
        }

        
    }
}