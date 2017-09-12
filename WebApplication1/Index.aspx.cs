using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace FormulariosWeb
{
    public partial class Index : System.Web.UI.Page
    {

        //TODO SUPONIENDO QUE SEGUIREMOS EL DETALLE DE TABLAS QUE EL ING HA MANDADO
        protected void Page_Load(object sender, EventArgs e)
        {
            //esta parte es para comprobar que la pagina ha sido cargada de nuevo por el envio de los datos invalidos de usuario
            if (IsPostBack)
            {
                if (Session["validado"] != null)
                {
                    bool validado = (bool)Session["validado"];
                    if (validado == false)
                    {
                        this.Response.Write("error de usuario");
                    }
                }
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //evaluar que los campos no esten vacios
            //aunque los campos relamente son requeridos
            if (!txtUsuario.Text.Equals("") && !txtPassword.Text.Equals(""))
            {
                string usuario = txtUsuario.Text;
                string contraseña = txtPassword.Text;
                //el objeto conexion es para reducir el codigo evitando estar llamando a la cadena de conexion del archivo config}
                //que por cierto debes cambiar la cadena segun las especificaciones en tu computadora
                Conexion cn = new Conexion();

                try
                {
                    //consulta de la existencia del usuario
                    SqlCommand consulta = new SqlCommand();
                    consulta.CommandText = "select * from usuario where nombre=@nombre and clave=@clave";
                    consulta.Connection = cn.conector;
                    consulta.Parameters.AddWithValue("@nombre", usuario);
                    consulta.Parameters.AddWithValue("@clave", contraseña);
                    cn.conector.Open();

                    SqlDataReader lectura = consulta.ExecuteReader();

                    //lectura de resultados de consulta
                    if (lectura.Read())
                    {
                        //si hay resultado, el usuario es redireccionado a la siguiente pagina
                        this.Response.Redirect("usuarios.aspx");
                    }
                    else
                    {
                        //si no almacenamos la variable false para que sea leida cuando la pagina se recarge nuevamente y aparesca el mensaje de error de usuario
                        Session["validado"] = false;
                    }
                }

                catch (Exception ex)
                {
                }
                finally
                {
                    //cerrar siempre la conexion
                    cn.conector.Close();
                }
            }
        }
    }
}