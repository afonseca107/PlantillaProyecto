using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlantillaProyecto
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["user"] == null)
            {
                FormsAuthentication.RedirectToLoginPage();
            }

            btnSearch.ServerClick += BtnSearch_ServerClick;
        }

        private void BtnSearch_ServerClick(object sender, EventArgs e)
        {
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();

        }

        public void MostrarMensaje(string mensaje)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ mensaje + "')", true);
        }
    }
}