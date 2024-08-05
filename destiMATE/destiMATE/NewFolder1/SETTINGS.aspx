<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SETTINGS.aspx.cs" Inherits="NewFolder1_SETTINGS" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <style>
        .dropdown {
            margin-left: 10px;
        }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
   <link rel="stylesheet" href="wishlist.css" />

<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css' />
<script src="https://kit.fontawesome.com/ae7ab48eb0.js" crossorigin="anonymous"></script>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js'></script>
    
</head>
<body>
    <form id="form1" runat="server">
          <header>
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
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class="container mb-4">
            <div class="row">
                <div class="col-lg-4 pb-5">
                    <!-- Account Sidebar-->
                    <div class="author-card pb-3">
                        <div class="author-card-cover" style="background-image: url(https://bootdey.com/img/Content/flores-amarillas-wallpaper.jpeg);">
                            <a class="btn btn-style-1 btn-white btn-sm" href="#" data-toggle="tooltip" title="" data-original-title="You currently have 290 Reward points to spend">
                                <i class="fa fa-award text-md"></i>&nbsp;290 points
                            </a>
                        </div>
                        <div class="author-card-profile">
                            <div class="author-card-avatar"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Daniel Adams" /></div>
                            <div class="author-card-details">
                                <h5 class="author-card-name text-lg">Daniel Adams</h5><span class="author-card-position">Joined February 06, 2017</span>
                            </div>
                        </div>
                    </div>
                    <div class="wizard">
                        <nav class="list-group list-group-flush">
                            <a class="list-group-item active" href="#"><i class="fe-icon-user text-muted"></i>Profile Settings</a>
                            <a class="list-group-item" href="#"><i class="fe-icon-map-pin text-muted"></i>Addresses</a>
                            <a class="list-group-item" href="WISHLIST.aspx" target="__blank">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div><i class="fe-icon-heart mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                                    </div><span class="badge badge-secondary">3</span>
                                </div>
                            </a>
                            <a class="list-group-item" href="ACCOUNT-TICKETS.aspx" target="__blank">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div><i class="fe-icon-tag mr-1 text-muted"></i>
                                        <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                                    </div><span class="badge badge-secondary">4</span>
                                </div>
                            </a>
                        </nav>
                    </div>
                </div>
                <!-- Profile Settings-->
                <div class="col-lg-8 pb-5">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
    <label for="account_fn">First Name</label>
    <asp:TextBox ID="account_fn" CssClass="form-control" runat="server" Text="Daniel" Required="true"></asp:TextBox>
</div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account_ln">Last Name</label>
                                <asp:TextBox ID="account_ln" CssClass="form-control" runat="server" Text="Adams" Required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account_email">E-mail Address</label>
                                <asp:TextBox ID="account_email" CssClass="form-control" runat="server" Text="daniel.adams@example.com" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-phone">Phone Number</label>
                                <asp:TextBox ID="account_phone" CssClass="form-control" runat="server" Text="+7 (805) 348 95 72" Required="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-pass">New Password</label>
                                <asp:TextBox ID="account_pass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="account-confirm-pass">Confirm Password</label>
                                <asp:TextBox ID="account_confirm_pass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12">
                            <hr class="mt-2 mb-3">
                            <div class="d-flex flex-wrap justify-content-between align-items-center">
                                <div class="custom-control custom-checkbox d-block">
                                    <asp:CheckBox ID="subscribe_me" runat="server" Checked="true" CssClass="custom-control-input" />
                                    <label class="custom-control-label" for="subscribe_me">Subscribe me to Newsletter</label>
                                </div>
                                <asp:Button ID="updateProfileBtn" runat="server" CssClass="btn btn-style-1 btn-primary" Text="Update Profile" OnClick="UpdateProfileBtn_Click" />
                            </div>
                        </div>
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
