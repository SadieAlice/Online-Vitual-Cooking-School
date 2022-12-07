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

namespace OnlineVirtualCookingSchool.Admin
{
    public partial class StaffMan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LitJoindate.Text = DateTime.Now.ToString();
        }

        protected void ButTutor_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[tutor] (Tname,Tpass,Temail,Tphone,Tcourse,Tqualification,Joindate) values (@Tname,@Tpass,@Temail,@Tphone,@Tcourse,@Tqualification,@Joindate)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@Tname", TxtTutorname.Text);
            sqlcomm.Parameters.AddWithValue("@Tpass", TxtPass.Text);
            sqlcomm.Parameters.AddWithValue("@Temail", TxtEmail.Text);
            sqlcomm.Parameters.AddWithValue("@Tphone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@Tcourse", DDLCourse.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Tqualification", TxtQualification.Text);
            sqlcomm.Parameters.AddWithValue("@Joindate", LitJoindate.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The Tutor " + TxtTutorname.Text + " Is saved Successfully!";
            TxtTutorname.Text = "";
            TxtPass.Text = "";
            TxtEmail.Text = "";
            TxtPhone.Text = "";
            TxtQualification.Text = "";
            sqlconn.Close();
        }
    }
}