using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminSkillsUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {

                DataSetTableAdapters.TableSkillsTableAdapter dt = new DataSetTableAdapters.TableSkillsTableAdapter();

                TxtSkill.Text = dt.BringSkill(Convert.ToInt16(x))[0].Skill;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableSkillsTableAdapter dt = new DataSetTableAdapters.TableSkillsTableAdapter();
            dt.SkillUpdate(TxtSkill.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminSkills.aspx");
        }
    }
}