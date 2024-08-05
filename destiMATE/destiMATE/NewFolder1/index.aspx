<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
  <link rel="icon" type="image/png" href="img/destimate_logo.png">
  <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link rel="icon" type="image/png" href="img/destimate_logo.png">
  <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>

  <title>Destimate Website</title>
  <style>
    body {
      font-family: 'Open Sans Variable Font', sans-serif;
      background-image: url('img/arkaplan.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      opacity: 0.9;
    }

    header {
      background-color: #3498db;
    }

    .sidebar {
      position: fixed;
      height: 100%;
      width: 240px;
      background-color: #8cb3db;
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
    .form-inline {
            max-width: 100px; /* Ýstediðiniz geniþlik */
        }

    footer {
      background-color: #caebfa;
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

  <!-- Header -->
  <header style="background-color: #3498db;">  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="index.aspx">
          <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top">
          
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <form class="form-inline" >
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
          </form>
          
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="CONTACT.aspx">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="CART.aspx">Sepet</a></li>
            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign In</a></li>
            <li class="nav-item"><a class="nav-link" href="LOGIN.aspx">Sign Up</a></li>
          </ul>
        </div>

        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="profileDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="img/user_photo.png" alt="Profile Picture" width="30" height="30" class="rounded-circle">
          </button>
          <div class="dropdown-menu" aria-labelledby="profileDropdown">
            <a class="dropdown-item" href="PROFILE.aspx">Profile <i class="fa-solid fa-user"></i></a>
            <a class="dropdown-item" href="SETTINGS.aspx">Settings  <i class="fa-solid fa-gear"></i></a>
            <a class="dropdown-item" href="#" onclick="LogOut()">Log Out <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <!-- Content -->
  <div class="container mt-4">
    <div class="row">
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
                <ul>
                  <li><a href="index.aspx">Home Page</a></li>
                  <li><a href="#">Manage Account</a></li>
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

      <main class="col-md-9">
      <h2>Welcome, <asp:Literal runat="server" ID="UserNameLiteral"></asp:Literal></h2>

        <div class="form-group">
          <label for="country">Choose Country:</label>
          <select class="form-control" id="country">
            <option value="turkey">Turkey</option>
            <option value="usa">USA</option>
            <option value="germany">Germany</option>
            <option value="usa">Italy</option>
            <option value="germany">France</option>
          </select>
        </div>

        <div class="form-group">
          <label for="budget">Choose Budget:</label>
          <select class="form-control" id="budget">
            <option value="low">Low</option>
            <option value="medium">Medium</option>
            <option value="high">High</option>
          </select>
        </div>

        <button type="button" class="btn btn-primary">List</button>
      </main>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    &copy; 2024 Destimate. All rights are reserved.
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script>
    
    function LogOut() {
    // Sayfa yeniden yüklendiðinde sunucu tarafýnda Logout iþlemi gerçekleþecek
    location.reload();
}
</script>
</body>
</html>
