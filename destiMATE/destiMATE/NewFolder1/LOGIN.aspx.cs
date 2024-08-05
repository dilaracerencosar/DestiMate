using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class NewFolder1_LOGIN : System.Web.UI.Page
{
    string connectionString = "Data Source=LAPTOP-MGMCJM5J;Initial Catalog=DestiMate;Integrated Security=True;Encrypt=False";

    protected void SignInButton_Click(object sender, EventArgs e)
    {
        string email = EmailTextBox.Text;
        string password = PasswordTextBox.Text;

        if (ValidateUser(email, password))
        {
            // Kullanıcı doğrulama başarılı, istediğiniz işlemleri gerçekleştirin (örneğin, ana sayfaya yönlendirme).
            Response.Redirect("index.aspx");
        }
        else
        {
            // Kullanıcı doğrulama başarısız, hata mesajını kullanıcıya gösterin veya istediğiniz işlemleri gerçekleştirin.
            // Örneğin: Response.Write("Kullanıcı adı veya şifre hatalı.");
        }
    }

    private bool ValidateUser(string email, string password)
    {
        string connectionString = "Data Source=LAPTOP-MGMCJM5J;Initial Catalog=DestiMate;Integrated Security=True;Encrypt=False";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Veritabanında kullanıcıyı sorgula
            string query = "SELECT * FROM ApplicationUser WHERE Email = @Email";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Email", email);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        // Kullanıcı bulundu, şifreyi kontrol et
                        reader.Read();
                        string storedPasswordHash = reader["PasswordHash"].ToString();

                        if (YourHashFunction(password) == storedPasswordHash)
                        {
                            // Şifre doğru, kullanıcı doğrulandı
                            // Kullanıcı bilgilerini Session değişkenine kaydet
                            Session["UserId"] = reader["Id"].ToString();
                            Session["UserName"] = reader["FullName"].ToString();

                            return true;
                        }
                    }
                }
            }
        }

        // Eğer buraya kadar gelindi ise, kullanıcı doğrulanmadı
        return false;
    }
    private string YourHashFunction(string input)
    {
        using (System.Security.Cryptography.SHA256 sha256 = System.Security.Cryptography.SHA256.Create())
        {
            byte[] hashedBytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(input));
            return BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
        }
    }

    private string GetUserId(string username)
    {
        string query = "SELECT Id FROM ApplicationUser WHERE UserName = @Username";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Username", username);

                connection.Open();

                object result = command.ExecuteScalar();

                connection.Close();

                return result != null ? result.ToString() : null;
            }
        }
    }

    protected void SignUpButton_Click(object sender, EventArgs e)
{
        string name = NameTextBox.Text;
        string email = EmailRegisterTextBox.Text;
        string phoneNumber = PhoneNumberTextBox.Text;
        string password = PasswordRegisterTextBox.Text;

        // Kullanıcı ekleme işlemini gerçekleştir
        if (CreateUser(name, email, phoneNumber, password))
        {
            // Kullanıcı başarıyla oluşturuldu, istediğiniz işlemleri gerçekleştirin (örneğin, ana sayfaya yönlendirme).
            
        }
        else
        {
            // Kullanıcı oluşturma başarısız, hata mesajını kullanıcıya gösterin veya istediğiniz işlemleri gerçekleştirin.
            // Örneğin: Response.Write("Kullanıcı oluşturma başarısız.");
        }
    }
    private bool CreateUser(string name, string email, string phoneNumber, string password)
    {
        // SqlConnection'ı düzenleyerek kendi veritabanı bağlantınıza uygun hale getirin.
        string connectionString = "Data Source=DCC;Initial Catalog=DestiMate1;Integrated Security=True;";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Kullanıcı eklemeyi sağlayan SQL sorgusu
            string query = "INSERT INTO ApplicationUser (Id, FullName, UserName, Email, Password, PasswordHash, PhoneNumber, EmailConfirmed, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount) " +
                           "VALUES (@Id, @FullName, @UserName, @Email, @Password, @PasswordHash, @PhoneNumber, 0, 0, 0, 0, 0)";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Parametreleri ekleyerek SQL enjeksiyonunu önle
                command.Parameters.AddWithValue("@Id", Guid.NewGuid().ToString()); // Yeni bir benzersiz kullanıcı kimliği oluşturun
                command.Parameters.AddWithValue("@FullName", name);
                command.Parameters.AddWithValue("@UserName", email); // İsteğe bağlı olarak kullanıcı adını buraya ekleyebilirsiniz.
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@PasswordHash", YourHashFunction(password)); // Şifreyi hashleme işlemini gerçekleştirin.
                command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);

                int rowsAffected = command.ExecuteNonQuery();

                // Eğer en az bir satır etkilendiyse, kullanıcı başarıyla eklenmiştir.
                return rowsAffected > 0;
            }
        }
    }



    private bool UserIdExists(SqlConnection connection, string userId)
    {
        using (SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM ApplicationUser WHERE Id = @Id", connection))
        {
            command.Parameters.AddWithValue("@Id", userId);
            return (int)command.ExecuteScalar() > 0;
        }
    }

    private string GenerateUserId()
    {
        // Replace this with your logic to generate a unique userId.
        // Here, I'm using a simple example of generating a random number.
        Random random = new Random();
        return random.Next(100000, 999999).ToString(); // You may need to adjust the range based on your requirements.
    }
}
