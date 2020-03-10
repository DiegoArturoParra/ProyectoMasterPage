using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Euser
/// </summary>
[Serializable]
[Table("registropqr", Schema = "pqr")]
public class EPqr
{
    private int id;
    private string nombre;
    private string email;
    private string telefono;
    private string direccion;
    private string identificacion;
    private Nullable<int> idTipoIdentificacion;
    private Nullable<int> idTipoSolicitud;
    private string tipoIdentificacion;
    private string tipoSolicitud;
    private string descripcion;
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }

    [Column("nombre_usuario")]
    public string Nombre { get => nombre; set => nombre = value; }

    [Column("email")]
    public string Email { get => email; set => email = value; }

    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }

    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }

    [Column("identificacion")]
    public string Identificacion { get => identificacion; set => identificacion = value; }

    [Column("id_tipo_identificacion")]
    public int? IdTipoIdentificacion { get => idTipoIdentificacion; set => idTipoIdentificacion = value; }

    [Column("id_tipo_solicitud")]
    public int? IdTipoSolicitud { get => idTipoSolicitud; set => idTipoSolicitud = value; }

    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }

    [NotMapped]
    public string TipoIdentificacion { get => tipoIdentificacion; set => tipoIdentificacion = value; }

    [NotMapped]
    public string TipoSolicitud { get => tipoSolicitud; set => tipoSolicitud = value; }
   
}