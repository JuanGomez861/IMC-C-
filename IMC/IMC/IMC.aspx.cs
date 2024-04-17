using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMC
{
    public partial class IMC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculate(object sender, EventArgs e)
        {
            

            IMCCalculator.Visible = false;
            imcResultado.Visible = true;
            string alturaStr = txtAltura.Text;
            string pesoStr = txtPeso.Text;

            // Reemplazar la coma por punto en caso de que sea necesario


            // Convertir la altura y el peso a números decimales
            alturaStr = alturaStr.Replace('.', ',');

            double altura = double.Parse(alturaStr);
            double peso = double.Parse(pesoStr);
            

            // Calcular el IMC
            double imc = peso / (altura * altura);

            

            txtIMC.InnerText = imc.ToString("N2");
            //txtIMC.InnerText = alturaStr;


        }

        protected void returnCalculate(object sender, EventArgs e)
        {
            IMCCalculator.Visible = true;
            imcResultado.Visible = false;
            txtIMC.InnerText ="";
            txtAltura.Text ="";
            txtPeso.Text = "";
        }

    }
}