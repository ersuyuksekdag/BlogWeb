using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDeneyimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        Txtid.Text = x.ToString();
        Txtid.Enabled = false;
        

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLDENEYIMTableAdapter dt = new DataSetTableAdapters.TBLDENEYIMTableAdapter();
            Txtbaslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].BASLIK;
            Txtaltbaslik.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
            Txtaciklama.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
            Txttarih.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].TARIH;
        }
    }
    
    protected void Btnguncelle_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLDENEYIMTableAdapter dt = new DataSetTableAdapters.TBLDENEYIMTableAdapter();
        dt.DeneyimGuncelle(Txtbaslik.Text, Txtaltbaslik.Text, Txtaciklama.Text, Txttarih.Text, Convert.ToInt16(Txtid.Text));
        Response.Redirect("AdminDeneyim.Aspx");
    }
}