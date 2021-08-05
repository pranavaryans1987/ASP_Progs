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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {          
            string sql = "insert into login values('" + txtunm.Text + "','" + txtPwd.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, ITClass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("You Have Registered Successfully!");
            clear();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            txtunm.Text = txtPwd.Text = txtRpwd.Text = "";
            txtunm.Focus();
        }
    }
}