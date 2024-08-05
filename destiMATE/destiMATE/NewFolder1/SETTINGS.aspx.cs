using System;
using System.Data.SqlClient;
using System.Web;

public partial class NewFolder1_SETTINGS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if the user is authenticated
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            // Get the username from the authentication ticket
            string username = HttpContext.Current.User.Identity.Name;

            // Fetch user details from the database using the username
            FetchUserDetails(username);
        }
        else
        {
            // If the user is not authenticated, redirect to the login page
            Response.Redirect("LOGIN.aspx");
        }
    }

    private void FetchUserDetails(string username)
    {
        // Connection string
        string connectionString = "Data Source=DCC;Initial Catalog=ReaDorm2;Integrated Security=True;";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Fetch user details based on the username
            string query = "SELECT FirstName, LastName, Email, PhoneNumber FROM Users WHERE UserName = @UserName";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@UserName", username);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        // Populate the form fields with user details
                        account_fn.Text = reader["FirstName"].ToString();
                        account_ln.Text = reader["LastName"].ToString();
                        account_email.Text = reader["Email"].ToString();
                        account_phone.Text = reader["PhoneNumber"].ToString();
                    }
                }
            }
        }
    }

    protected void UpdateProfileBtn_Click(object sender, EventArgs e)
    {
        // Add code here to update the user's profile in the database
        // You can use the values from the form fields (e.g., account_fn.Text, account_ln.Text, etc.)
        // Update the database based on the changes made by the user
    }
}
