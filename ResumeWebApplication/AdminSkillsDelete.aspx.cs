using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminSkillsDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TableSkillsTableAdapter dt = new DataSetTableAdapters.TableSkillsTableAdapter();
            dt.SkillDelete(Convert.ToInt16(x));
            Response.Redirect("AdminSkills.aspx");
        }
    }
}