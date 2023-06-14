using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yorumid"]);

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, Yorumİcerik, YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                Txtİcerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();
            }

            bgl.baglanti().Close();
        }

    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yorumid"]);


        SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set Yorumİcerik=@p1, YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txtİcerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}
