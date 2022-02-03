using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminSkills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableSkillsTableAdapter dt = new DataSetTableAdapters.TableSkillsTableAdapter();
            Repeater1.DataSource = dt.ListofSkills();
            Repeater1.DataBind();
        }
    }
}