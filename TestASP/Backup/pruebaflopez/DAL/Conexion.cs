using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Configuration;

namespace pruebaflopez.DAL
{
    public class Conexion
    {
        private SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ToString());

        public DataSet consultarOficinas() {
            DataSet dsOficinas = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter();
            using (conexion) {
                SqlCommand sp = new SqlCommand("SP_CMMONEYCASH_LISTA_OFICINAS", conexion);
                adaptador.SelectCommand = sp;
                adaptador.Fill(dsOficinas);
                return dsOficinas;  
            }
        }

        public DataTable consultarGiros(int idoficina)
        {
            DataSet dsGiros = new DataSet();
            using (conexion)
            {
                conexion.Open();
                SqlCommand sp = new SqlCommand("SP_CMMONEYCASH_GIROS", conexion);
                sp.Parameters.AddWithValue("@OFICINA_ID", idoficina);
                sp.CommandType = CommandType.StoredProcedure;
                SqlDataReader reader = sp.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                conexion.Close();
                return dt;
            }
        }

    }
}