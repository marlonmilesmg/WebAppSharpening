﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnBackToStep1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblGender.Text = ddlGender.SelectedValue;

            lblEmail.Text = txtEmail.Text;
            lblMobile.Text = txtMobile.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Data Posted to Database");
        }
    }
}