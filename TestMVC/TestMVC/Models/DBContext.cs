using System.Data.Entity;

namespace TestMVC.Models
{
    public class DBContext: DbContext
    {
        public DBContext() : base("DataContext")
        {
            Database.SetInitializer(new CreateDatabaseIfNotExists<DBContext>());
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Registro> Registroes { get; set; }

    }
}