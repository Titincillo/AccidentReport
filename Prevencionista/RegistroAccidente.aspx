<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="RegistroAccidente.aspx.vb" Inherits="Prevencionista_Default" %>

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
					 <h2 align="center">Registro de Accidente</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                    <asp:Label ID="Label10" runat="server" Text="Hay maquinaria afectada? (*)"></asp:Label><br />
                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" Text="Si" />
                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Text="No" />
					</div>
				  </div>
                  
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                          <asp:Label ID="lbltrabajador" runat="server" Text="Trabajador(*)"></asp:Label>
                          <br />
					 <asp:DropDownList ID="droptrabajador" runat="server" DataSourceID="SqlDataSource1" class="intro-select1"  DataTextField="Trabajador" DataValueField="Rut" Width="208px"></asp:DropDownList>
					      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Rut, Nombre + ' | ' + Rut  AS Trabajador
FROM Trabajador
 UNION SELECT '0 ' AS Rut, ' Seleccione Trabajador ' AS Nombre
 FROM Trabajador AS trabajador_1"></asp:SqlDataSource>
					</div>
                    
				  </div>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                    <asp:Label ID="Label1" runat="server" Text="Descripción(*)"></asp:Label><br />
                <asp:TextBox ID="descripcion" class="form-control" runat="server" required="" MaxLength="500" style="resize:none;" Height="177px" TextMode="MultiLine" ></asp:TextBox>
					</div>
				  </div>

                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label7" runat="server" Text="Faena (*)"></asp:Label><br />
					  <asp:DropDownList ID="dropfaena" runat="server" Width="256px"  DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Id, Nombre FROM Faena UNION SELECT '0 ' AS id, ' Seleccione Faena ' AS Nombre"></asp:SqlDataSource>
					</div>
				  </div>

                      <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label6" runat="server" Text="Tipo Lesión (*)"></asp:Label>
                      
                        <br />  <asp:TextBox ID="TipoLesion" autocomplete="off" MaxLength="20" runat="server" required="" class="form-control"></asp:TextBox>
					</div>
				  </div>

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Label ID="Label2" runat="server" Text="Tipo Accidente"></asp:Label><br />
                        <asp:TextBox ID="tipoAccidente" autocomplete="off" runat="server" MaxLength="20"  class="form-control"></asp:TextBox>
					</div>
				  </div>

                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label8" runat="server" Text="Ubicación Lesión (*)"></asp:Label><br />
                        <asp:TextBox ID="ubilesion" runat="server" required="" MaxLength="40" autocomplete="off" class="form-control"></asp:TextBox>
                    </div>
				  </div>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label3" runat="server" Text="Causa (*)"></asp:Label><br />
					  <asp:TextBox ID="Causa" class="form-control" MaxLength="100" autocomplete="off" runat="server" required=""></asp:TextBox>
					</div>
				  </div>
  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label4" runat="server" Text="Actividad(*)"></asp:Label><br />
					  <asp:TextBox ID="Actividad" class="form-control" MaxLength="150" autocomplete="off" required="" runat="server"></asp:TextBox>
					</div>
				  </div>  
                    <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label5" runat="server" Text="Lugar"></asp:Label><br />
					  <asp:TextBox ID="Lugar" class="form-control" MaxLength="100" autocomplete="off" runat="server"></asp:TextBox>
					</div>
				  </div>

             <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="lblclasficiacion" runat="server" Text="Clasificación (*)"></asp:Label><br />
					 <asp:DropDownList ID="dropclasificacion" runat="server" Width="208px" DataSourceID="SqlDataSource4" DataTextField="Nombre" DataValueField="ID_clasificacion"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT ID_clasificacion, Nombre  AS Nombre
FROM clasificacion
 UNION SELECT '0 ' AS ID_clasificacion, ' Seleccione clasificación' AS  nombre
 FROM clasificacion AS trabajador_1"></asp:SqlDataSource>
					</div>
				  </div>  
                    
                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="lblequipo" runat="server" Text="Equipo (*)"></asp:Label><br />
					 <asp:DropDownList ID="dropquipo" runat="server" Width="208px" DataSourceID="SqlDataSource3" DataTextField="Equipo" DataValueField="id_equipo"></asp:DropDownList>
					    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT id_equipo,  Nombre + ' | ' + patente AS Equipo
FROM equipo
 UNION SELECT '0 ' AS id_equipo, ' Seleccione Equipo ' AS  nombre
 FROM equipo AS trabajador_1"></asp:SqlDataSource>
					</div>
				  </div>  
                   

                    <%-- BOTON --%>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Button ID="Button1" runat="server" class="btn btn-theme btn-lg btn-block" Text="Registrar" />
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

