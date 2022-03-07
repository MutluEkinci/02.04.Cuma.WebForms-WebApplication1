using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnYaz_Click(object sender, EventArgs e)
        {
            ViewState.Add("data", TextBox2.Text);
        }

        protected void BtnOku_Click(object sender, EventArgs e)
        {
            Response.Write(ViewState["data"]);
        }
    }
}