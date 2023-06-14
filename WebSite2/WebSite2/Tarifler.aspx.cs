using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Tarifler : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = false;

        SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}