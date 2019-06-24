using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITAssetManagementTool
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"]!=null)
            {
                

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button_LogOut_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button_View_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssetRecord.aspx");
        }
    }
}