﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class RequiredFieldValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "Data Saved Successfully"; //Write ADO.NET Code here to connect and save to database
            }
            else
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Validation Failed! Data Was Not Saved Successfully"; //Write ADO.NET Code here to connect and save to database
            }
        }
    }
}