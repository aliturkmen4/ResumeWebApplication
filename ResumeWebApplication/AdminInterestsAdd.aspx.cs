using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminInterestsAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableInterestsTableAdapter dt = new DataSetTableAdapters.TableInterestsTableAdapter();

            dt.InterestAdd(TextBox1.Text);

            Response.Redirect("AdminInterests.aspx");
        }
    }
}