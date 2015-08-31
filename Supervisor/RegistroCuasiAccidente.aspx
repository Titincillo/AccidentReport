<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="RegistroCuasiAccidente.aspx.vb" Inherits="Prevencionista_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
<html>
<head>
	 <title>Mprueba</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="color/default.css" rel="stylesheet" media="screen">
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

</head>
<body>
   
    <br />
  <section id="contact" class="home-section bg-white">
	  	<div class="container">
			  <div class="row">
				  <div class="col-md-offset-2 col-md-8">
					<div class="section-heading">
					 <h2 align="center">Registro Cuasi Accidente</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
                    <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        Seleccione los afectador por el cuasi accidente (*)<br />
					  <asp:RadioButton ID="trabajador" runat="server" Text="Persona" AutoPostBack="True" />
                        <asp:RadioButton ID="Equipo" runat="server" Text="Equipo" AutoPostBack="True" />
                        <asp:RadioButton ID="Ambos" runat="server" Text="Ambos" AutoPostBack="True"/>
					</div>
				  </div>
                  
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                          <asp:Label ID="lbltrabajador" runat="server" Text="Trabajador (*)"></asp:Label>
                          <br />
					 <asp:DropDownList ID="droptrabajador" runat="server" DataSourceID="SqlDataSource1" class="intro-select1" DataTextField="Trabajador" required="" DataValueField="Rut" Width="311px" Height="16px"></asp:DropDownList>
					      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Rut, Nombre + ' | ' + Rut  AS Trabajador
FROM Trabajador
 UNION SELECT '0 ' AS Rut, ' Seleccione Trabajador ' AS Nombre
 FROM Trabajador AS trabajador_1"></asp:SqlDataSource>
					</div>
                    
				  </div>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                    <asp:Label ID="Label1" runat="server" Text="Descripción (*)"></asp:Label><br />
                <asp:TextBox ID="descripcion" class="form-control" runat="server" required="" MaxLength="500" TextMode="MultiLine" style="resize:none;" Height="145px" ></asp:TextBox>
					</div>
				  </div>

                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label7" runat="server" Text="Faena (*)"></asp:Label>
					 <br /><asp:DropDownList ID="Dropfaena" runat="server" DataSourceID="SqlDataSource2"  DataTextField="Nombre" DataValueField="Id" Width="311px" ></asp:DropDownList>
					      <br />
					    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT Id, Nombre FROM Faena UNION SELECT '0 ' AS id, ' Seleccione Faena ' AS Nombre"></asp:SqlDataSource>
					</div>
				  </div>

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Label ID="Label2" runat="server" Text="Potencial (*)"></asp:Label><br />
				<asp:DropDownList ID="dropPotencial" runat="server" Width="208px">
                    <asp:ListItem Value="0">Seleccione</asp:ListItem>
                    <asp:ListItem>Bajo</asp:ListItem>
                    <asp:ListItem>Medio</asp:ListItem>
                    <asp:ListItem>Alto</asp:ListItem>
                        </asp:DropDownList>
					</div>
				  </div>

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label3" runat="server" Text="Causa (*)"></asp:Label><br />
					  <asp:TextBox ID="causa" class="form-control" MaxLength="50" runat="server" AutoComplete="off"  required=""></asp:TextBox>
					</div>
				  </div>
  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label4" runat="server" Text="Actividad (*)"></asp:Label><br />
					  <asp:TextBox ID="actividad" class="form-control" MaxLength="150"  runat="server" AutoComplete="off"  required=""></asp:TextBox>
					</div>
				  </div>  
                    <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label5" runat="server" Text="Lugar (*)"></asp:Label><br />
					  <asp:TextBox ID="lugar" class="form-control" MaxLength="100" AutoComplete="off"  runat="server" required=""></asp:TextBox>
					</div>
				  </div>

             <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="lblequipo" runat="server" Text="Equipo (*)"></asp:Label><br />
					 <asp:DropDownList ID="dropequipo" runat="server" Width="208px" DataSourceID="SqlDataSource3" DataTextField="Equipo" DataValueField="id_equipo"></asp:DropDownList>
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

