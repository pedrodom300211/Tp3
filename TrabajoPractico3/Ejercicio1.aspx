<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 847px;
            margin-left: 0px;
            height: 477px;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style4 {
            width: 250px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 250px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">Localidades</td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre de la localidad:</td>
                    <td>
            <asp:TextBox ID="txtLocalidades0" runat="server" Width="174px" ValidationGroup="GrupoLocalidades"></asp:TextBox>
                    &nbsp;
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="txtLocalidades0" ValidationGroup="GrupoLocalidades">Ingrese localidad</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
            <asp:Button ID="btnGuardarLocalidad" runat="server" style="font-size: small" Text="Guardar  Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="GrupoLocalidades" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>Usuarios</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre usuario:</td>
                    <td>
                        <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Ingre un nombre de usuario" ValidationGroup="GrupoUsuario"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Contraseña:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtContrasenia" runat="server" OnTextChanged="txtContrasenia_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Ingrese una contraseña" ValidationGroup="GrupoUsuario"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Repetir Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtRepContraseña" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Correo electronico:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6">CP</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCp" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Localidades:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="16px" Width="124px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGUsuario" runat="server" Height="24px" Text="Guardar Usuario" Width="123px" ValidationGroup="GrupoUsuario"/>
                        <asp:Label ID="lblBienvenida" runat="server" Text="Bienvenido ..." style="margin-left: 80px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Ir a inicio.aspx" />
            <br />
        </div>
    </form>
</body>
</html>
