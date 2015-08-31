<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Prevencionista_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
	 <title>Mprueba</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="cssdrop/style.css" rel="stylesheet" />
    <script src="jsdrop/jquery.ikSelect.js"></script>
    <script src="jsdrop/jquery.ikSelect.min.js"></script>
    <script src="jsdrop/script.js"></script>
    <link href="color/default.css" rel="stylesheet" media="screen">
         <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
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

  <script type="text/javascript">
      $(document).ready(function () {
          //agregar una nueva columna con todo el texto 
          //contenido en las columnas de la grilla 
          // contains de Jquery es CaseSentive, por eso a minúscula
          $(".filtrar tr:has(td)").each(function () {
              var t = $(this).text().toLowerCase();
              $("<td class='indexColumn'></td>")
              .hide().text(t).appendTo(this);
          });
          //Agregar el comportamiento al texto (se selecciona por el ID) 
          $("#filtro").keyup(function () {
              var s = $(this).val().toLowerCase().split(" ");
              $(".filtrar tr:hidden").show();
              $.each(s, function () {
                  $(".filtrar tr:visible .indexColumn:not(:contains('"
                  + this + "'))").parent().hide();
              });
          });
      });
     </script>

</head>
<body>
   
    <br />
  <section id="contact" class="home-section bg-white">
	  	<div class="container">
			  <div class="row">
				  <div class="col-md-offset-2 col-md-8">
					<div class="section-heading">
					 <h2 align="center">Panel del prevencionista</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
                    
                  	  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        Bienvenido al panel del prevencionsta, donde podrá registrar los accidentes y cuasi accidentes ocurridos en la empresa, tambien podrá editar estos, subir su investigación y obtener graficos y reportes de estos..
                         <br />       <br /> 
                                       
				  </div> </div>
                  
				                  

               				</form>
		  			</div>
	  		</div>
	  	</div>
	  </section>  
</body>
</html>
    
   

</asp:Content>

