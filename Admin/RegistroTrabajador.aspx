<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="RegistroTrabajador.aspx.vb" Inherits="Admin_Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="Tde.Controles.RutTextBox" namespace="Tde.Controles" tagprefix="tde" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Registro trabajadores</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="../css/styles.css">
  <link rel="stylesheet" type="text/css" media="all" href="../css/switchery.min.css">
  <script type="text/javascript" src="../js/switchery.min.js"></script>
    <script src="jsdrop/jquery.ikSelect.js"></script>
    <script src="jsdrop/jquery.ikSelect.min.js"></script>
    <script src="jsdrop/script.js"></script>
    <link href="cssdrop/style.css" rel="stylesheet" />

 
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
  <br /><h1>Registro trabajador</h1>
  
  <form  runat="server" id="form1">
  <div class="col-3">
      <label>
    * Rut
        &nbsp;<tde:RutTextBox ID="Rut" runat="server" TabIndex="1" required=""  placeholder="1111111-1"></tde:RutTextBox>
&nbsp;
            
      </label>
      &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
      <label>
    &nbsp;* Nombre&nbsp;
        <asp:TextBox ID="nombre" placeholder="Juan Pérez" runat="server" TabIndex="2" required="" MaxLength="50" AutoComplete="off"></asp:TextBox>
       </label>
      &nbsp;&nbsp;&nbsp;</div>
  
  <div class="col-3">
      <label>
    * Telefono
        <asp:TextBox ID="telefono" runat="server" placeholder="12345678" tabindex="3" required="" MaxLength="8" AutoComplete="off"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="telefono" ErrorMessage="Ingrese minimo 6 digitos" ValidationExpression="^[_0-9-]{6,10}$" ForeColor="Red"></asp:RegularExpressionValidator>
          </label>
      &nbsp;&nbsp;&nbsp;</div>
  <div class="col-2">
    <label>
      Email
       <asp:TextBox ID="correo" runat="server" placeholder="aaaaa@aaa.com" TabIndex="4" MaxLength="80" AutoComplete="off" Type="email"></asp:TextBox>
      </label>
  &nbsp;&nbsp;&nbsp;</div>

  <div class="col-2">
    <label>
      * Direccion
        <asp:TextBox ID="direccion" runat="server" placeholder="La direccion del trabajador" TabIndex="5" required="" MaxLength="100" Height="21px" AutoComplete="off"></asp:TextBox>
      
      </label>
      &nbsp;&nbsp;&nbsp;</div>

  <div class="col-3">
    <label>
      * Fecha nacimiento
        <asp:TextBox ID="Fecha_nac" runat="server" Format="dd/mm/yyyy" placeholder="DD-MMM-YYYY" TabIndex="6" required=""></asp:TextBox>
     
      <cc1:CalendarExtender ID="Fecha_nac_CalendarExtender" runat="server" BehaviorID="Fecha_nac_CalendarExtender" TargetControlID="Fecha_nac">
      </cc1:CalendarExtender>
     
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True">
      </asp:ScriptManager>
     
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      * Cargo
        <asp:DropDownList runat="server" class="intro-select1" tabindex="7" DataSourceID="Cargos" DataTextField="Cargo" DataValueField="id" required="" ID="cargo" Height="16px" ></asp:DropDownList>
      
      <asp:SqlDataSource ID="Cargos" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT id, descripcion AS Cargo FROM Cargo UNION SELECT '0 ' AS id, ' Seleccione cargo ' AS cargo FROM Cargo AS Cargo_1"></asp:SqlDataSource>
      
      </label>
      &nbsp;&nbsp;</div>
  
   <div class="col-3">
    <label>
       * Especialidad
        <asp:DropDownList ID="DropDownList1" class="intro-select1" runat="server" TabIndex="8" DataSourceID="Especialidad" DataTextField="Especialidad" DataValueField="Id_especialidad">
       </asp:DropDownList>
       <asp:SqlDataSource ID="Especialidad" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Id_especialidad, Nombre AS Especialidad FROM Especialidad UNION SELECT '0 ' AS id_especialidad, ' Seleccione especialidad ' AS especialidad FROM Especialidad AS Especialidad_1"></asp:SqlDataSource>
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

