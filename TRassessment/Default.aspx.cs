using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TRassessment
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmitQ1_Click(object sender, EventArgs e)
        {
            if(rblQuest1.SelectedValue != null)
            {
                lblQ1Answer.Text =  rblQuest1.SelectedValue;
                if(lblQ1Answer.Text == "Correct")
                {
                    lblQ1Answer.ForeColor = System.Drawing.Color.Green;
                } 
                else
                {
                    lblQ1Answer.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void BtnSubmitQ2_Click(object sender, EventArgs e)
        {
            if (rblQuest2.SelectedValue != null)
            {
                lblQ2Answer.Text = rblQuest2.SelectedValue;
                if (lblQ2Answer.Text == "True")
                {
                    lblQ2Answer.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblQ2Answer.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void BtnSubmitQ3_Click(object sender, EventArgs e)
        {
            if (rblQuest3.SelectedValue != null)
            {
                lblQ3Answer.Text = rblQuest3.SelectedValue;
                if (lblQ3Answer.Text == "Correct")
                {
                    lblQ3Answer.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblQ3Answer.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}