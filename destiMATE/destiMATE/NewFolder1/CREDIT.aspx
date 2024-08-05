<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CREDIT.aspx.cs" Inherits="NewFolder1_CREDIT" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Enter Your Card Info</title>
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

       

        /* Kenar Çubuğu Stili */
        .sidebar {
            position: fixed;
            height: 100%;
            width: 240px;
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        /* Ana İçerik Bölümü Stili */
        .main-content {
            margin-left: 240px; /* Kenar çubuğu genişliği kadar sola kaydır */
            padding: 20px;
        }
		 .card-img-top {
        object-fit: cover; /* Resmi kartın içine sığdır */
        height: 300px; /* Kartın yüksekliğini ayarla */
    }
	footer {
            background-color: #f0f0f0;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
	        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        main {
            flex: 1;
            text-align: center;
            padding: 20px;
        }

        footer {
            background-color: #f0f0f0;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }	
        .dropdown{
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <!-- Site Logo -->
                    <a class="navbar-brand" href="#">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        The Last Step
                    </a>

                    <!-- Navbar Toggler (Küçük Ekranlar İçin) -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Navbar Bağlantıları ve Arama Kutusu -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <!-- Arama Kutusu -->
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                        </form>

                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item"><a class="nav-link active" href="index.aspx">Home Page</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Manage Account</a></li>
                            <li class="nav-item"><a class="nav-link" href="TRIPS.aspx">Trips</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Saved</a></li>
                            <li class="nav-item"><a class="nav-link" href="CONTACT.aspx">Contact us</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Frequently Asked</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="profileDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="img/user_photo.png" alt="Profile Picture" width="30" height="30" class="rounded-circle" />
                        </button>
                        <div class="dropdown-menu" aria-labelledby="profileDropdown">
                            <a class="dropdown-item" href="PROFILE.aspx">Profile <i class="fa-solid fa-user"></i></a>
                            <a class="dropdown-item" href="SETTINGS.aspx">Settings  <i class="fa-solid fa-gear"></i></a>
                            <a class="dropdown-item" href="#">Log Out <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <!-- Ana İçerik Bölümü -->
        <main>
            <h2>Credit Card Info</h2>
            <form runat="server">
                <label for="cardNumber">Card Number:</label>
                <asp:TextBox ID="cardNumber" runat="server" CssClass="form-control" placeholder="1234 5678 9012 3456" required></asp:TextBox>

                <label for="expirationDate">Expiration Date:</label>
                <asp:TextBox ID="expirationDate" runat="server" CssClass="form-control" placeholder="MM/YY" required></asp:TextBox>

                <label for="cvv">CVV:</label>
                <asp:TextBox ID="cvv" runat="server" CssClass="form-control" placeholder="123" required></asp:TextBox>

                <asp:Button ID="btnSubmit" runat="server" Text="Complete Payment" CssClass="btn btn-primary" OnClientClick="return submitPayment();" />
            </form>
        </main>

        <script>
            // Simulate a payment process
            function submitPayment() {
                // Assume the payment is successful
                var paymentSuccessful = true;

                // You can replace the following logic with your actual payment processing code
                // For example, you might use a payment gateway API to handle transactions

                if (paymentSuccessful) {
                    // If the payment is successful, redirect to the confirmation page
                    window.location.href = 'confirmation.aspx';
                    return true; // Allow form submission
                } else {
                    // If the payment fails, you can handle it accordingly (e.g., show an error message)
                    alert('Payment failed. Please try again.');
                    return false; // Prevent form submission
                }
            }
        </script>

        <!-- Footer -->
        <footer>
            &copy; 2024 Destimate. All rights reserved.
        </footer>
    </form>

    <!-- Bootstrap JS ve Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
