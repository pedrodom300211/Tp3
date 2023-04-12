<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
        <div style="margin-left: 200px">
            Localidades<br />
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp; Nombre de la localidad: </span>
            <asp:TextBox ID="txtLocalidades" runat="server" Width="174px"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGuardarLocalidad" runat="server" style="font-size: small" Text="Guardar  Localidad" />
        </p>
    </form>
</body>
</html>
