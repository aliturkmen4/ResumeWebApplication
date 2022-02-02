using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminExperienceUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Enabled = false;
            TxtID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TableExperienceTableAdapter dt = new DataSetTableAdapters.TableExperienceTableAdapter();
                TxtTitle.Text = dt.BringExperience(Convert.ToInt16(x))[0].Title;
                TxtSubtitle.Text = dt.BringExperience(Convert.ToInt16(x))[0].Subtitle;
                TxtDescription.Text = dt.BringExperience(Convert.ToInt16(x))[0].Description;
                TxtDate.Text = dt.BringExperience(Convert.ToInt16(x))[0].Date;

            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableExperienceTableAdapter dt = new DataSetTableAdapters.TableExperienceTableAdapter();
            dt.ExperienceUpdate(TxtTitle.Text, TxtSubtitle.Text, TxtDescription.Text, TxtDate.Text,Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminExperience.aspx");
        }
    }
}