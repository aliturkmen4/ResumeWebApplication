using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminCertifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableCertificationsTableAdapter dt = new DataSetTableAdapters.TableCertificationsTableAdapter();
            Repeater1.DataSource = dt.ListofCertifications();
            Repeater1.DataBind();
        }
    }
}