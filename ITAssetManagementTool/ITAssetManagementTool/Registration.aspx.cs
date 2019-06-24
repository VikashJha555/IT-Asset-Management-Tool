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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where User_Name='" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if(temp==1)
                {
                    Response.Write("User already Exists");
                }

                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserData (User_ID,User_Name,Email,Password,Branch) values(@ID,@Uname , @email ,@password, @branch)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@branch", DropDownListBranch.SelectedItem.ToString());
                com.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("Registration is Successful");

             
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    }
}