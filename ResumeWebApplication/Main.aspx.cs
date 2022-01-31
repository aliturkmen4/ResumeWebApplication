using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableAboutmeTableAdapter dt = new DataSetTableAdapters.TableAboutmeTableAdapter();
            Repeater1.DataSource = dt.ListAboutme();
            Repeater1.DataBind();

            DataSetTableAdapters.TableExperienceTableAdapter dt2 = new DataSetTableAdapters.TableExperienceTableAdapter();
            Repeater2.DataSource = dt2.ListofExperince();
            Repeater2.DataBind();

            DataSetTableAdapters.TableEducationTableAdapter dt3 = new DataSetTableAdapters.TableEducationTableAdapter();
            Repeater3.DataSource = dt3.ListofEducation();
            Repeater3.DataBind();

            DataSetTableAdapters.TableInterestsTableAdapter dt4 = new DataSetTableAdapters.TableInterestsTableAdapter();
            Repeater4.DataSource = dt4.ListofInterest();
            Repeater4.DataBind();

            DataSetTableAdapters.TableCertificationsTableAdapter dt5 = new DataSetTableAdapters.TableCertificationsTableAdapter();
            Repeater5.DataSource = dt5.ListofCertifications();
            Repeater5.DataBind();

            DataSetTableAdapters.TableSkillsTableAdapter dt6 = new DataSetTableAdapters.TableSkillsTableAdapter();
            Repeater6.DataSource = dt6.ListofSkills();
            Repeater6.DataBind();
        }
    }
}