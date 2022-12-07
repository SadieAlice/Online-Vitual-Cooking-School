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
    public partial class StaffLogin : System.Web.UI.Page
    {
        bool flag = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[tutor] where Tname=@Tname and Tpass=@Tpass and Tcourse=@Tcourse";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Tname", txtUserName.Text);
            sqlcomm.Parameters.AddWithValue("@Tpass", txtPassword.Text);
            sqlcomm.Parameters.AddWithValue("@Tcourse", DDC.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                if ((sdr[1].ToString() == txtUserName.Text) && (sdr[2].ToString() == txtPassword.Text) && (sdr[5].ToString() == "Eastern Cuisine"))
                {
                    flag = true;

                    if (flag == true)
                    {
                        Response.Redirect("EasternCuisine/EasternScheduleManagement.aspx");
                        lblMessage.Text = "";
                    }
                   

                   
                }else if ((sdr[1].ToString() == txtUserName.Text) && (sdr[2].ToString() == txtPassword.Text) && (sdr[5].ToString() == "International Cuisine"))
                {
                    flag = true;


                    if (flag == true)
                    {
                        Response.Redirect("Default.aspx");
                        lblMessage.Text = "";
                    }
                   

                    
                } else if ((sdr[1].ToString() == txtUserName.Text) && (sdr[2].ToString() == txtPassword.Text) && (sdr[5].ToString() == "Bakery and Pastry"))
                {
                    flag = true;


                    if (flag == true)
                    {
                        Response.Redirect("Bakery and Pastry/BakeryScheduleManagement.aspx");
                        lblMessage.Text = "";
                    }
                    

                    
                }
                
                


            }

            if (flag == false)
            {
                lblMessage.Text = "SORRY! You're not the tutor for this course!";
                txtUserName.Text = "";
                txtPassword.Text = "";
            }


            sqlconn.Close();
        }

        
    }
}