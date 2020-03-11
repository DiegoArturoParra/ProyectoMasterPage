using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Pqr_IndexForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView_pqr_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView_pqr.DataBind();
    }
}