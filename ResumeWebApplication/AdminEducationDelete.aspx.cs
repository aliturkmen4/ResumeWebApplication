using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminEducationDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]); //smallint olarak tuttuğum için toint16!
            DataSetTableAdapters.TableEducationTableAdapter dt = new DataSetTableAdapters.TableEducationTableAdapter();
            dt.EducationDelete(Convert.ToInt16(x));

            Response.Redirect("AdminEducation.aspx");
        }
    }
}