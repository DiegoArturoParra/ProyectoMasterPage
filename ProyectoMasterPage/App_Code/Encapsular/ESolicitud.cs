using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Eidentificacion
/// </summary>
/// 
[Serializable]
[Table("solicitud", Schema = "pqr")]
public class ESolicitud
{
    private int id;
    private string tipoSolicitud;
    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }

    [Column("tipo_solicitud")]
    public string TipoSolicitud { get => tipoSolicitud; set => tipoSolicitud = value; }
}
