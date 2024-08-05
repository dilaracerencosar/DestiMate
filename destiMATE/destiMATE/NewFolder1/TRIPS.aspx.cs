using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewFolder1_TRIPS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductData();
        }
    }
    private void BindProductData()
    {
        string connectionString = "Data Source=DCC;Initial Catalog=ReaDorm2;Integrated Security=True;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand("SELECT * FROM Products", connection))
            {
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                rptProducts.DataSource = dataTable;
                rptProducts.DataBind();
            }
        }
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        //Button btn = (Button)sender;
        //string[] arguments = btn.CommandArgument.Split('|');

        //// Sepete ekleme işlemlerini gerçekleştirin
        //// Örnek:
        //AddToCart(arguments[0], arguments[1], arguments[2]);

        //// CART.aspx sayfasına yönlendirme
        //Response.Redirect("~/CART.aspx");
    }

    private void AddToCart(string productId, string productName, string productPrice)
    {
        // Sepete ekleme işlemleri burada gerçekleştirilecek
        // Örnek:
        // ... Sepet işlemleri ...
    }
}