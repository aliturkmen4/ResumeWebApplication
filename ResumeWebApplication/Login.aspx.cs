using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ResumeWebApplication
{

    public partial class Login : System.Web.UI.Page
    {

        SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BlogWebDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select * from TableAdmin where username=@p1 and password=@p2", connection);
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("AdminExperience.aspx");
            }
            else
            {
                Response.Write("Wrong username or password! Try it again");
            }
            connection.Close();
        }
    }
}