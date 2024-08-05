using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Sayfa ilk defa y�klendi�inde kontrol et
            CheckUserSession();
        }


    }
    private void CheckUserSession()
    {
        // Session'da kullan�c� ad� varsa, Literal kontrol�ne yaz
        if (Session["UserName"] != null)
        {
            UserNameLiteral.Text = Session["UserName"].ToString();
        }
        else
        {
            // Kullan�c� giri� yapmam��sa, giri� yapma sayfas�na y�nlendir
            Response.Redirect("LOGIN.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
   

    protected void ListButton_Click(object sender, EventArgs e)
    {

    }
}