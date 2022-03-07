using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCookieYaz_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Cerezos");

            cookie.Value = TextBox1.Text;
            DateTime tarih = DateTime.Now;
            cookie.Expires = tarih.AddDays(15);

            Response.Cookies.Add(cookie);
        }

        protected void btnCookieOku_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Cerezos"];

            Response.Write(cookie.Value);
        }
    }
}