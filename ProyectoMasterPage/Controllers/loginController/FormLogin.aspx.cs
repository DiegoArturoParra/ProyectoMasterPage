using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Login_FormLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginPrueba_Authenticate(object sender, AuthenticateEventArgs e)
    {
        EUser eUser = new EUser();
        eUser.Email = loginPrueba.UserName.ToString();
        eUser.Password = loginPrueba.Password.ToString();
        // se iguala el objeto eUser a la clase DaoUser con el metodo Login
        //para la busqueda del usuario
        eUser = new DaoUser().Login(eUser);

        if (eUser != null)
        {

            if (eUser.NombreUsuario.Equals("Diego"))
            {
                Response.Redirect("../Pqr/IndexForm.aspx");
            }
            else if (eUser.NombreUsuario.Equals("Laura"))
            {
                Response.Redirect("../Libros/IndexForm.aspx");
            }
            else if (eUser.NombreUsuario.Equals("Carlos"))
            {
                Response.Redirect("../ComponentesPC/IndexForm.aspx");
            }
            else if (eUser.NombreUsuario.Equals("Monje"))
            {
                Response.Redirect("../Juegos/IndexForm.aspx");
            }
            else if (eUser.NombreUsuario.Equals("Anderson"))
            {
                Response.Redirect("../Usuarios/IndexForm.aspx");
            }
            else
            {
                loginPrueba.FailureText = "No esta ese usuario registrado.";
            }
        }
    }
}