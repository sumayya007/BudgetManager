using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BudgetApp
{
    public partial class _new : System.Web.UI.Page
    {
        static String imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label6.Text = Session["username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("display.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {  
            ScriptManager.RegisterStartupScript(this.Page,this.Page.GetType(), "script", "<script type='text/javascript'>Budget();</script>", false);
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=Budget;Integrated Security=true");
            conn.Open();

            if (file1.HasFile == true)
            {

                String contenttype = file1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    string f = Path.GetFileName(file1.PostedFile.FileName);
                    file1.SaveAs(Server.MapPath("~/saveimg/") + f);
                    imagelink = "saveimg/" + f ;
                    
                    //file1.SaveAs(HttpContext.Current.Server.MapPath("~/saveimg/"+f));
                    //imagelink ="~/saveimg/"+file1.FileName;
                }
            }
            int a = Convert.ToInt32(exp.Text);
            int b = Convert.ToInt32(budget.Text);

            int balance = b - a;

            SqlCommand obj = new SqlCommand("insert into budgetdetails values('"+Session["username"].ToString()+"','" + ddlmonth.SelectedValue + "','" + exp.Text + "','" + budget.Text + "','" + balance + "','" + imagelink + "')", conn);
            obj.ExecuteNonQuery();
       
            conn.Close();


        }

        
    }
}