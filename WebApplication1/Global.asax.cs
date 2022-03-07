using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["sayac"] = 0;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            int sayac = Convert.ToInt32(Application["sayac"]);
            Application["sayac"] = ++sayac;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            int sayac = Convert.ToInt32(Application["sayac"]);
            Application["sayac"] = --sayac;
        }
    }
}