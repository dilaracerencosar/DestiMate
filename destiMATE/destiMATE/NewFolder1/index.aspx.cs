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
            // Sayfa ilk defa yüklendiðinde kontrol et
            CheckUserSession();
        }


    }
    private void CheckUserSession()
    {
        // Session'da kullanýcý adý varsa, Literal kontrolüne yaz
        if (Session["UserName"] != null)
        {
            UserNameLiteral.Text = Session["UserName"].ToString();
        }
        else
        {
            // Kullanýcý giriþ yapmamýþsa, giriþ yapma sayfasýna yönlendir
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