using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Iletisim : System.Web.UI.Page
{
    sqlSinif bgl = new sqlSinif();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen, MesajBaslik, MesajMail, Mesajİcerik) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
        komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
        komut.Parameters.AddWithValue("@p3", TxtMail.Text);
        komut.Parameters.AddWithValue("@p4", Txtİcerik.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        Response.Write("<script> alert('Mesajınız Bize Ulaşmıştır. Bizimle İletişime Geçtiğiniz İçin Teşekkür Ederiz.') </script>");


    }
}