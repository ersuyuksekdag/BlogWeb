using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEgitimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        Txtid.Enabled = false;
        Txtid.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLEGITIMTableAdapter dt = new DataSetTableAdapters.TBLEGITIMTableAdapter();
            Txtbaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].BASLIK;
            Txtaltbaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
            Txtaciklama.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
            Txtgnot.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].GNOT;
            Txttarih.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].TARIH;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLEGITIMTableAdapter dt = new DataSetTableAdapters.TBLEGITIMTableAdapter();
        dt.EgitimGuncelle(Txtbaslik.Text, Txtaltbaslik.Text, Txtaciklama.Text, Txtgnot.Text, 
            Txttarih.Text,Convert.ToInt16(Txtid.Text));
        Response.Redirect("AdminEgitim.Aspx");
    }
}