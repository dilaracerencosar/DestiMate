<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TRIPS.aspx.cs" Inherits="NewFolder1_TRIPS" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Available Trips</title>
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        header{
            position: sticky;
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
        .dropdown{
            margin-left: 10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <header>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        Trip Packages
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <form class="form-inline">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control mr-sm-2" Placeholder="Search" />
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-light my-2 my-sm-0" Text="Search" />
                        </form>
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

        <!-- Content and Script -->
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
                        <li class="nav-item"><a class="nav-link active" href="index.html">Home Page</a></li>
                        <li class="nav-item"><a class="nav-link" href="profile.html">Manage Account</a></li>
                        <li class="nav-item"><a class="nav-link" href="trips.html">Trips</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Saved</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact us</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Frequently Asked</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>

                <!-- Main Content -->
               <main class="col-md-9 main-content">
                <h1>Product List</h1>
               <asp:Repeater ID="rptProducts" runat="server">
    <ItemTemplate>
        <div class="col-md-6 mb-4">
            <div class="card">
                <img src='<%# Eval("ImageURL") %>' class="card-img-top" alt='<%# Eval("Name") %>'>
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("Name") %></h5>
                    <p class="card-text">Price: $<%# Eval("Price") %></p>
                    <p class="card-text"><%# Eval("Description") %></p>
                   <asp:Button ID="btnAddToCart" runat="server" CssClass="btn btn-success" Text="Add to Cart" OnClick="btnAddToCart_Click" 
    CommandArgument='<%# Eval("Id") + "|" + Eval("Name") + "|" + Eval("Price") %>' 
    PostBackUrl="~/CART.aspx" />
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
            </main>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            &copy; 2024 Destimate. All rights reserved.
        </footer>
    </form>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
