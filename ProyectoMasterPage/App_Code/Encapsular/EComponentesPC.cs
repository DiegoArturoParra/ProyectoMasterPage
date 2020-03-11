using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EComponentesPC
/// </summary>
[Serializable]
[Table("producto", Schema = "componentespc")]
public class EComponentesPC
{
    [Key]
    [Column("id_producto")]
    public int Id { get; set; }
    [Column("descripcion")]
    public string Descripcion { get; set; }
    [Column("nombre_producto")]
    public string NombreProducto { get; set; }
    [Column("valor_producto")]
    public double ValorProducto { get; set; }
}