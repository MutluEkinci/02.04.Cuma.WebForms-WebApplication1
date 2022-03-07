using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class detay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cross Postback
            //TextBox txt=(TextBox)Page.PreviousPage.FindControl("TextBox1");

            // Response.Write(txt.Text);

            string id = Request.QueryString["id"];

            
            //Query string
            string str = Request.QueryString.Get("msj");
            string str2 = Request.QueryString["msj"];

            Response.Write(str + " " + str2);
        }
    }
}