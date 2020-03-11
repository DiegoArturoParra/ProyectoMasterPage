using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Juegos_CreateForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnInsertar_Click(object sender, EventArgs e)
    {
        EJuego juego = new EJuego();
        if (inputNombre.Text == "" || inputPrecio.Text =="" || inputFechaLanzamiento.Text =="")
        {
            LabelErrores.Text = "Todos los campos se deben llenar";
            LabelErrores.Visible = true;
        }
        else
        {
            juego.NombreJuego = inputNombre.Text;
            juego.Precio = Convert.ToDouble(inputPrecio.Text);
            juego.FechaLanzamiento = Convert.ToDateTime(inputFechaLanzamiento.Text);
            new DaoJuego().insertarJuego(juego);
        }
    }
}