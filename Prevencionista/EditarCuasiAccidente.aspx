<%@ Page Title="" debug="true" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="EditarCuasiAccidente.aspx.vb" Inherits="Prevencionista_Default" %>

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
					 <h2 align="center">Editar Cuasi Accidente</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
                    
                  	  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label9" runat="server" align="center" Text="Filtrar"></asp:Label>
                        <input type="text" id="filtro" align="center" />
                         <br />       <br /> 
                                    <div  style="height:200px;overflow:scroll; width:600px;">    
                              <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ObjectDataSource1" align="center" ForeColor="#333333" GridLines="None" Width="586px">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:CommandField ShowSelectButton="True" >
                                 <ItemStyle Width="100px" />
                                 </asp:CommandField>
                                 <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                 <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                 <asp:BoundField DataField="Causa" HeaderText="Causa" SortExpression="Causa" />
                                 <asp:BoundField DataField="Potencial" HeaderText="Potencial" SortExpression="Potencial" >
                                 <ItemStyle Width="100px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Actividad" HeaderText="Actividad" SortExpression="Actividad" />
                                 <asp:BoundField DataField="Lugar" HeaderText="Lugar" SortExpression="Lugar" />
                                 <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" >
                                 <ItemStyle Width="100px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Fecha_investigacion" HeaderText="Fecha_investigacion" SortExpression="Fecha_investigacion" DataFormatString="{0:d}" />
                                 <asp:BoundField DataField="Fk_usuario" HeaderText="Fk_usuario" SortExpression="Fk_usuario" />
                                 <asp:BoundField DataField="Fk_afectado" HeaderText="Fk_afectado" SortExpression="Fk_afectado" />
                                 <asp:BoundField DataField="FK_faena" HeaderText="FK_faena" SortExpression="FK_faena" />
                                 <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" ReadOnly="True" >
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Id_equipo" HeaderText="Id_equipo" InsertVisible="False" ReadOnly="True" SortExpression="Id_equipo" />
                                 <asp:BoundField DataField="Afectado" HeaderText="Afectado" ReadOnly="True" SortExpression="Afectado" />
                             </Columns>
                             <EditRowStyle BackColor="#2461BF" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#EFF3FB" />
                             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                             <SortedDescendingHeaderStyle BackColor="#4870BE" />
                         </asp:GridView></div>
                         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="LlenarGridCuasi" TypeName="DataSetTableAdapters.GridCuasiTableAdapter"></asp:ObjectDataSource>
				  </div> </div>
                  
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                          <asp:Label ID="lbltrabajador" runat="server" Text="Trabajador"></asp:Label>
                          <br />
                        <asp:TextBox ID="Trabajador" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
					</div>
                    	</div>

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                    <asp:Label ID="Label1" runat="server" Text="Descripción"></asp:Label><br />
                <asp:TextBox ID="descripcion" autocomplete="off" class="form-control"  runat="server" style="resize:none;" Height="177px" TextMode="MultiLine" required="" MaxLength="500"></asp:TextBox>
					</div>
				  </div>

                    

                      <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label6" runat="server" Text="Potencial"></asp:Label>
                       <br />
                          <asp:DropDownList ID="dropPotencial" runat="server" required="">
                              <asp:ListItem>Seleccione</asp:ListItem>
                              <asp:ListItem>Bajo</asp:ListItem>
                              <asp:ListItem>Medio</asp:ListItem>
                              <asp:ListItem>Alto</asp:ListItem>
                        </asp:DropDownList>
					</div>
				  </div>

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label3" runat="server" Text="Causa"></asp:Label><br />
					  <asp:TextBox ID="Causa" autocomplete="off" class="form-control" MaxLength="50" runat="server" required=""></asp:TextBox>
					</div>
				  </div>
  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label4" runat="server" Text="Actividad"></asp:Label><br />
					  <asp:TextBox ID="Actividad" autocomplete="off" class="form-control" MaxLength="150" required="" runat="server"></asp:TextBox>
					</div>
				  </div>  
                    <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label5" runat="server" Text="Lugar"></asp:Label><br />
					  <asp:TextBox ID="Lugar" autocomplete="off" class="form-control" MaxLength="100" runat="server"></asp:TextBox>
					</div>
				  </div>

                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="Label7" runat="server" Text="Faena"></asp:Label><br />
					  <asp:DropDownList ID="dropfaena" runat="server" Width="256px" class="intro-select1" DataSourceID="ObjectDataSource2" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>
					    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.FaenaTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Descripcion" Type="String" />
                                <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
                                <asp:Parameter Name="Fecha_fin" Type="DateTime" />
                                <asp:Parameter Name="FK_cliente" Type="String" />
                                <asp:Parameter Name="FK_ciudad" Type="Int32" />
                                <asp:Parameter Name="FK_servicio" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Descripcion" Type="String" />
                                <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
                                <asp:Parameter Name="Fecha_fin" Type="DateTime" />
                                <asp:Parameter Name="FK_cliente" Type="String" />
                                <asp:Parameter Name="FK_ciudad" Type="Int32" />
                                <asp:Parameter Name="FK_servicio" Type="Int32" />
                                <asp:Parameter Name="Original_Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
					</div>
				  </div>
                     <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
            <asp:Label ID="lblequipo" runat="server" Text="Equipo"></asp:Label><br />
					 <asp:DropDownList ID="dropquipo" runat="server" Width="208px" DataSourceID="ObjectDataSource4" DataTextField="Patente" DataValueField="Id_equipo"></asp:DropDownList>
					    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.EquipoTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_Id_equipo" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Patente" Type="String" />
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Estado" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Patente" Type="String" />
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Estado" Type="String" />
                                <asp:Parameter Name="Original_Id_equipo" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
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

