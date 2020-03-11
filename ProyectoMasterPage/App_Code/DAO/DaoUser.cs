using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

public class DaoUser
{
    public EUser Login(EUser usuarios)
    {
        using (var db = new Mapeo())
            return db.usuario.Where(x => x.Email.Equals(usuarios.Email) && x.Password.Equals(usuarios.Password)).FirstOrDefault();
    }
    public List<EUser> obtenerUsuario()
    {
        using (var db = new Mapeo())
        {
            return (from usuarios in db.usuario
                    select new
                    {
                        usuarios
                    }).ToList().Select(objeto => new EUser
                    {
                        Id = objeto.usuarios.Id,
                        NombreUsuario = objeto.usuarios.NombreUsuario,
                        Email = objeto.usuarios.Email,
                        Password = objeto.usuarios.Password
                    }).ToList();
        }
    }

    public void actualizarUsuario(EUser usuarios)
    {
        using (var db = new Mapeo())
        {

            EUser user1 = db.usuario.Where(x => x.Id == usuarios.Id).First();
            user1.NombreUsuario = usuarios.NombreUsuario;
            user1.Email = usuarios.Email;
            user1.Password = usuarios.Password;
            db.usuario.Attach(user1);

            var entry = db.Entry(user1);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarUsuario(EUser usuarios)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Attach(usuarios);

            var entry = db.Entry(usuarios);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public void insertarUsuario(EUser usuarios)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Add(usuarios);
            db.SaveChanges();
        }
    }
}