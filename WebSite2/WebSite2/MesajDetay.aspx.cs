using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Mesajid"]);

        SqlCommand komut = new SqlCommand(" Select * From Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {

            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();

        }

        bgl.baglanti().Close();



    }
}