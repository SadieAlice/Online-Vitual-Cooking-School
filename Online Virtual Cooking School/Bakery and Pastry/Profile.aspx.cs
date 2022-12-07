using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace OnlineVirtualCookingSchool.Baking_and_Pastry
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = (string)Session["student"];
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "update tblUsers set Password=@Password where Email=@Email";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);

            string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "SHA1");

            sqlcomm.Parameters.AddWithValue("@Email", Label2.Text);
            sqlcomm.Parameters.AddWithValue("@Password", EncryptedPassword);
            sqlcomm.ExecuteNonQuery();
            Label3.Text = "Your Password Is updated Successfully!";
            sqlconn.Close();
        }
    }
}