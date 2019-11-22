using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class ParentsRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        //protected void btnConfirm_Click(object sender, EventArgs e)
        //{
        //    MultiView1.ActiveViewIndex = 1;
        //}

        //protected void btnBackToStep1_Click(object sender, EventArgs e)
        //{
        //    MultiView1.ActiveViewIndex = 0;
        //}

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblPhoneNumber.Text = txtPhoneNumber.Text;

            lblEmailAddress.Text = txtEmailAddress.Text;
            lblExpectations.Text = txtExpectations.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Data Posted to Database");
        }
    }
}