using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Yemekid"]);

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand(" Select * From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {

                TxtAd.Text = dr[1].ToString();
                TxtMalzeme.Text = dr[2].ToString();
                TxtTarif.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();


            if (Page.IsPostBack == false)
            {
                //Kategori Listeleme
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
           


        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // Tüm yemeklerin durumunu false yapar
        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        // Günün yemeği için id ye göre durumu true yapar
        SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=1 where Yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}