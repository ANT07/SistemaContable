using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1
{


    public class Conexion
    {
        public SqlConnection conector;
        string cadenaConexion = null;


        public Conexion()
        {
            cadenaConexion = ConfigurationManager.ConnectionStrings["sql"].ToString();
            conector = new SqlConnection(cadenaConexion);
        }
    }
}