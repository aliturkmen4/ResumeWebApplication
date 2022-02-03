using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminInterests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableInterestsTableAdapter dt = new DataSetTableAdapters.TableInterestsTableAdapter();
            Repeater1.DataSource = dt.ListofInterest();
            Repeater1.DataBind();
        }
    }
}