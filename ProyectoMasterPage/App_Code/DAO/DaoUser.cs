using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DaoUser
/// </summary>
public class DaoUser
{
    public EUser Login(EUser eUser)
    {
        using (var db = new Mapeo())
            return db.usuario.Where(x => x.Email.Equals(eUser.Email) && x.Password.Equals(eUser.Password)).FirstOrDefault();
    }
}