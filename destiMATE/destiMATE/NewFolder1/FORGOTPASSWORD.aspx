<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FORGOTPASSWORD.aspx.cs" Inherits="NewFolder1_FORGOTPASSWORD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="forgotpasssword.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="img/destimate_logo.png" type="image/png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">Forgot Password?</h2>
                                <p>You can reset your password here.</p>
                                <div class="panel-body">
                                    <div id="register_form" runat="server" role="form" autocomplete="off" class="form" method="post">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                <asp:TextBox ID="email" runat="server" placeholder="email address" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="btnResetPassword" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Reset Password" OnClick="btnResetPassword_Click" />
                                        </div>
                                        <input type="hidden" class="hide" name="token" id="token" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
