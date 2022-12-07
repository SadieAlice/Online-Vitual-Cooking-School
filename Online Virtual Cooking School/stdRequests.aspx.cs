using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace OnlineVirtualCookingSchool
{
    public partial class stdRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LitJoindate.Text = DateTime.Now.ToString();
        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "insert into [dbo].[Requests] (Stfname,Stlname,StFathername,StFatherPhone,StEmail,Stphone,Coursejoin,Courselevel,CourseFees,Firstinstallment,FeesDue,Joindate) values (@Stfname,@Stlname,@StFathername,@StFatherPhone,@StEmail,@Stphone,@Coursejoin,@Courselevel,@CourseFees,@Firstinstallment,@FeesDue,@Joindate)";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Stfname", TxtStFname.Text);
            sqlcomm.Parameters.AddWithValue("@Stlname", TxtStLname.Text);
            sqlcomm.Parameters.AddWithValue("@StFathername", TxtFatherName.Text);
            sqlcomm.Parameters.AddWithValue("@StFatherPhone", TxtFatherPhone.Text);
            sqlcomm.Parameters.AddWithValue("@StEmail", TxtStEmail.Text);
            sqlcomm.Parameters.AddWithValue("@Stphone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@Coursejoin", DDLCourseName.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Courselevel", DDLevel.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@CourseFees", LabCourseFees.Text);
            sqlcomm.Parameters.AddWithValue("@Firstinstallment", TxtCourseInstallment.Text);
            sqlcomm.Parameters.AddWithValue("@FeesDue", LabDueFees.Text);
            sqlcomm.Parameters.AddWithValue("@Joindate", LitJoindate.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = " " + TxtStFname.Text + "'s enrollment request has been sent..<br />Check for enrollment after 24hours! ";
            TxtStFname.Text = "";
            TxtStLname.Text = "";
            TxtFatherName.Text = "";
            TxtFatherPhone.Text = "";
            TxtPhone.Text = "";
            DDLCourseName.SelectedItem.Text = "";
            DDLevel.SelectedItem.Text = "";
            LabCourseFees.Text = "";
            TxtCourseInstallment.Text = "";
            LabDueFees.Text = "";

           
        }

        protected void DDLevel_SelectedIndexChanged(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[Coursetable] where Clevel=@Clevel";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Clevel", DDLevel.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                LabCourseFees.Text = sdr["Cfees"].ToString();
            }
            sqlconn.Close();
        }

        protected void TxtCourseInstallment_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(LabCourseFees.Text) - Convert.ToInt32(TxtCourseInstallment.Text);
            LabDueFees.Text = balance.ToString();
        }

        protected void DDLCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[Coursetable] where Cname=@Cname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cname", DDLCourseName.SelectedItem.Text);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
        }
    }
}