using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResumeWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false) { 

            DataSetTableAdapters.TableAboutmeTableAdapter dt = new DataSetTableAdapters.TableAboutmeTableAdapter();
            TextBox1.Text = dt.ListAboutme()[0].Name;
            TextBox2.Text = dt.ListAboutme()[0].Surname;
            TextBox3.Text = dt.ListAboutme()[0].Adress;
            TextBox4.Text = dt.ListAboutme()[0].Mail;
            TextBox5.Text = dt.ListAboutme()[0].Phone;
            TextBox6.Text = dt.ListAboutme()[0].Note;
            TextBox7.Text = dt.ListAboutme()[0].Image;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TableAboutmeTableAdapter dt1 = new DataSetTableAdapters.TableAboutmeTableAdapter();

            dt1.AboutmeUpdate(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
            Response.Redirect("Main.aspx");
        }
    }
}