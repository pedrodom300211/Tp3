<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 1</title>
    <style type="text/css">
        .auto-style2 {
            width: 847px;
            margin-left: 0px;
            height: 477px;
            margin-right: 1px;
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
        .auto-style8 {
            height: 23px;
            width: 270px;
        }
        .auto-style9 {
            width: 270px;
        }
        .auto-style10 {
            height: 26px;
            width: 270px;
        }
        .auto-style11 {
            width: 250px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
            width: 270px;
        }
        .auto-style13 {
            height: 42px;
        }
        .auto-style14 {
            width: 250px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
            width: 270px;
        }
        .auto-style16 {
            height: 40px;
        }
        .auto-style17 {
            width: 250px;
            height: 33px;
        }
        .auto-style18 {
            height: 33px;
            width: 270px;
        }
        .auto-style19 {
            height: 33px;
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
                    <td class="auto-style8">Localidades</td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre de la localidad:</td>
                    <td class="auto-style9">
            <asp:TextBox ID="txtLocalidades0" runat="server" Width="174px" ValidationGroup="GrupoLocalidades"></asp:TextBox>
                    &nbsp;
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="txtLocalidades0" ValidationGroup="GrupoLocalidades">Ingrese localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
            <asp:Button ID="btnGuardarLocalidad" runat="server" style="font-size: small" Text="Guardar  Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="GrupoLocalidades" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">Usuarios</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Nombre usuario:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Ingrese un nombre de usuario" ValidationGroup="GrupoUsuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Contraseña:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtContrasenia" runat="server" OnTextChanged="txtContrasenia_TextChanged" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Ingrese una contraseña" ValidationGroup="GrupoUsuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Repetir Contraseña:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtRepetirContrasenia" runat="server" TextMode="Password" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvRepetirContrasenia" runat="server" ControlToValidate="txtRepetirContrasenia" ValidationGroup="GrupoUsuario">Ingrese nuevamente su contraseña</asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cmprvRepetirContrasenia" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtRepetirContrasenia" ValidationGroup="GrupoUsuario">Repitio mal su contraseña</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Correo electronico:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtMail" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtMail" ValidationGroup="GrupoUsuario">Ingrese un correo electronico</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GrupoUsuario">Ingrese un correo electronico valido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">CP:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtCp" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style13" id="rgvCodigoPostal">
                        <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ControlToValidate="txtCp" ValidationGroup="GrupoUsuario">Ingrese un Codigo Postal</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ValidationExpression="[0-9]{4}" ValidationGroup="GrupoUsuario">Ingrese un Codigo Postal valido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Localidades:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="16px" Width="124px" ValidationGroup="GrupoUsuario">
                            <asp:ListItem>- Elija Localidad -</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvLocalidadess" runat="server" ControlToValidate="ddlLocalidades" ValidationGroup="GrupoUsuario" InitialValue="- Elija Localidad -">Ingrese una localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnGUsuario" runat="server" Height="24px" Text="Guardar Usuario" Width="123px" ValidationGroup="GrupoUsuario" OnClick="btnGUsuario_Click"/>
                    </td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" ValidationGroup="GrupoInicio" />
            <br />
        </div>
    </form>
</body>
</html>
