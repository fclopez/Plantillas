using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CRUDmvc.Models
{
    public class ContextDB : DbContext
    {
        public ContextDB()
            : base("CRUDDBEntities")
        {
            Database.SetInitializer<ContextDB>(new CreateDatabaseIfNotExists<ContextDB>());
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Entidad1> Entidad1 { get; set; }
        public DbSet<Entidad2> Entidad2 { get; set; }
    }
}