using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(DropDownList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Bütün butonlarda oto postback vardır.
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("detay.aspx?msj=" + Server.UrlEncode(TextBox1.Text));//özel karakterler varsa urlencode kullanılır.
        }
    }
}