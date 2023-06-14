using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Button3.Visible = false;

        if (Page.IsPostBack==false)
        {

            SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Tbl_Hakkimizda set Metin=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button3.Visible = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Button3.Visible = false;
    }
}