using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ITAssetManagementTool
{
    public partial class SearchAsset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
            conn.Open();

            string checkSerialno = "SELECT * FROM AllotAssetTable WHERE Asset_Serial_No='" + TextBoxSerialNo.Text + "'";
            SqlCommand passComm = new SqlCommand(checkSerialno, conn);
            SqlDataReader dr = passComm.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = (dr["Emp_ID"].ToString());
                TextBox3.Text = (dr["Emp_Name"].ToString());
                TextBox4.Text = (dr["Department"].ToString());
                TextBox5.Text = (dr["Asset_type"].ToString());
                TextBox5.Text = (dr["Asset_type"].ToString());

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Warning:", "alert('Asset is not assigned to any Employee');", true);
            }
            conn.Close();
        }
    }
}