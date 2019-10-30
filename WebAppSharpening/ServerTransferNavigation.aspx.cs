using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class ServerTransferNavigation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Collections.Specialized.NameValueCollection previousFormCollection = Request.Form;
            lblName.Text = previousFormCollection["txtName"];
            lblEmail.Text = previousFormCollection["txtEmail"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PageNavigationTechniques.aspx");
        }
    }
}