using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Image = iTextSharp.text.Image;
using System.Runtime.Remoting.Contexts;
using System.Data.SqlClient;
using System.Data;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing;

namespace BudgetApp
{
    public partial class display : System.Web.UI.Page
    {
        private readonly string url;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
                bindgrid();
            }



        }
        public void bindgrid()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=Budget;Integrated Security=true");
            conn.Open();
            SqlCommand obj = new SqlCommand("select expense,budget,balance,bill from budgetdetails where month='" + DropDownList1.SelectedValue + "' and username='" + Session["username"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(obj);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            double totalbudget = 0;
            double totalexpense = 0;
            double totalbalance = 0;
            foreach (DataRow dr in dt.Rows)
            {
                totalbudget += Convert.ToDouble(dr["budget"]);
                totalexpense += Convert.ToDouble(dr["expense"]);
                totalbalance += Convert.ToDouble(dr["balance"]);

            }
           
            GridView1.Columns[0].FooterText = totalexpense.ToString();
            GridView1.Columns[1].FooterText = totalbudget.ToString();
            GridView1.Columns[2].FooterText = totalbalance.ToString();
            GridView1.Columns[3].FooterText = "Total";
            dt.AcceptChanges();
            GridView1.DataBind();
            conn.Close();

        }


        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }



        protected void btnMail_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "script", "<script type='text/javascript'>Sendmail();</script>", false);
            StringWriter sw = new StringWriter();
            HtmlTextWriter ht = new HtmlTextWriter(sw);
            GridView1.RenderControl(ht);
            MailMessage mail = new MailMessage("sumayyadev007@gmail.com", TextBox2.Text);
            mail.Body = "<h1>Your monthly Report</h1><hr/>" + sw.ToString();
            mail.IsBodyHtml = true;
            mail.Subject = "Monthly Budget Report";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            System.Net.NetworkCredential nc = new System.Net.NetworkCredential("sumayyadev007@gmail.com", "bigdreams$456#");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;

            try
            {
                smtp.Send(mail);


            }

            catch (Exception ex)
            {
                Response.Write("Exception in sendEmail:" + ex.Message);
            }
            
        }
     

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("login.aspx");
        }

    }
}