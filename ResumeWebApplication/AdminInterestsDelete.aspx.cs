using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminInterestsDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TableInterestsTableAdapter dt = new DataSetTableAdapters.TableInterestsTableAdapter();
            dt.InterestDelete(Convert.ToInt16(x));
            Response.Redirect("AdminInterests.aspx");
        }
    }
}