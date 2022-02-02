using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminEducationAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableEducationTableAdapter dt = new DataSetTableAdapters.TableEducationTableAdapter();
            dt.EducationAdd(TxtTitle.Text, TxtSubtitle.Text, TxtDescription.Text, TxtGPA.Text, TxtDate.Text);
            Response.Redirect("AdminEducation.aspx");
        }
    }
}