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
    public partial class AssetRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_View_Click(object sender, EventArgs e)
        {
          
              try
                {
                    
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into AssetRecord (Type,Model_No,Serial_No,PO_No,PO_Date,Support_Date,Status,Remarks) values(@Type , @Model ,@Serial, @Po,@Podate,@Support,@Status,@Remarks)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@Type", DropDownListType.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Model", TextBoxModelNumber.Text);
                    com.Parameters.AddWithValue("@Serial", TextBoxSerialNumber.Text);
                    com.Parameters.AddWithValue("@Po", TextBoxPoNumber.Text);
                com.Parameters.AddWithValue("@Podate", DateTime.Parse(TextBoxPoDate.Text).ToString("MM/dd/yyyy HH:mm:ss"));
               com.Parameters.AddWithValue("@Support", DateTime.Parse(TextBoxSupportDate.Text).ToString("MM/dd/yyyy HH:mm:ss"));
                com.Parameters.AddWithValue("@Status", DropDownListStatus.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Remarks", TextBoxRemarks.Text);
                   com.ExecuteNonQuery();
                   Response.Redirect("AdminAssetView.aspx");
                 conn.Close();
                }
                catch (Exception ex)
            {
                    Response.Write("Error:" + ex.ToString());

                }
            }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    }
    