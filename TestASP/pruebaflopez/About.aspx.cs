using pruebaflopez.DAL;
using System;
using System.Web.UI;


namespace pruebaflopez
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = Convert.ToInt32( Request.QueryString["id"]);
            cargarGiros(a);
        }

        public void cargarGiros(int id)
        {
            Conexion conexion = new Conexion();
            gvw_giros.DataSource = conexion.consultarGiros(id);
            gvw_giros.DataBind();
        }

    }
}
