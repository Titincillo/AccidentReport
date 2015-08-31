<%@ Page Title="" Language="VB" MasterPageFile="~/JefeFaena/MasterPage.master" AutoEventWireup="false" CodeFile="CambiarContraseña.aspx.vb" Inherits="Prevencionista_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
     <title>Cambiar Contraseña</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="cssdrop/style.css" rel="stylesheet" />
    <script src="jsdrop/jquery.ikSelect.js"></script>
    <script src="jsdrop/jquery.ikSelect.min.js"></script>
    <script src="jsdrop/script.js"></script>
    <link href="color/default.css" rel="stylesheet" media="screen">
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

    
</head>


<body>
  
    <br />
  <section id="contact" class="home-section bg-white">
	  	<div class="container">
			  <div class="row">
				  <div class="col-md-offset-2 col-md-8">
					<div class="section-heading">
					 <h2 align="center">Modificar Contraseña</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Label ID="Label2" runat="server" Text="Ingrese contraseña actual:"></asp:Label><br />
                        <asp:TextBox ID="Antigua" autocomplete="off" runat="server" MaxLength="20"  class="form-control" TextMode="Password"></asp:TextBox>
					</div>
				  </div>

  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label4" runat="server" Text="Ingrese nueva contraseña:"></asp:Label><br />
					  <asp:TextBox ID="nueva" class="form-control" MaxLength="20" autocomplete="off" required="" runat="server" TextMode="Password"></asp:TextBox>
					</div>
				  </div>  
                    <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label5" runat="server" Text="Ingrese nueva contraseña:"></asp:Label><br />
					  <asp:TextBox ID="repeticion" class="form-control" MaxLength="20" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
					</div>
				  </div>


                    <%-- BOTON --%>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Button ID="Button1" runat="server" class="btn btn-theme btn-lg btn-block" Text="Actualizar" />
                        <br />  <br />  <br />
					</div>
				  </div>
				</form>
		  			</div>
	  		</div>
	  	</div>
	  </section>  
</body>
</html>
</asp:Content>

