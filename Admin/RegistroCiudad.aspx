<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="RegistroCiudad.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> <br/>
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
    <link href="cssdrop/style.css" rel="stylesheet" />
    <script src="jsdrop/jquery.ikSelect.js"></script>
    <script src="jsdrop/jquery.ikSelect.min.js"></script>
    <script src="jsdrop/script.js"></script>
 
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
  
  <h1>Registro Ciudad</h1>
  
  <form  runat="server">
  <div class="col-2">
    <label>
      Nombre Ciudad   
        <asp:TextBox ID="nombre" runat="server" placeholder="Nombre de la ciudad" tabindex="1" required="" MaxLength="30" AutoComplete="off"></asp:TextBox>
      
    </label>
  &nbsp;&nbsp;&nbsp;</div>
    <div class="col-2">
    <label>
      Región a la que pertenece   
       <asp:DropDownList ID="DropDownList1" cssclass="intro-select1" runat="server" DataSourceID="Region" DataTextField="Region" DataValueField="ID_region"></asp:DropDownList>
      
        <asp:SqlDataSource ID="Region" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT ID_region, Nombre AS Region FROM Region UNION SELECT '0 ' AS id_region, ' Seleccione region ' AS region FROM Region AS Region_1"></asp:SqlDataSource>
      
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

