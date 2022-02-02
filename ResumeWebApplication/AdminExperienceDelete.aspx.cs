using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminExperienceDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]); //smallint olarak tuttuğum için toint16!
            DataSetTableAdapters.TableExperienceTableAdapter dt = new DataSetTableAdapters.TableExperienceTableAdapter();
            dt.DeleteExperience(Convert.ToInt16(id));

            Response.Redirect("AdminExperience.aspx");
        }
    }
}