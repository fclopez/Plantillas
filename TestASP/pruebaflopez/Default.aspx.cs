using pruebaflopez.DAL;
using System;
using System.Web.UI;


namespace pruebaflopez
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarOficinas();
        }

        public void cargarOficinas()
        {
            Conexion conexion = new Conexion();
            gvw_oficinas.DataSource = conexion.consultarOficinas();
            gvw_oficinas.DataBind();
        }

    }
}
