using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}