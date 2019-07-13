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
    public partial class myForms : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["ONGCEntityFrameworkConnectionStringmyforms"].ConnectionString;
        ONGCEntityFramework context = new ONGCEntityFramework();
        protected void Page_Load(object sender, EventArgs e)
        {

            //gridViewTo();
            int a = Convert.ToInt32(Session["loginuserid"]);
            int b = Convert.ToInt32(Session["toempIDS"]);
            using (var entity = new ONGCEntityFramework())
            {
                
                var first = (from r in entity.FormStatus1
                             where r.ByEmpID == a
                             select new { r.SerialNo, r.FormId, r.ByEmpID, r.ToEmpID, r.Status, r.EventDate }).ToList();


                GridView1.DataSource = first;
                GridView1.DataBind();

                var second = (from r in entity.FormStatus1
                              where r.ByEmpID == b
                              select new { r.SerialNo, r.FormId, r.ByEmpID, r.ToEmpID, r.Status, r.EventDate }).ToList();

                GridView2.DataSource = second;
                GridView2.DataBind();
            }
        }

        protected void AccRej_Click(object sender, EventArgs e)
        {

            using (SqlConnection sqlcon = new SqlConnection(CS))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("updateStatus", sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@FormId", Convert.ToInt32(formno.Text));
                sqlcmd.Parameters.AddWithValue("@Status", DropDownList1.Text.Trim());
                sqlcmd.ExecuteNonQuery();
                mssg.Text = "Response Recorded";
                sqlcon.Close();

            }
        }
        
        //void gridViewBy()
        //{

        //    using (SqlConnection sqlcon = new SqlConnection(CS))
        //    {
        //        sqlcon.Open();
        //        SqlDataAdapter sqlDa = new SqlDataAdapter("viewBy", sqlcon);
        //        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
        //        sqlDa.SelectCommand.Parameters.AddWithValue("@ByEmpID", Convert.ToInt32(Session["loginuserid"]));
        //        DataTable dtbl = new DataTable();
        //        sqlDa.Fill(dtbl);
        //        sqlcon.Close();
        //        GridView1.DataSource = dtbl;
        //        GridView1.DataBind();
        //    }
        //}
        //void gridViewTo()
        //{

        //    using (SqlConnection sqlcon = new SqlConnection(CS))
        //    {
        //        sqlcon.Open();
        //        SqlDataAdapter sqlDa2 = new SqlDataAdapter("viewTO", sqlcon);
        //        sqlDa2.SelectCommand.CommandType = CommandType.StoredProcedure;
        //        sqlDa2.SelectCommand.Parameters.AddWithValue("@ToEmpID", Convert.ToInt32(Session["toempIDS"]));
        //        DataTable dtbl2 = new DataTable();
        //        sqlDa2.Fill(dtbl2);
        //        sqlcon.Close();
        //        GridView1.DataSource = dtbl2;
        //        GridView1.DataBind();

        //    }
        //}
    }
}