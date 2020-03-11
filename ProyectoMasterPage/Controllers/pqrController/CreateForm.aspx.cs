using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Pqr_CreateForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnGuardar_Click(object sender, EventArgs e)
    {
        EPqr pqr = new EPqr();

        pqr.Direccion = inputDireccion.Text;
        pqr.Email = inputEmail.Text;
        pqr.Nombre = inputNombre.Text;
        pqr.Telefono = inputTelefono.Text;
        pqr.Identificacion = inputIdentificacion.Text;
        pqr.IdTipoIdentificacion = int.Parse(listIdentificacion.SelectedValue);
        pqr.IdTipoSolicitud = int.Parse(listSolicitud.SelectedValue);
        pqr.Descripcion = inputDescripcion.Text;
        new DaoPqr().insertarPqr(pqr);
    }
}