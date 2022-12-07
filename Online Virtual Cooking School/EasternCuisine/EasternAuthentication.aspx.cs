using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVirtualCookingSchool.EasternCuisine
{
    public partial class EasternAuthentication : System.Web.UI.Page
    {
        bool flag = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["student"] = Txtemail.Text;
        }

        protected void ButEast_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[EasternEnrollments] where StdEmail=@StdEmail and Elevel=@Elevel";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@StdEmail", Txtemail.Text);
            sqlcomm.Parameters.AddWithValue("@Elevel", DDList.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                if ((sdr[1].ToString() == Txtemail.Text) && (sdr[2].ToString() == DDList.SelectedItem.Text))
                {
                    flag = true;
                    break;
                }
               

            }
            if (flag == true)
            {
                Response.Redirect("Profile.aspx");
            }
            else { 

                Label3.Text = "SORRY! You're not enrolled in this course!";
                Txtemail.Text = "";
                DDList.SelectedItem.Text = "";
            }
            sqlconn.Close();
        }
    }
}