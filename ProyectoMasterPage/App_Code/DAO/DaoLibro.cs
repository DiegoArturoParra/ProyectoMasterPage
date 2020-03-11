using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DaoLibros
/// </summary>
public class DaoLibro
{
    public List<ELibro> obtenerLibro()
    {
        using (var db = new Mapeo())
        {
            return (from book in db.libro
                    select new
                    {
                        book
                    }).ToList().Select(objeto => new ELibro
                    {
                        Id = objeto.book.Id,
                        NombreLibro = objeto.book.NombreLibro,
                        Autor = objeto.book.Autor,
                        NumeroDePaginas = objeto.book.NumeroDePaginas
                    }).ToList();
        }
    }

    public void actualizarLibro(ELibro books)
    {
        using (var db = new Mapeo())
        {

            ELibro book1 = db.libro.Where(x => x.Id == books.Id).First();
            book1.NombreLibro = books.NombreLibro;
            book1.Autor = books.Autor;
            book1.NumeroDePaginas = books.NumeroDePaginas;
            db.libro.Attach(book1);
            var entry = db.Entry(book1);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarLibro(ELibro books)
    {
        using (var db = new Mapeo())
        {
            db.libro.Attach(books);
            var entry = db.Entry(books);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public void insertarLibro(ELibro books)
    {
        using (var db = new Mapeo())
        {
            db.libro.Add(books);
            db.SaveChanges();
        }
    }
}