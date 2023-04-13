using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtContrasenia.TextMode = TextBoxMode.Password; ///Para que tenga formato contraseña
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            Boolean localidadRepetida = true;
            for (int i = 0; i < ddlLocalidades.Items.Count; i++) {
                if (txtLocalidades0.Text.Trim().ToUpper() == ddlLocalidades.Items[i].Text.Trim().ToUpper())
                {
                    localidadRepetida = false;
                    string script = "alert('Localidad repetida');"; //Se guarda un script utilizando una funcion llamada "alert" pero del lenguaje de JavaScript
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                    // Aca se esta registrando un script en el lado del servidor utilizando el objeto ScriptManager de ASP.NET, que muestra una ventana emergente con el mensaje
                    //Al agregar el segundo parámetro "this.GetType()" a la función RegisterStartupScript,
                    //nos aseguramos de que el script solo se registre una vez por página 
                }
            }
            if (localidadRepetida == true) {
                ddlLocalidades.Items.Add(txtLocalidades0.Text);
                txtLocalidades0.Text = ""; 
            }
        }

        protected void txtContrasenia_TextChanged(object sender, EventArgs e)
        {

        }
    }
}