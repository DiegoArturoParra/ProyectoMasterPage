using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Mapeo
/// </summary>
public class Mapeo : DbContext
{
    public Mapeo() : base("Postgres")
    {
    }

    public DbSet<EUser> usuario { get; set; }
    public DbSet<EPqr> ePqrs { get; set; }
    public DbSet<EIdentificacion> identificacion { get; set; }
    public DbSet<ESolicitud> solicitud { get; set; }
    public DbSet<EComponentesPC> componentesPC { get; set; }
    public DbSet<ELibro> libro { get; set; }
    public DbSet<EJuego> game { get; set; }

}