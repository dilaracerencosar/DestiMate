<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PROFILE.aspx.cs" Inherits="NewFolder1_PROFILE" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .dropdown {
            margin-left: 10px;
        }
    </style>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Settings</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js'></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="settings.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="index.aspx">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                        Thank you!!
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
                        <div class="dropdown">
                            <asp:Button ID="btnProfile" runat="server" CssClass="btn btn-secondary dropdown-toggle" Text="Profile" />
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="PROFILE.aspx">Profile <i class="fa-solid fa-user"></i></a>
                                <a class="dropdown-item" href="SETTINGS.aspx">Settings <i class="fa-solid fa-gear"></i></a>
                                <a class="dropdown-item" href="#">Log Out <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-4 pb-5">
                    <div class="author-card pb-3">
                        <div class="author-card-cover" style="background-image: url(https://bootdey.com/img/Content/flores-amarillas-wallpaper.jpeg);">
                            <asp:LinkButton ID="btnRewardPoints" runat="server" CssClass="btn btn-style-1 btn-white btn-sm" ToolTip="You currently have 290 Reward points to spend">
                                <i class="fa fa-award text-md"></i>&nbsp;290 points
                            </asp:LinkButton>
                        </div>
                        <div class="author-card-profile">
                            <div class="author-card-avatar">
                                <asp:Image ID="imgProfile" runat="server" ImageUrl="https://bootdey.com/img/Content/avatar/avatar1.png" AlternateText="Daniel Adams" />
                            </div>
                            <div class="author-card-details">
                                <h5 class="author-card-name text-lg">Daniel Adams</h5>
                                <span class="author-card-position">Joined February 06, 2017</span>
                            </div>
                        </div>
                    </div>
                    <div class="wizard">
                        <nav class="list-group list-group-flush">
                            <a class="list-group-item" href="#">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fe-icon-shopping-bag mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">Orders List</div>
                                    </div>
                                    <span class="badge badge-secondary">6</span>
                                </div>
                            </a>
                            <a class="list-group-item" href="#">
                                <i class="fe-icon-user text-muted"></i>Profile Settings
                            </a>
                            <a class="list-group-item" href="#">
                                <i class="fe-icon-map-pin text-muted"></i>Addresses
                            </a>
                            <a class="list-group-item" href="WISHLIST.aspx" target="__blank">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fe-icon-heart mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                                    </div>
                                    <span class="badge badge-secondary">3</span>
                                </div>
                            </a>
                            <a class="list-group-item" href="ACCOUNT-TICKETS.aspx" target="__blank">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fe-icon-tag mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                                    </div>
                                    <span class="badge badge-secondary">4</span>
                                </div>
                            </a>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-8 pb-5">
                    <form class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-fn">First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text="Daniel" required=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-ln">Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text="Adams" required=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-email">E-mail Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="daniel.adams@example.com" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-phone">Phone Number</label>
                                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" Text="+7 (805) 348 95 72" required=""></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>