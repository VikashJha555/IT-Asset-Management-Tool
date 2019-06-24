using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ITAssetManagementTool
{
    public partial class AllotAsset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      


        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into AllotAssetTable (Emp_ID,Emp_Name,Department,Asset_Type,Asset_Serial_No) values(@Empid,@Empname,@dept,@Assettype,@Assetserialno)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@Empid", TextBoxEmpId.Text);
                com.Parameters.AddWithValue("@Empname", TextBoxEmpName.Text);
                com.Parameters.AddWithValue("@dept", TextBoxDepartment.Text);
                com.Parameters.AddWithValue("@Assettype", DropDownListType.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Assetserialno", TextBoxSerial.Text);
                com.ExecuteNonQuery();
                Response.Redirect("AdminAllotAsset.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    }
}