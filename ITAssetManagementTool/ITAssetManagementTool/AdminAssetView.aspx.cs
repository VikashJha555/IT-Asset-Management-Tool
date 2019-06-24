
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ITAssetManagementTool
{
    public partial class AdminAssetView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Write("File has been passed");
            Button bts = e.CommandSource as Button;
            Response.Write(bts.Parent.Parent.GetType().ToString());
            if (e.CommandName.ToLower() != "upload")
            {
                return;
            }
            FileUpload fu = bts.FindControl("FileUpload1") as FileUpload;
            if (fu.HasFile)
            {
                bool upload = true;
                string fileName = Path.GetFileName(fu.PostedFile.FileName);
                string fleUpload = Path.GetExtension(fu.PostedFile.FileName);
                if (fleUpload.Trim().ToLower() == ".txt" || fleUpload.Trim().ToLower() == ".xlsx" || fleUpload.Trim().ToLower() == ".pdf" || fleUpload.Trim().ToLower() == ".docx")
                {
                    fu.SaveAs(Server.MapPath("~/Attachments/" + fileName));
                    string uploadedFile = (Server.MapPath("~/Attachments/" + fileName));
                    
                }
                else
                {
                    upload = false;
                    
                }
                if (upload)
                {
                    Response.Write("Success");
                }
            }
            else
            {
                Response.Write("Oops! something went wrong");
            }
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
    }
}