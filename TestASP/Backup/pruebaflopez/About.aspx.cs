using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using pruebaflopez.DAL;

namespace pruebaflopez
{
    public partial class About : System.Web.UI.Page
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
