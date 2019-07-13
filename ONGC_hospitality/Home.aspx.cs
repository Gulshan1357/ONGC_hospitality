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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string CS = ConfigurationManager.ConnectionStrings["ONGCEntityFrameworkConnectionStringmyforms"].ConnectionString;
                using (SqlConnection sqlcon = new SqlConnection(CS))
                {
                    sqlcon.Open();
                    string query = "SELECT FirstName FROM LoginTable WHERE EmployeeID = @empID";
                    SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                    sqlcmd.Parameters.AddWithValue("@empID", Session["loginuserid"]);
                    string Empname = Convert.ToString(sqlcmd.ExecuteScalar());
                    welcome.Text = "Hello " + Empname;

                }
            }
        }
    }
}