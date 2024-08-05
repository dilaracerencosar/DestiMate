<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="NewFolder1_LOGIN" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Destimate</title>
    <link rel="stylesheet" href="login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <link rel="icon" href="img/destimate_logo.png" type="image/png" />
        
        <div id="container">
            <!-- Cover Box -->
            <div id="cover">
                <!-- Sign Up Section -->
                <h1 class="sign-up">Hello, Friend!</h1>
                <p class="sign-up">Enter your personal details<br /> and start a journey with us</p>
                <a class="button sign-up" href="#cover">Sign Up</a>
                <!-- Sign In Section -->
                <h1 class="sign-in">Welcome Back!</h1>
                <p class="sign-in">To keep connected with us please<br /> login with your personal info</p>
                <br />
                <asp:Button ID="SignInButton" runat="server" Text="Sign In" CssClass="button sub sign-in" OnClick="SignInButton_Click" />
            </div>
            <!-- Login Box -->
            <div id="login">
                <h1>Sign In</h1>
                <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Email" autocomplete="off"></asp:TextBox><br />
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="Password" autocomplete="off"></asp:TextBox><br />
                <a id="forgot-pass" href="FORGOTPASSWORD.aspx">Forgot your password? </a><br />
                <!-- asp:Button kontrolü kullanarak server taraflı bir tıklama olayını yönetiyoruz -->
                <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="submit-btn" OnClick="SignInButton_Click" />
            </div>
            <!-- Register Box -->
            <div id="register">
                <h1>Create Account</h1>
                <div runat="server">
                    <asp:TextBox ID="NameTextBox" runat="server" placeholder="Name" autocomplete="off"></asp:TextBox><br />
                    <asp:TextBox ID="EmailRegisterTextBox" runat="server" placeholder="Email" autocomplete="off"></asp:TextBox><br />
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" placeholder="Phone Number" autocomplete="off"></asp:TextBox><br />
                    <asp:TextBox ID="PasswordRegisterTextBox" runat="server" TextMode="Password" placeholder="Password" autocomplete="off"></asp:TextBox><br />
                    <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" CssClass="submit-btn" OnClick="SignUpButton_Click" />
                </div>
            </div>
        </div> <!-- END Container -->
    </form>
</body>
</html>
