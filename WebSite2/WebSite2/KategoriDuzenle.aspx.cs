using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand(" Select * From Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);

        SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}