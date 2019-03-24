using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BudgetApp
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
               
                

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=Budget;Integrated Security=true");
            conn.Open();
            SqlCommand obj = new SqlCommand("select count(*) from register where username='" + TextBox1.Text + "'", conn);
            int temp = Convert.ToInt32(obj.ExecuteScalar().ToString());
            if (temp == 1)
            {    
                Response.Write("User already exists!!");
            }
            else
            {
                SqlCommand obj1 = new SqlCommand("insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", conn);
                SqlCommand obj2 = new SqlCommand("insert into login values('" + TextBox1.Text + "','" + TextBox4.Text + "')", conn);
                obj1.ExecuteNonQuery();
                obj2.ExecuteNonQuery();
                Label6.Text = "Your are successfully registered with us..Login to continue";
               
            }
            
            conn.Close();


        }

        
    }
}