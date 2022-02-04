using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminCertificationsDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TableCertificationsTableAdapter dt = new DataSetTableAdapters.TableCertificationsTableAdapter();
            dt.CertificateDelete(Convert.ToInt16(x));
            Response.Redirect("AdminCertifications.aspx");
        }
    }
}