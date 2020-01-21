using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjeSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        DataSetTableAdapters.TBLPROJELERTableAdapter dt = new DataSetTableAdapters.TBLPROJELERTableAdapter();
        dt.ProjeSil(Convert.ToInt16(x));
        Response.Redirect("ProjeListesi.Aspx");
    }
}