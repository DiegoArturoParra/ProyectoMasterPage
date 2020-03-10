using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DaoUsuario
/// </summary>
public class DaoPqr
{
    public List<ESolicitud> obtenerSolicitud()
    {
        using (var db = new Mapeo())
        {
            return db.solicitud.ToList();
        }
    }

    public List<EIdentificacion> obtenerIdentificacion()
    {
        using (var db = new Mapeo())
        {
            return db.identificacion.ToList();
        }
    }

    public List<EPqr> obtenerPqr()
    {
        using (var db = new Mapeo())
        {
            return (from pqrs in db.ePqrs
                    join request in db.solicitud
                    on pqrs.IdTipoSolicitud equals request.Id
                    join ide in db.identificacion
                    on pqrs.IdTipoIdentificacion equals ide.Id

                    select new
                    {
                        pqrs,
                        request,
                        ide
                    }).ToList().Select(objeto => new EPqr
                    {
                        Id = objeto.pqrs.Id,
                        Nombre = objeto.pqrs.Nombre,
                        Email = objeto.pqrs.Email,
                        Direccion = objeto.pqrs.Direccion,
                        Telefono = objeto.pqrs.Telefono,
                        Identificacion = objeto.pqrs.Identificacion,
                        IdTipoIdentificacion = objeto.pqrs.IdTipoIdentificacion,
                        IdTipoSolicitud = objeto.pqrs.IdTipoSolicitud,
                        TipoIdentificacion = objeto.ide.TipoIdentificacion,
                        TipoSolicitud = objeto.request.TipoSolicitud,
                        Descripcion = objeto.pqrs.Descripcion
                    }).ToList();
        }
    }

    public void actualizarPqr(EPqr pqr)
    {
        using (var db = new Mapeo())
        {

            EPqr userPqr = db.ePqrs.Where(x => x.Id == pqr.Id).First();
            userPqr.Nombre = pqr.Nombre;
            userPqr.Email = pqr.Email;
            userPqr.Direccion = pqr.Direccion;
            userPqr.Telefono = pqr.Telefono;
            userPqr.Identificacion = pqr.Identificacion;
            userPqr.Descripcion = pqr.Descripcion;
            db.ePqrs.Attach(userPqr);

            var entry = db.Entry(userPqr);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarPqr(EPqr pqr)
    {
        using (var db = new Mapeo())
        {
            db.ePqrs.Attach(pqr);

            var entry = db.Entry(pqr);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

    public void insertarPqr(EPqr pqr)
    {
        using (var db = new Mapeo())
        {
            db.ePqrs.Add(pqr);
            db.SaveChanges();
        }
    }
}

