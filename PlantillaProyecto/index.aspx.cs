using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlantillaProyecto
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["user"] == null)
            {
                Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            }
            else
            {
                Request.Cookies["user"].Value = null;
                Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);

            }

        }
    }
}