using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CART : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCartContent();
        }

    }
    private void LoadCartContent()
    {
        // Sepet içeriğini burada yükleyin ve cart_content div'ine ekleyin
        // Örnek:
        cart_content.InnerHtml = "Sepet İçeriği Burada Görüntülenecek";
    }
}