using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DaoJuegos
/// </summary>
public class DaoJuego
{
    public List<EJuego> obtenerJuego()
    {
        using (var db = new Mapeo())
        {
            return (from juegos in db.game
                    select new
                    {
                        juegos
                    }).ToList().Select(objeto => new EJuego
                    {
                        Id = objeto.juegos.Id,
                        NombreJuego = objeto.juegos.NombreJuego,
                        FechaLanzamiento = objeto.juegos.FechaLanzamiento,
                        Precio = objeto.juegos.Precio
                    }).ToList();
        }
    }

    public void actualizarJuego(EJuego games)
    {
        using (var db = new Mapeo())
        {

            EJuego juego = db.game.Where(x => x.Id == games.Id).First();
            juego.Id = games.Id;
            juego.NombreJuego = games.NombreJuego;
            juego.FechaLanzamiento = games.FechaLanzamiento;
            juego.Precio = games.Precio;
            db.game.Attach(juego);
            var entry = db.Entry(juego);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarJuego(EJuego games)
    {
        using (var db = new Mapeo())
        {
            db.game.Attach(games);
            var entry = db.Entry(games);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public void insertarJuego(EJuego games)
    {
        using (var db = new Mapeo())
        {
            db.game.Add(games);
            db.SaveChanges();
        }
    }
}