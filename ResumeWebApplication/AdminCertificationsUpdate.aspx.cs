using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminCertificationsUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TableCertificationsTableAdapter dt=new DataSetTableAdapters.TableCertificationsTableAdapter();
                TxtCertificate.Text = dt.BringCertificate(Convert.ToInt16(TxtID.Text))[0].Certificate;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableCertificationsTableAdapter dt = new DataSetTableAdapters.TableCertificationsTableAdapter();
            dt.CertificateUpdate(TxtCertificate.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminInterests.aspx");
        }
    }
}