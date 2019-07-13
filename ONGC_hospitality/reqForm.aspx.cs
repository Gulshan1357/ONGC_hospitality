using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace ONGC_hospitality
{
    public partial class reqForm : System.Web.UI.Page
    {

        protected void imgPopUp_Click(object sender, ImageClickEventArgs e)
        {
            calender1.Visible = true;
        }

        protected void calender1_SelectionChanged(object sender, EventArgs e)
        {
            evtdate.Text = calender1.SelectedDate.ToShortDateString();
            calender1.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            TextBox10.Enabled = false;
            TextBox11.Enabled = false;
            TextBox12.Enabled = false;
            TextBox13.Enabled = false;
            TextBox16.Enabled = false;
            TextBox17.Enabled = false;
            TextBox18.Enabled = false;
            TextBox19.Enabled = false;
            TextBox20.Enabled = false;
            TextBox21.Enabled = false;
            if(!IsPostBack)
            {
                clearAll();
            }
        }

        protected void Go_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ONGCEntityFrameworkConnectionStringmyforms"].ConnectionString;
            using (SqlConnection sqlcon = new SqlConnection(CS))
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("userAdd", sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                //sqlcmd.Parameters.AddWithValue("@FormId", Convert.ToInt32(hfFormID.Value == "" ? "0" : hfFormID.Value));
                sqlcmd.Parameters.AddWithValue("@EventN", TextBox1.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Department", TextBox2.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Venue", TextBox3.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@EventDate", evtdate.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@LightRefreshment", Convert.ToInt32(TextBox4.Text));
                sqlcmd.Parameters.AddWithValue("@HighTea", Convert.ToInt32(TextBox5.Text));
                sqlcmd.Parameters.AddWithValue("@LunchWLv", Convert.ToInt32(TextBox6.Text));
                sqlcmd.Parameters.AddWithValue("@LunchWLnv", Convert.ToInt32(TextBox7.Text));
                sqlcmd.Parameters.AddWithValue("@LunchSv", Convert.ToInt32(TextBox8.Text));
                sqlcmd.Parameters.AddWithValue("@LunchSnv", Convert.ToInt32(TextBox9.Text));
                sqlcmd.Parameters.AddWithValue("@LunchVIPv", Convert.ToInt32(TextBox10.Text));
                sqlcmd.Parameters.AddWithValue("@LunchVIPnv", Convert.ToInt32(TextBox11.Text));
                sqlcmd.Parameters.AddWithValue("@LunchVVIPv", Convert.ToInt32(TextBox12.Text));
                sqlcmd.Parameters.AddWithValue("@LunchVVIPnv", Convert.ToInt32(TextBox13.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerSv", Convert.ToInt32(TextBox16.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerSnv", Convert.ToInt32(TextBox17.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerVIPv", Convert.ToInt32(TextBox18.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerVIPnv", Convert.ToInt32(TextBox19.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerVVIPv", Convert.ToInt32(TextBox20.Text));
                sqlcmd.Parameters.AddWithValue("@DinnerVVIPnv", Convert.ToInt32(TextBox21.Text));
                sqlcmd.Parameters.AddWithValue("@MinWater", Convert.ToInt32(TextBox14.Text));
                sqlcmd.Parameters.AddWithValue("@ByEmpID", Convert.ToInt32(Session["loginuserid"]));
                sqlcmd.Parameters.AddWithValue("@ToEmpID", Convert.ToInt32(TextBox22.Text));
                sqlcmd.ExecuteNonQuery();
                lblSuccess.Visible = true;
                Session["toempIDS"] = TextBox22.Text;
            }
            clearAll();

        }
        protected void lndrb_CheckedChanged(object sender, EventArgs e)
        {
            

            if (lorb.Checked == true)
            {
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
                TextBox10.Enabled = true;
                TextBox11.Enabled = true;
                TextBox12.Enabled = true;
                TextBox13.Enabled = true;
                clearDinner();
            }
            if (dorb.Checked == true)
            {
                TextBox16.Enabled = true;
                TextBox17.Enabled = true;
                TextBox18.Enabled = true;
                TextBox19.Enabled = true;
                TextBox20.Enabled = true;
                TextBox21.Enabled = true;
                clearLunch();
            }
            if (lndrb.Checked == true)
            {
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
                TextBox10.Enabled = true;
                TextBox11.Enabled = true;
                TextBox12.Enabled = true;
                TextBox13.Enabled = true;
                TextBox16.Enabled = true;
                TextBox17.Enabled = true;
                TextBox18.Enabled = true;
                TextBox19.Enabled = true;
                TextBox20.Enabled = true;
                TextBox21.Enabled = true;
                clearLunch();
                clearDinner();
            }
        }
        void clearLunch()
        {
            TextBox6.Text = "0";
            TextBox7.Text = "0";
            TextBox8.Text = "0";
            TextBox9.Text = "0";
            TextBox10.Text = "0";
            TextBox11.Text = "0";
            TextBox12.Text = "0";
            TextBox13.Text = "0";
        }
        void clearDinner()
        {
            TextBox16.Text = "0";
            TextBox17.Text = "0";
            TextBox18.Text = "0";
            TextBox19.Text = "0";
            TextBox20.Text = "0";
            TextBox21.Text = "0";
        }
        void clearAll()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            clearLunch();
            clearDinner();
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            clearAll();
        }
    }
}