using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSharpening
{
    public partial class Controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerateControl_Click(object sender, EventArgs e)
        {
            int Count = Convert.ToInt32(txtControlsCount.Text);
            foreach (ListItem li in chkBoxListControlType.Items)
            {
                if (li.Selected)
                {
                    if (li.Value == "Label")
                    {
                        for (int i = 1; i <= Count; i++)
                        { 
                            Label lbl = new Label();
                            lbl.Text = "Label - " + i.ToString();
                            pnlLabels.Controls.Add(lbl);
                        }

                    }

                    else if (li.Value == "TextBox")
                    {
                        for (int i = 1; i <= Count; i++)
                        {
                            TextBox txtBox = new TextBox();
                            txtBox.Text = "TextBox - " + i.ToString();
                            pnlTextBoxes.Controls.Add(txtBox);
                        }

                    }

                    else
                    {
                        for (int i = 1; i <= Count; i++)
                        {
                            Button btn = new Button();
                            btn.Text = "Button - " + i.ToString();
                            pnlButtons.Controls.Add(btn);
                        }
                    }
                }
            }
        }
    }
}