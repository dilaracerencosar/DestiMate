<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WISHLIST.aspx.cs" Inherits="NewFolder1_WISHLIST" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wishlist</title>
    <link rel="stylesheet" href="wishlist.css" />
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css' />
    <script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js'></script>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="index.aspx">
                        <img src="img/destimate_logo.png" alt="Site Logo" width="70" height="70" class="d-inline-block align-top" />
                       
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
                </div>
            </nav>
        </header>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class="container mb-4">
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
                            <a class="list-group-item" href="SETTINGS.aspx" target="__blank">
                                <i class="fa fa-user text-muted"></i>Profile Settings
                            </a>
                            <a class="list-group-item" href="#">
                                <i class="fa fa-map-marker text-muted"></i>Addresses
                            </a>
                            <a class="list-group-item active" href="#">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fa fa-heart mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                                    </div>
                                    <span class="badge badge-secondary">3</span>
                                </div>
                            </a>
                            <a class="list-group-item" href="ACCOUNT-TICKETS.aspx" target="__blank">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fa fa-tag mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                                    </div>
                                    <span class="badge badge-secondary">4</span>
                                </div>
                            </a>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-8 pb-5">
                    <!-- Item1 -->
                    <div class="cart-item d-md-flex justify-content-between">
                        <span class="remove-item">
                            <i class="fa fa-times"></i>
                        </span>
                        <div class="px-3 my-3">
                            <a class="cart-item-product" href="#">
                                <div class="cart-item-product-thumb">
                                    <asp:Image ID="imgProduct1" runat="server" ImageUrl="https://italyadaegitim.com/wp-content/uploads/2020/11/kolezyum-roma-1-1-780x470.jpg" AlternateText="Product1" />
                                </div>
                                <div class="cart-item-product-info">
                                    <h4 class="cart-item-product-title">Rome, Italy</h4>
                                    <div class="text-lg text-body font-weight-medium pb-1">$1910.00</div>
                                    <span>Availability: <span class="text-success font-weight-medium">In Stock</span></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!-- Item2 -->
                    <div class="cart-item d-md-flex justify-content-between">
                        <span class="remove-item">
                            <i class="fa fa-times"></i>
                        </span>
                        <div class="px-3 my-3">
                            <a class="cart-item-product" href="#">
                                <div class="cart-item-product-thumb">
                                    <asp:Image ID="imgProduct2" runat="server" ImageUrl="https://media.istockphoto.com/id/1347665170/tr/foto%C4%9Fraf/london-at-sunset.jpg?s=2048x2048&w=is&k=20&c=vRHoj_kQqzL9wfVBXeKEheADMI0cTA0mVqltYA419Zk=" AlternateText="Product2" />
                                </div>
                                <div class="cart-item-product-info">
                                    <h4 class="cart-item-product-title">London, England</h4>
                                    <div class="text-lg text-body font-weight-medium pb-1">$1,450.00</div>
                                    <span>Availability: <span class="text-warning font-weight-medium">2 - 3 Weeks</span></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!-- Item3 -->
                    <div class="cart-item d-md-flex justify-content-between">
                        <span class="remove-item">
                            <i class="fa fa-times"></i>
                        </span>
                        <div class="px-3 my-3">
                            <a class="cart-item-product" href="#">
                                <div class="cart-item-product-thumb">
                                    <asp:Image ID="imgProduct3" runat="server" ImageUrl="https://media.istockphoto.com/id/1283504873/tr/foto%C4%9Fraf/cami-ve-bo%C4%9Faz-k%C3%B6pr%C3%BCs%C3%BC.jpg?s=2048x2048&w=is&k=20&c=mxrrt8AraR4iaU7AY41xYe4MKIVw_cI4VHSZhy5x4Eg=" AlternateText="Product3" />
                                </div>
                                <div class="cart-item-product-info">
                                    <h4 class="cart-item-product-title">Istanbul, Turkiye</h4>
                                    <div class="text-lg text-body font-weight-medium pb-1">$1888.50</div>
                                    <span>Availability: <span class="text-success font-weight-medium">In Stock</span></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <asp:CheckBox ID="chkInformMe" runat="server" Checked="true" CssClass="custom-control-input" />
                        <label class="custom-control-label" for="inform-me">Inform me when item from my wishlist is available</label>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

