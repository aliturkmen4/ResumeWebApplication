using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminInterestsUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TableInterestsTableAdapter dt = new DataSetTableAdapters.TableInterestsTableAdapter();
               TxtInterest.Text= dt.BringInterest(Convert.ToInt16(TxtID.Text))[0].Interest;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableInterestsTableAdapter dt = new DataSetTableAdapters.TableInterestsTableAdapter();
            dt.InterestUpdate(TxtInterest.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminInterests.aspx");
        }
    }
}