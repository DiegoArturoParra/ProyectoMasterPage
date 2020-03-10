using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EUser
/// </summary>
[Serializable]
[Table("usuario", Schema = "login")]
public class EUser
{
    [Column("id")]
    public int Id { get; set; }

    [Column("email")]
    public string Email { get; set; }

    [Column("pass")]
    public string Password { get; set; }

    [Column("nombreusuario")]
    public string NombreUsuario { get; set; }
}
