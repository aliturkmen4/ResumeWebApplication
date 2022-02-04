using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminCertificationsAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableCertificationsTableAdapter dt = new DataSetTableAdapters.TableCertificationsTableAdapter();

            dt.CertificateAdd(TextBox1.Text);

            Response.Redirect("AdminCertifications.aspx");
        }
    }
}