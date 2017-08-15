namespace CRUDmvc.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Entidad1",
                c => new
                    {
                        IdEntidad1 = c.Int(nullable: false, identity: true),
                        NombreEntidad = c.String(),
                        DetalleEntidad = c.String(),
                        Cantidad = c.Int(nullable: false, defaultValue: 0),
                    })
                .PrimaryKey(t => t.IdEntidad1);
            
            CreateTable(
                "dbo.Entidad2",
                c => new
                    {
                        IdEntidad2 = c.Int(nullable: false, identity: true),
                        NombreEntidad = c.String(),
                        DetalleEntidad = c.String(),
                        Cantidad = c.Int(nullable: false,defaultValue:0),
                    })
                .PrimaryKey(t => t.IdEntidad2);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Entidad2");
            DropTable("dbo.Entidad1");
        }
    }
}
