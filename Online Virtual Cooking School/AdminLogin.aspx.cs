using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;

namespace OnlineVirtualCookingSchool
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        bool flag = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[admin] where username=@username and apass=@apass";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@username", txtUserName.Text);
            sqlcomm.Parameters.AddWithValue("@apass", txtPassword.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                if ((sdr[1].ToString() == txtUserName.Text) && (sdr[2].ToString() == txtPassword.Text))
                {
                    flag = true;

                    if (flag == true)
                    {
                        Response.Redirect("Admin/AdminHome.aspx");
                        lblMessage.Text = "";
                    }
                }
            }
            if (flag == false)
            {
                lblMessage.Text = "LOGIN FAILED..Please try again!";
                txtUserName.Text = "";
                txtPassword.Text = "";
            }
            sqlconn.Close();

        }
    }
}

    
