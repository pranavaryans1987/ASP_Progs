using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {
                lblUnm.Text = "Welcome : " + Session["user"].ToString();
                compose.Visible = false;
                inbox.Visible = false;
                sent.Visible = false;
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void lnkCompose_Click(object sender, EventArgs e)
        {
            compose.Visible = true;
        }

        protected void lnkInbox_Click(object sender, EventArgs e)
        {
            inbox.Visible = true;
        }

        protected void lnkSent_Click(object sender, EventArgs e)
        {
            sent.Visible = true;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string send = Session["user"].ToString();
            string rece = txtreceiver.Text;
            string msg = txtMsg.Text;
            string subj = txtSubject.Text;
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP\EmailClient\WebApplication1\App_Data\Mail.mdf;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("insert into Mail values('"+ send + "','"+rece+"','"+subj+"','"+msg+"')",cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("Mail Sent");
        }
    }
}