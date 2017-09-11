<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="FormulariosWeb.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Usuarios Planillas</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Usuarios Sistema Planilla</h2>
        <div class="row">
            <div class="col-sm-2">
                <div class="input-group">
                    <asp:Button class="form-control" ID="btnCrearUsuario" runat="server" Text="Crear Usuario" data-toggle="modal" data-target="#CrearUsuariosModal"/>
                </div>
            </div>
        </div>
        <div id="CrearUsuariosModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Crear Nuevo Usuario</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <asp:Label ID="nombre" runat="server" Text="Nombre Completo"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtNombre" runat="server" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="usuario" runat="server" Text="Usuario"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtUsuario" runat="server" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="clave" runat="server" Text="Clave"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtClave" runat="server" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="confirmar" runat="server" Text="Confirmar"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtConfirmar" runat="server" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="codEmpleado" runat="server" Text="Cod. Empleado"></asp:Label>
                            <asp:TextBox class="form-control" ID="txtCodEmpleado" runat="server" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-default">Limpiar</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <asp:Button class="btn btn-default" ID="btnGuardarDatos" runat="server" Text="Guardar" OnClick="btnGuardarDatos_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
