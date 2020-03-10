using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Eidentificacion
/// </summary>
/// 
[Serializable]
[Table("identificacion", Schema = "pqr")]
public class EIdentificacion
{
    private int id;
    private string tipoIdentificacion;
    [Column ("id")]
    public int Id { get => id; set => id = value; }
    [Column("tipo_identificacion")]
    public string TipoIdentificacion { get => tipoIdentificacion; set => tipoIdentificacion = value; }
}