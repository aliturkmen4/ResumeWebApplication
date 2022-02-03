using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class AdminEducationUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Enabled = false;
            TxtID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TableEducationTableAdapter dt = new DataSetTableAdapters.TableEducationTableAdapter();
                TxtTitle.Text = dt.BringEducation(Convert.ToInt16(x))[0].Title;
                TxtSubtitle.Text = dt.BringEducation(Convert.ToInt16(x))[0].Subtitle;
                TxtDescription.Text = dt.BringEducation(Convert.ToInt16(x))[0].Description;
                TxtDate.Text = dt.BringEducation(Convert.ToInt16(x))[0].Date;
                TxtGPA.Text = dt.BringEducation(Convert.ToInt16(x))[0].GPA;
            }
        }
    }
}