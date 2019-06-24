using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using Microsoft.AspNet.Identity;


namespace ITAssetManagementTool
{
    public partial class Attachments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Attachments/" + str));
                string filepath = "~/Attachments/" + Path.GetRandomFileName();
                string ename = Session["Email"] as string;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssetRecordConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Attachment (FId_AssetId,FId_AssignmentId,Emp_Name,File_Name,File_Path,Upload_DateTime) values(@Fidasset,@Assignmentid , @Empname ,@Filename, @Filepath,@Uploaddatetime)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Fidasset", TextBoxSerialId.Text);
                com.Parameters.AddWithValue("@Assignmentid", TextBoxAssignmentId.Text);
                com.Parameters.AddWithValue("@Empname",ename);
                com.Parameters.AddWithValue("@Filename", str);
                com.Parameters.AddWithValue("@Filepath", filepath);
                com.Parameters.AddWithValue("@Uploaddatetime", DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss"));
                com.ExecuteNonQuery();
                conn.Close();
                Response.Write("Saved Successfully");


            }
            else
            {
                Response.Write("Something went wrong");
            }
        }
    }
}