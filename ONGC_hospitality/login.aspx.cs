using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ONGC_hospitality
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IncorrectLogin.Visible = false;
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string userID = inputuser.Text.Trim();
            int userIDint = Convert.ToInt32(userID);

            string CS = ConfigurationManager.ConnectionStrings["ONGCEntityFrameworkConnectionStringmyforms"].ConnectionString;
            using(SqlConnection sqlcon = new SqlConnection(CS))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM LoginTable WHERE EmployeeID = @empID AND Pass = @password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@empID", userIDint);
                sqlcmd.Parameters.AddWithValue("@password", inputpass.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (count==1)
                {
                    Session["loginuserid"] = inputuser.Text.Trim();
                    Response.Redirect("Home", false);
                }
                else
                {
                    IncorrectLogin.Visible = true;

                }
            }

        }
    }
}