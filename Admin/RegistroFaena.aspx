<%@ Page Title="" Language="VB"   EnableEventValidation="true" MasterPageFile="administrador.master" AutoEventWireup="false" CodeFile="RegistroFaena.aspx.vb" Inherits="Admin_Default"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
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

    <link href="cssdrop/style.css" rel="stylesheet" />
</head>

<body>
  <div id="wrapper">
  <br /><br />
  <h1>Registro Faena</h1>
  
  <form  runat="server">
  <div class="col-3">
    <label>
      Seleccione Empresa</label>
      <asp:DropDownList ID="empresa" runat="server" class="intro-select1" required="" DataSourceID="SqlDataSource1" DataTextField="Cliente" DataValueField="Rut"></asp:DropDownList>
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Rut, Nombre AS Cliente FROM Empresa_cliente UNION SELECT '0 ' AS Rut, ' Seleccione Cliente ' AS Cliente FROM Empresa_cliente AS Cliente_1"></asp:SqlDataSource>
      
   
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Nombre
        <asp:TextBox ID="nombre" placeholder="Nombre de la faena" runat="server" TabIndex="2" required="" MaxLength="50"></asp:TextBox>
       </label>
  &nbsp;&nbsp;&nbsp;</div>
         <div class="col-3">
    <label>
     Seleccione el servicio a entregar
       <asp:DropDownList ID="servicio" runat="server" DataSourceID="SqlDataSource4" DataTextField="Servicio" DataValueField="Id_servicio"></asp:DropDownList>
     
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Id_servicio, Nombre AS Servicio FROM Servicio UNION SELECT '0 ' AS id_servicio, ' Seleccione Servicio ' AS Servicio FROM Servicio AS Servicio_1"></asp:SqlDataSource>
     
            </label>
  &nbsp;&nbsp;&nbsp;</div>
   <div class="col-3">
    <label>
      Fecha Inicio
        <asp:TextBox ID="Fecha_inicio" AutoComplete="off" format="yyyy-mm-dd" runat="server" placeholder="DD-MMM-YYYY" TabIndex="6" required=""></asp:TextBox>
     
       <cc1:CalendarExtender ID="Fecha_inicio_CalendarExtender" runat="server" BehaviorID="Fecha_inicio_CalendarExtender" TargetControlID="Fecha_inicio">
       </cc1:CalendarExtender>
       <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True">
       </asp:ScriptManager>
     
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Fecha Fin
       <asp:TextBox ID="fecha_fin" format="yyyy-mm-dd"  AutoComplete="off" runat="server" placeholder="DD-MMM-YYYY" TabIndex="6" required=""></asp:TextBox>       
      <cc1:CalendarExtender ID="fecha_fin_CalendarExtender" runat="server" BehaviorID="fecha_fin_CalendarExtender" TargetControlID="fecha_fin">
      </cc1:CalendarExtender>
    </label>
  &nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Descripción <br />
        <asp:TextBox ID="descripcion" style="resize:none; border:none;" Width="100%" Height="50px" runat="server" placeholder="Descripción de la faena" TabIndex="7" required="" TextMode="MultiLine"></asp:TextBox>
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  
      <div class="col-2">
    <label>
      Región <br />
        <asp:DropDownList ID="region" runat="server" DataSourceID="SqlDataSource2" DataTextField="Region" DataValueField="ID_region" AutoPostBack="True"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT ID_region, Nombre AS Region FROM Region UNION SELECT '0 ' AS ID_region, ' Seleccione Region ' AS Region FROM Region AS Region_1"></asp:SqlDataSource>
    </label>
  &nbsp;&nbsp;&nbsp;</div>
       <div class="col-2">
    <label>
      Ciudad <br />
        <asp:DropDownList ID="ciudad" runat="server" DataSourceID="SqlDataSource3" DataTextField="Ciudad" DataValueField="ID_ciudad"></asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT ID_ciudad, Nombre_ciudad AS Ciudad FROM Ciudad WHERE (fk_region = @fk_region) UNION SELECT '0 ' AS ID_ciudad, ' Seleccione ciudad ' AS Ciudad FROM Ciudad AS Ciudad_1">
               <SelectParameters>
                   <asp:ControlParameter ControlID="region" DefaultValue="0" Name="Fk_region" PropertyName="SelectedValue" />
               </SelectParameters>
           </asp:SqlDataSource>
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
    
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#left").bind("click", function () {
                var options = $("[id*=lstRight] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=lstLeft]").append(opt);
                }
            });
            $("#right").bind("click", function () {
                var options = $("[id*=lstLeft] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=lstRight]").append(opt);
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("[id*=btnSubmit]").bind("click", function () {
                $("[id*=lstLeft] option").attr("selected", "selected");
                $("[id*=lstRight] option").attr("selected", "selected");
            });
        });
    </script>
   
   
      <%-- ________________________FIN JAVASCRIPT LISTBOX Trabajadoreso___________________________________ --%>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="jsdrop/vendor/jquery-1.9.1.min.js"><\/script>')</script>
<script src="//yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<script src="jsdrop/jquery.ikSelect.js"></script>
<script src="jsdrop/script.js"></script>
</body>
</html>
</asp:Content>

