using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TestMVC.Models
{
    public class Registro
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdRegistro { get; set; }
        public string Titulo { get; set; }
        public DateTime? FechaAgenda { get; set; }
        public string Observaciones { get; set; }
        public decimal Valor { get; set; }
    }
}