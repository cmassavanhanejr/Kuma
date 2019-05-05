<%@ Page Title="Log in" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEB.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>K|UMA</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">

        <div class="login-box">
                <form runat="server">

            <div class="login-logo">
                <a href="../../index2.html"><b>K</b>UMA</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Entre para iniciar sua sessão</p>
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </asp:PlaceHolder>
                <div class="form-group has-feedback">
                    <asp:TextBox runat="server" ID="Email" class="form-control" name="username" placeholder="Email" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control password" name="password" placeholder="Senha" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    <a class="forgot" href="#"></a>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <div class="checkbox clip-check check-primary">
                                <asp:CheckBox runat="server" ID="RememberMe" />

                                <label for="RememberMe">
                                    Mantenha-me conectado
                                </label>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <asp:LinkButton runat="server" OnClick="LogIn" Text="" class="btn btn-primary pull-right">Login <i class="fa fa-arrow-circle-right"></i>
                        </asp:LinkButton>
                    </div>
                    <!-- /.col -->
                </div>

              <!--  <div class="social-auth-links text-center">
                    <p>- OR -</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i>Sign in using
        Facebook</a>
                    <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i>Sign in using
        Google+</a>
                </div>-->
                <!-- /.social-auth-links -->

              <!--  <a href="#">I forgot my password</a><br>
                <a href="register.html" class="text-center">Register a new membership</a>
                -->
            </div>
            <!-- /.login-box-body -->
    </form>

    </div>
    <!-- /.login-box -->

    <!-- jQuery 2.2.0 -->
    <script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
</script>
</body>
</html>
