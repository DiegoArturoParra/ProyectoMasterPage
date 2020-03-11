using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Libros_CreateForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnInsertar_Click(object sender, EventArgs e)
    {
        ELibro libro = new ELibro();
        libro.Autor = inputAutor.Text;
        libro.NumeroDePaginas = Convert.ToInt32(inputPaginas.Text);
        libro.NombreLibro = inputNombreLibro.Text;
        new DaoLibro().insertarLibro(libro);
    }
}