using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pruebaflopez.DAL;


namespace pruebaflopez
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarOficinas();
        }

        public void cargarOficinas() {
            Conexion conexion = new Conexion();
            gvw_oficinas.DataSource = conexion.consultarOficinas();
            gvw_oficinas.DataBind();
        }

    }
}
