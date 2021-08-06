using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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
            string sql = "select * from login where username='" + txtunm.Text + "' and password='" + txtPwd.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, ITClass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count==1)
            {
                Session["user"] = txtunm.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Invalid Username or Password");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Reset Code Goes Here
        }
    }
}