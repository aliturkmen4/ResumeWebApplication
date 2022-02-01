using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminExperience : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableExperienceTableAdapter dtt = new DataSetTableAdapters.TableExperienceTableAdapter();
            Repeater1.DataSource = dtt.ListofExperince();
            Repeater1.DataBind();
        }
    }
}