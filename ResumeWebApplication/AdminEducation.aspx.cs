using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminEducation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableEducationTableAdapter dt = new DataSetTableAdapters.TableEducationTableAdapter();
            Repeater1.DataSource = dt.ListofEducation();
            Repeater1.DataBind();
        }
    }
}