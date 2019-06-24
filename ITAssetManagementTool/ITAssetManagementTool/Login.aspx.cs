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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where Email='" + TextBoxEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            string email = TextBoxEmail.Text.Trim();
            Session["Email"] = email;
            
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from UserData where Email='" + TextBoxEmail.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if(password== TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxPassword.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password is incorrect");
                }

               

            }
            else
            {
                Response.Write("E-mail not correct");
            }
        }
    }
}