using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strpath = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
            {
                Response.Write("Only image formats(jpg, png, gif) are accepted");
            }
            else
            {
            {
                string path = Server.MapPath("~/images/");
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                Image1.ImageUrl = "~/images/" + FileUpload1.FileName;
            }
        }
    }
}