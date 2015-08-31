<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="RegistroIncidente.aspx.vb" Inherits="Prevencionista_Default" %>

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
  <link rel="stylesheet" href="//yandex.st/highlightjs/7.3/styles/tomorrow.min.css">
      <link rel="stylesheet" href="cssdrop/style.css" media="all">


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
  <h1>Registro Cuasi Accidente</h1>
    <form  runat="server"> 
 <div class="col-2">
     
     <asp:RadioButton ID="RadioButton1" runat="server" text="Persona" Height="32px" Width="150px"/>  <label>
      Seleccione accidentado 
     <asp:CheckBox ID="CheckBox1" runat="server" Text="asdadsadadasdasd" />
     </label>
      <asp:RadioButton ID="RadioButton2" runat="server" text="Maquina" Height="67px" Width="150px"/>
</div>
<div class="col-2">
    <label>asdasdsads</label>
   

    </div>
        
  <div class="col-2">
    <label>
      Seleccione faena</label>
       
        <asp:DropDownList ID="DropDownList1" class="intro-select1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Nombre" DataValueField="id" required="">
          
        </asp:DropDownList>
                        
    
      <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.FaenaTableAdapter" UpdateMethod="Update">
          <DeleteParameters>
              <asp:Parameter Name="Original_id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Nombre" Type="String" />
              <asp:Parameter Name="Descripcion" Type="String" />
              <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
              <asp:Parameter Name="Fecha_fin" Type="DateTime" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="Nombre" Type="String" />
              <asp:Parameter Name="Descripcion" Type="String" />
              <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
              <asp:Parameter Name="Fecha_fin" Type="DateTime" />
              <asp:Parameter Name="Original_id" Type="Int32" />
          </UpdateParameters>
      </asp:ObjectDataSource>
                       
    
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-2">
    <label>
      Descripcion
        <asp:TextBox ID="nombre" placeholder="Juan Pérez" runat="server" TabIndex="2" required="" MaxLength="50"></asp:TextBox>
       </label>
  &nbsp;&nbsp;&nbsp;</div>
  
  <div class="col-2">
    <label>
      Causa
        <asp:TextBox ID="telefono" runat="server" placeholder="Que causo el incidente" tabindex="3" required="" MaxLength="8"></asp:TextBox>
          </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-2">
    <label>
      Fecha
       <asp:TextBox ID="correo" runat="server" placeholder="DD-MM-AAAA" TabIndex="4" MaxLength="80" ></asp:TextBox>
      </label>
  &nbsp;&nbsp;&nbsp;</div>
  
  <div class="col-3">
    <label>
      Potencial
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Seleccione</asp:ListItem>
            <asp:ListItem></asp:ListItem>
      </asp:DropDownList>
     
    </label>
  &nbsp;&nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Trabajador
        <asp:DropDownList runat="server" tabindex="7" required="" ID="cargo" Height="16px" >
            <asp:ListItem>Seleccione</asp:ListItem>
      </asp:DropDownList>
      
    </label>
  &nbsp;&nbsp;</div>
  <div class="col-3">
    <label>
      Direccion
        <asp:TextBox ID="direccion" runat="server" placeholder="La direccion del trabajador" TabIndex="7" required=""></asp:TextBox>
      
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
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="jsdrop/vendor/jquery-1.9.1.min.js"><\/script>')</script>
<script src="//yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<script src="jsdrop/jquery.ikSelect.js"></script>
<script src="jsdrop/script.js"></script>

</body>
</html>
</asp:Content>

