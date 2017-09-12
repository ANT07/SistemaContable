<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FormulariosWeb.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="row">
            <div class="col-md-4 col-md-offset-4" align="center">
                <h2>Sistema Contable</h2>
            </div>

        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4" align="center">
                <asp:Label ID="usuarioErroneo" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox class="form-control" ID="txtUsuario" runat="server" required="required"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password" required="required"></asp:TextBox>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <asp:Button class="form-control" ID="btnLogin" runat="server" Text="Iniciar Sesion" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
