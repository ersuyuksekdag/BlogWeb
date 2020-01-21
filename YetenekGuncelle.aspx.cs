using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YetenekGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int x = Convert.ToInt16(Request.QueryString["ID"]);
        Txtid.Text = x.ToString();
        Txtid.Enabled = false;

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLYETENEKTableAdapter dt = new DataSetTableAdapters.TBLYETENEKTableAdapter();
            Txtyetenek.Text = dt.YetenekGetir(Convert.ToInt16(x))[0].YETENEK;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLYETENEKTableAdapter dt = new DataSetTableAdapters.TBLYETENEKTableAdapter();
        dt.YetenekGuncelle(Txtyetenek.Text, Convert.ToInt16(Txtid.Text));
        Response.Redirect("YetenekListesi.Aspx");
    }
}