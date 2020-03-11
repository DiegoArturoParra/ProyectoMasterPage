using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ComponentesPC_CreateForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        EComponentesPC componentespc = new EComponentesPC();
        componentespc.NombreProducto = inputNombreProducto.Text;
        componentespc.ValorProducto = Convert.ToDouble(inputValor.Text);
        componentespc.Descripcion = inputDescripción.Text;
        new DaoComponentesPC().insertarComponentesPc(componentespc);
    }
}