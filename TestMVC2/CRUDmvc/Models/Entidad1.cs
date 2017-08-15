using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CRUDmvc.Models
{
    public class Entidad1
    {
        [Key,DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdEntidad1 { get; set; }
        public string NombreEntidad { get; set; }
        public string DetalleEntidad { get; set; }
        public int Cantidad { get; set; }
    }
}