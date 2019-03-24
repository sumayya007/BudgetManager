using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BudgetApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string newuser = TextBox1.Text;
            string newpass = TextBox2.Text;
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=Budget;Integrated Security=true");
            conn.Open();
            SqlCommand obj = new SqlCommand("select * from login where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string user = dt.Rows[0]["username"].ToString();
                string pass= dt.Rows[0]["password"].ToString();
                if (newuser==user&&newpass==pass)
                {
                    Session["username"] = user;
                    Response.Redirect("new.aspx");
                }
                else
                {
                    Label4.Text = "Invalid username or password";
                }

            }
            else
            {
                Label4.Text = "Invalid username or password";
            }
            conn.Close();
        }


    }
}