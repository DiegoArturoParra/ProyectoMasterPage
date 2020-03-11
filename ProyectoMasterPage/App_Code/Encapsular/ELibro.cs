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
[Table("libro", Schema = "biblioteca")]
public class ELibro
{
    [Key]
    [Column("id_libro")]
    public int Id { get; set; }
    [Column("autor")]
    public string Autor { get; set; }
    [Column("numeropaginas")]
    public int NumeroDePaginas { get; set; }
    [Column("nombre_libro")]
    public string NombreLibro { get; set; }
}