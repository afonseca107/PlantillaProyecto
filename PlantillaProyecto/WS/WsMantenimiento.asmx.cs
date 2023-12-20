﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Description;

namespace PlantillaProyecto.WS
{
    /// <summary>
    /// Descripción breve de WsMantenimiento
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class WsMantenimiento : System.Web.Services.WebService
    {

        [WebMethod]
        public string Login()
        {
            return "Hola a todos";
        }
    }
}
