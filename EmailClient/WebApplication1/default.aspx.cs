using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Login Code Goes Here
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Reset Code Goes Here
        }
    }
}