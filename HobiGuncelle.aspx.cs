using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HobiGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         int x = Convert.ToInt16(Request.QueryString["ID"]);
        Txtid.Text = x.ToString();
        Txtid.Enabled = false;

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
            Txthobi.Text = dt.HobiGetir(Convert.ToInt16(x))[0].HOBI;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
        dt.HobiGuncelle(Txthobi.Text, Convert.ToInt16(Txtid.Text));
        Response.Redirect("HobilerListesi.Aspx");
    }
}