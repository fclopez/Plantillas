namespace TestMVC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class GenerarDB : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Registroes",
                c => new
                    {
                        IdRegistro = c.Int(nullable: false, identity: true),
                        Titulo = c.String(),
                        FechaAgenda = c.DateTime(nullable: true),
                        Observaciones = c.String(),
                        Valor = c.Decimal(nullable: true, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.IdRegistro);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Registroes");
        }
    }
}
