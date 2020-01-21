using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjeGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        Txtid.Text = x.ToString();
        Txtid.Enabled = false;

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLPROJELERTableAdapter dt = new DataSetTableAdapters.TBLPROJELERTableAdapter();
            Txtproje.Text = dt.ProjeGetir(Convert.ToInt16(x))[0].PROJELER;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLPROJELERTableAdapter dt = new DataSetTableAdapters.TBLPROJELERTableAdapter();
        dt.ProjeGuncelle(Txtproje.Text, Convert.ToInt16(Txtid.Text));
        Response.Redirect("ProjeListesi.Aspx");
    }
}