<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CONTACT.aspx.cs" Inherits="NewFolder1_CONTACT" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Destimate Website</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />
    <style>
        body {
            font-family: 'Arial', sans-serif;
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
        <!-- Header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <!-- Site Logo -->
                    <a class="navbar-brand" href="#">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        Welcome to Destimate
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

        <!-- Content -->
        <div class="container mt-4">
            <div class="row">
                <!-- Sidebar -->
                <nav class="col-md-3 d-none d-md-block">
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
                                    <!-- Sidebar content goes here -->
                                    <ul>
                                        <li><a href="index.aspx">Home Page</a></li>
                                        <li><a href="PROFILE.aspx">Manage Account</a></li>
                                        <li><a href="TRIPS.aspx">Trips</a></li>
                                        <li><a href="#">Saved</a></li>
                                        <li><a href="CONTACT.aspx">Contact us</a></li>
                                        <li><a href="#">Frequently Asked</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>

                <!-- Main Content -->
                <main class="col-md-9">
                    <div class="container mt-5">
                        <h2 class="mb-4">İletişim Formu</h2>
                        <form>
                            <div class="mb-3">
                                <label for="message" class="form-label">Mesajınız</label>
                                <textarea class="form-control" id="message" rows="4" placeholder="Mesajınızı buraya yazın..." required></textarea>
                            </div>
                            <button type="button" class="btn btn-success" onclick="sendMessage()">Gönder</button>
                        </form>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script>
                        // Mesaj gönderme işlemi
                        function sendMessage() {
                            // Mesaj gönderme işlemleri burada gerçekleştirilebilir
                            // Kullanıcıya teşekkür mesajı gösterilebilir veya başka bir sayfaya yönlendirilebilir
                            alert('Mesajınız başarıyla gönderildi!');
                        }
                    </script>
                </main>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            &copy; 2024 Destimate. All rights reserved.
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
