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
[Table("juegos", Schema = "videojuegos")]
public class EJuego
{
    [Key]
    [Column("id_juego")]
    public int Id { get; set; }

    [Column("nombre_juego")]
    public string NombreJuego { get; set; }

    [Column("precio")]
    public double Precio { get; set; }

    [Column("fecha_de_lanzamiento")]
    [DataType(DataType.Date)]
    [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
    public DateTime FechaLanzamiento { get; set; }
}