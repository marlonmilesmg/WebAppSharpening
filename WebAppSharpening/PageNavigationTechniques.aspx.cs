using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class PageNavigationTechniques : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Controls.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/ServerTransferNavigation.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Execute("~/ServerTransferNavigation.aspx");
        }
    }
}