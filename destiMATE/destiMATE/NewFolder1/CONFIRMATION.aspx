<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CONFIRMATION.aspx.cs" Inherits="NewFolder1_CONFIRMATION" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles.css" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />
    <title>Destimate Website</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            height: 100vh;
            background-color: #ffffff;
        }

        h2 {
            color: #4caf50;
        }

        p {
            margin-top: 20px;
        }

        footer {
            background-color: #f0f0f0;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .airplaneAnimation {
            position: relative;
            width: 400px;
            height: 400px;
            border-radius: 50%;
            background-color: #caf0f8;
            overflow: hidden;
        }

        .plane {
            position: relative;
            left: 0;
            top: 75px;
            animation: fly 2s linear infinite;
        }

        /* Rest of the styles... */

        .dropdown {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <!-- Site Logo -->
                    <a class="navbar-brand" href="index.aspx">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        Thank you!!
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
                            <li class="nav-item"><a class="nav-link" href="CONTACT.aspx">Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="CART.aspx">Basket</a></li>
                            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign In</a></li>
                            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign Up</a></li>
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

        <h2>Payment Completed Successfully!</h2>

        <p>Your payment has been received. We hope you enjoy your holiday!</p>

        <!-- Airplane Animation -->
        <div class="airplaneAnimation">
            <div class="plane">
                <div class="main"></div>
                <div class="wingOne"></div>
                <div class="wingTwo"></div>
                <div class="pollution"></div>
            </div>
            <div class="clouds">
                <div class="cloudOne"></div>
                <div class="cloudTwo"></div>
                <div class="cloudThree"></div>
            </div>
        </div>

        <footer>
            &copy; 2024 DESTIMATE. All rights reserved.
        </footer>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
