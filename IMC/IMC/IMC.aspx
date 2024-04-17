<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IMC.aspx.cs" Inherits="IMC.IMC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
     <form id="form1" runat="server">
        <main class="main">
            <asp:Panel ID="IMCCalculator" runat="server" CssClass="imc_calculator" Visible="true">
                <section class="main_text">
                    <h1>Calculate your BMI</h1>
                    <p>Body mass index, or BMI, is used to determine whether you are in a healthy weight range for your height.</p>
                </section>
                <asp:Panel ID="pnlForm" runat="server" CssClass="form">
                    <div class="input_container">
                        <asp:TextBox ID="txtPeso" runat="server" placeholder="Cual es tu peso?*" CssClass="input"></asp:TextBox>
                        <div>KG</div>
                    </div>
                    <div class="input_container">
                        <asp:TextBox ID="txtAltura" runat="server" placeholder="Cual es tu altura?*" CssClass="input"></asp:TextBox>
                        <div>M</div>
                    </div>
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="cta" OnClick="calculate"/>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel ID="imcResultado" runat="server" CssClass="imc-resultado" Visible="false">
                <section class="imc-resultado_text">
                    <h1>Your BMI is</h1>
                    <p id="txtIMC" runat="server">23,25</p>
                    <asp:Button ID="btnNewCalculation" runat="server" Text="NEW CALCULATION" CssClass="imc_resultado-cta" OnClick="returnCalculate"/>
                </section>  
                <section class="list_bmi">
                    <h2>BMI Categories:</h2>
                    <p>Underweight mayor o igual 18.5</p>
                    <p>Normal weight entre 18.5 y 24.9 </p>
                    <p>Normal weight entre 18.5 y 24.9 </p>
                    <p>Overweight entre 25 y 29.9 </p>
                </section>
            </asp:Panel>
        </main>
    </form>
</body>
</html>
