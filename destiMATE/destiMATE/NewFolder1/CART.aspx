<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CART.aspx.cs" Inherits="CART" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<script type="text/javascript">
        // Function to display the added trips in the cart
        function displayCart() {
            var cartContent = document.getElementById('<%= cartContent.ClientID %>');
            cartContent.innerHTML = '';
    
            // ... diğer kodlar ...
        }

        // Diğer JavaScript fonksiyonları
    </script>--%>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css" />
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />

    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

        .main-content {
            overflow-y: auto;
            max-height: calc(100vh - 120px);
        }

        .cart-item {
            border: 1px solid #ddd;
            margin-bottom: 10px;
            padding: 10px;
        }

        .sidebar {
            position: fixed;
            height: 100%;
            width: 240px;
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        .main-content {
            margin-left: 240px;
            padding: 20px;
        }

        .card-img-top {
            object-fit: cover;
            height: 300px;
        }

        footer {
            background-color: #f0f0f0;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .dropdown {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        Check-out
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="form-inline">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control mr-sm-2" Placeholder="Search" />
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-light my-2 my-sm-0" Text="Search" />
                        </div>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item"><a class="nav-link" href="CONTACT.aspx">Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="CART.aspx">Basket</a></li>
                            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign In</a></li>
                            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign Up</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <asp:Button ID="btnProfile" runat="server" CssClass="btn btn-secondary dropdown-toggle" Text="Profile" />
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="PROFILE.aspx">Profile <i class="fa-solid fa-user"></i></a>
                            <a class="dropdown-item" href="SETTINGS.aspx">Settings <i class="fa-solid fa-gear"></i></a>
                            <a class="dropdown-item" href="#">Log Out <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container-fluid">
            <div class="row">
        
                <!-- Kenar Çubuğu -->
                <nav class="col-md-3 d-none d-md-block sidebar">
                    <div class="accordion" id="sidebar">
                        <div class="card">
                            <div class="card-header" id="sidebarHeading">
                                <h2 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#sidebarContent" aria-expanded="true" aria-controls="sidebarContent">
                                        Menu
                                    </button>
                                </h2>
                            </div>
                            <div id="sidebarContent" class="collapse show" aria-labelledby="sidebarHeading" data-parent="#sidebar">
                                <div class="card-body">
                                    <!-- Kenar Çubuğu İçeriği -->
                                    <ul class="nav flex-column">
                                        <li class="nav-item"><a class="nav-link active" href="index.aspx">Home Page</a></li>
                                        <li class="nav-item"><a class="nav-link" href="PROFILE.aspx">Manage Account</a></li>
                                        <li class="nav-item"><a class="nav-link" href="TRIPS.aspx">Trips</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Saved</a></li>
                                        <li class="nav-item"><a class="nav-link" href="CONTACT.aspx">Contact us</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#">Frequently Asked</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
        

                <main class="col-md-9 main-content">
                    <h2>Cart </h2>
                    <div id="cart_content" runat="server"></div>
                    
                </main>
            </div>
        </div>

        <footer>
            &copy; 2024 Destimate. All rights reserved.
        </footer>


       <%-- <script>
            // Function to display the added trips in the cart
            function displayCart() {
                const cartContent = document.getElementById('<%= cartContent.ClientID %>');
                cartContent.innerHTML = '';
        
                // Retrieve the cart from localStorage
                const cart = JSON.parse(localStorage.getItem('cart')) || [];
        
                // Loop through the cart and add each trip to the cart content
                cart.forEach((trip, index) => {
                    const tripInfo = `
                        <div class="cart-item">
                            <p><strong>Country:</strong> ${trip.name}</p>
                            <p><strong>Price:</strong> $${trip.price.toFixed(2)}</p>
                            <p><strong>Nights:</strong> ${trip.nights}</p>
                            <p><strong>Days:</strong> ${trip.days}</p>
                            <button type="button" onclick="removeFromCart(${index})">Remove from Cart</button>
                            <button type="button" onclick="buy()">Buy</button>
                        </div>
                    `;
                    cartContent.innerHTML += tripInfo;
                });
            }

            // Simulate a payment process
            function buy() {
                // Assume the payment is successful
                var paymentSuccessful = true;
    
                // You can replace the following logic with your actual payment processing code
                // For example, you might use a payment gateway API to handle transactions
    
                if (paymentSuccessful) {
                    // If the payment is successful, redirect to the credit.html page
                    window.location.href = 'credit.html';
                } else {
                    // If the payment fails, you can handle it accordingly (e.g., show an error message)
                    alert('Payment failed. Please try again.');
                }
            }

            // Function to remove a trip from the cart
            function removeFromCart(index) {
                // Retrieve the cart from localStorage
                const cart = JSON.parse(localStorage.getItem('cart')) || [];
        
                // Remove the trip at the specified index from the cart
                cart.splice(index, 1);
        
                // Store the updated cart in localStorage
                localStorage.setItem('cart', JSON.stringify(cart));
        
                // Update the cart content
                displayCart();
            }

            // Call the displayCart function when the page loads
            window.onload = displayCart;
        </script>--%>
    </form>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
