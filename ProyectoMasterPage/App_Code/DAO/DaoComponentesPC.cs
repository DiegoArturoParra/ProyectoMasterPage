using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DaoComponentesPC
/// </summary>
public class DaoComponentesPC
{
    public List<EComponentesPC> obtenerComponentesPc()
    {
        using (var db = new Mapeo())
        {
            return (from componentespc in db.componentesPC
                    select new
                    {
                        componentespc
                    }).ToList().Select(objeto => new EComponentesPC
                    {
                       Id = objeto.componentespc.Id,
                       Descripcion = objeto.componentespc.Descripcion,
                       NombreProducto = objeto.componentespc.NombreProducto,
                       ValorProducto = objeto.componentespc.ValorProducto
                    }).ToList();
        }
    }

    public void actualizarComponentesPc(EComponentesPC componentes)
    {
        using (var db = new Mapeo())
        {

            EComponentesPC componentepc = db.componentesPC.Where(x => x.Id == componentes.Id).First();
            componentepc.Id = componentepc.Id;
            componentepc.NombreProducto = componentes.NombreProducto;
            componentepc.ValorProducto = componentes.ValorProducto;
            componentepc.Descripcion = componentes.Descripcion;
            db.componentesPC.Attach(componentepc);
            var entry = db.Entry(componentepc);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarComponentesPc(EComponentesPC componentes)
    {
        using (var db = new Mapeo())
        {
            db.componentesPC.Attach(componentes);

            var entry = db.Entry(componentes);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public void insertarComponentesPc(EComponentesPC componentes)
    {
        using (var db = new Mapeo())
        {
            db.componentesPC.Add(componentes);
            db.SaveChanges();
        }
    }
}