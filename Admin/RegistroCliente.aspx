﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="RegistroCliente.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Registro trabajadores</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="../css/styles.css">
  <link rel="stylesheet" type="text/css" media="all" href="../css/switchery.min.css">
  <script type="text/javascript" src="../js/switchery.min.js"></script>
   
   <script type="text/javascript">
       function ValidNum(e) {
           var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
           return ((tecla > 47 && tecla < 58) || tecla == 08);
       }
       </script>

    <script type="text/javascript">
        function validarLetras(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) return true; // backspace
            if (tecla == 32) return true; // espacio
            if (e.ctrlKey && tecla == 86) { return true; } //Ctrl v
            if (e.ctrlKey && tecla == 67) { return true; } //Ctrl c
            if (e.ctrlKey && tecla == 88) { return true; } //Ctrl x

            patron = /[a-zA-Z]/; //patron

            te = String.fromCharCode(tecla);
            return patron.test(te); // prueba de patron
        }
       </script>
    <style type="text/css">
       #wrapper p.button input{
	width: 30%;
	cursor: pointer;	
	background: rgb(61, 157, 179);
	padding: 8px 5px;
	font-family: 'BebasNeueRegular','Arial Narrow',Arial,sans-serif;
	color: #fff;
	font-size: 24px;	
	border: 1px solid rgb(28, 108, 122);	
	margin-bottom: 10px;	
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);
	-webkit-border-radius: 3px;
	   -moz-border-radius: 3px;
	        border-radius: 3px;	
	-webkit-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,
	        0px 0px 0px 3px rgb(254, 254, 254),
	        0px 5px 3px 3px rgb(210, 210, 210);
	   -moz-box-shadow:0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,
	        0px 0px 0px 3px rgb(254, 254, 254),
	        0px 5px 3px 3px rgb(210, 210, 210);
	        box-shadow:0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,
	        0px 0px 0px 3px rgb(254, 254, 254),
	        0px 5px 3px 3px rgb(210, 210, 210);
	-webkit-transition: all 0.2s linear;
	   -moz-transition: all 0.2s linear;
	     -o-transition: all 0.2s linear;
	        transition: all 0.2s linear;
}
#wrapper p.button input:hover{
	background: rgb(74, 179, 198);
}
#wrapper p.button input:active,
#wrapper p.button input:focus{
	background: rgb(40, 137, 154);
	position: relative;
	top: 1px;
	border: 1px solid rgb(12, 76, 87);	
	-webkit-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.2) inset;
	   -moz-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.2) inset;
	        box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.2) inset;
}
p.login.button,
p.signin.button{
	text-align: center;
	margin: 5px 0;
}
        }
    </style>
</head>

<body>
  <div id="wrapper">
  <br /><br />
  <h1>Registro Clientes</h1>
  
  <form  runat="server">
  <div class="col-2">
    <label>
      Rut
        <asp:TextBox ID="rut" runat="server" placeholder="111111111-1" tabindex="1" required="" MaxLength="11" AutoComplete="off"></asp:TextBox>
      
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-2">
    <label>
      Nombre
        <asp:TextBox ID="nombre" placeholder="Nombre de la empresa" runat="server" TabIndex="2" required="" MaxLength="50" AutoComplete="off"></asp:TextBox>
       </label>
  &nbsp;&nbsp;&nbsp;</div>
  
  <div class="col-3">
    <label>
      Telefono
        <asp:TextBox ID="telefono" runat="server" placeholder="12345678" tabindex="3" required="" MaxLength="8" AutoComplete="off"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="telefono" ErrorMessage="Ingrese minimo 6 digitos" ValidationExpression="^[_0-9-]{6,10}$" ForeColor="Red"></asp:RegularExpressionValidator>
          </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Email
       <asp:TextBox ID="correo" runat="server" placeholder="aaaaa@aaa.com" TabIndex="4" MaxLength="80" AutoComplete="off" ></asp:TextBox>
      </label>
  &nbsp;&nbsp;&nbsp;</div>
  
  
  <div class="col-3">
    <label>
      Direccion
        <asp:TextBox ID="direccion" runat="server" placeholder="La direccion de la empresa" TabIndex="7" required="" AutoComplete="off" MaxLength="50"></asp:TextBox>
      
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  
  
  
  <div class="col-submit">
      <p class="login button">   
       <asp:Button ID="Button1" runat="server" Text="Registrar"   />

      </p>
 
  </div>
  </form>
  </div>
<script type="text/javascript">
    var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

    elems.forEach(function (html) {
        var switchery = new Switchery(html);
    });
</script>
</body>
</html>
</asp:Content>

