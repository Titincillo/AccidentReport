<%@ Page Title="" Debug="true" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="VerAchivosAccidente.aspx.vb" Inherits="Prevencionista_Default" %>

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
					 <h2 align="center">Ver Archivos Accidente</h2>
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
                              <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ObjectDataSource1" align="center" ForeColor="#333333" GridLines="None" Width="578px">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:CommandField ShowSelectButton="True">
                                 <ItemStyle ForeColor="#3399FF" />
                                 </asp:CommandField>
                                 <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                 <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                 <asp:BoundField DataField="Actividad" HeaderText="Actividad" SortExpression="Actividad" />
                                 <asp:BoundField DataField="Tipo_accidente" HeaderText="Tipo accidente" SortExpression="Tipo_accidente" />
                                 <asp:BoundField DataField="Tipo_lesion" HeaderText="Tipo_lesion" SortExpression="Tipo_lesion" />
                                 <asp:BoundField DataField="Causa" HeaderText="Causa" SortExpression="Causa" />
                                 <asp:BoundField DataField="Lugar" HeaderText="Lugar" SortExpression="Lugar" />
                                 <asp:BoundField DataField="Ubi_lesion" HeaderText="Ubi_lesion" SortExpression="Ubi_lesion" />
                                 <asp:BoundField DataField="Folio" HeaderText="Folio" SortExpression="Folio" />
                                 <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" />
                                 <asp:BoundField DataField="Fecha_investigacion" HeaderText="Fecha_investigacion" SortExpression="Fecha_investigacion" DataFormatString="{0:d}" />
                                 <asp:BoundField DataField="FK_usuario" HeaderText="Usuario" SortExpression="FK_usuario" >
                                 </asp:BoundField>
                                 <asp:BoundField DataField="FK_afectado" HeaderText="Afectado" SortExpression="FK_afectado" />
                                 <asp:BoundField DataField="FK_equipo" HeaderText="Equipo" SortExpression="FK_equipo" />
                                 <asp:BoundField DataField="FK_faena" HeaderText="Faena" SortExpression="FK_faena" />
                                 <asp:BoundField DataField="FK_clasificacion" HeaderText="Clasificación" SortExpression="FK_clasificacion" />
                                 <asp:BoundField DataField="DiasPerdidos" HeaderText="DiasPerdidos" SortExpression="DiasPerdidos" />
                                 <asp:BoundField DataField="DiasCargo" HeaderText="DiasCargo" SortExpression="DiasCargo" />
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
                         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.AccidenteTableAdapter" UpdateMethod="Update">
                             <DeleteParameters>
                                 <asp:Parameter Name="Original_Id" Type="Int32" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="Descripcion" Type="String" />
                                 <asp:Parameter Name="Actividad" Type="String" />
                                 <asp:Parameter Name="Tipo_accidente" Type="String" />
                                 <asp:Parameter Name="Tipo_lesion" Type="String" />
                                 <asp:Parameter Name="Causa" Type="String" />
                                 <asp:Parameter Name="Lugar" Type="String" />
                                 <asp:Parameter Name="Ubi_lesion" Type="String" />
                                 <asp:Parameter Name="Folio" Type="Int32" />
                                 <asp:Parameter Name="Fecha" Type="DateTime" />
                                 <asp:Parameter Name="Fecha_investigacion" Type="DateTime" />
                                 <asp:Parameter Name="FK_usuario" Type="String" />
                                 <asp:Parameter Name="FK_afectado" Type="String" />
                                 <asp:Parameter Name="FK_equipo" Type="Int32" />
                                 <asp:Parameter Name="FK_faena" Type="Int32" />
                                 <asp:Parameter Name="FK_clasificacion" Type="Int32" />
                                 <asp:Parameter Name="DiasPerdidos" Type="Int32" />
                                 <asp:Parameter Name="DiasCargo" Type="Int32" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="Descripcion" Type="String" />
                                 <asp:Parameter Name="Actividad" Type="String" />
                                 <asp:Parameter Name="Tipo_accidente" Type="String" />
                                 <asp:Parameter Name="Tipo_lesion" Type="String" />
                                 <asp:Parameter Name="Causa" Type="String" />
                                 <asp:Parameter Name="Lugar" Type="String" />
                                 <asp:Parameter Name="Ubi_lesion" Type="String" />
                                 <asp:Parameter Name="Folio" Type="Int32" />
                                 <asp:Parameter Name="Fecha" Type="DateTime" />
                                 <asp:Parameter Name="Fecha_investigacion" Type="DateTime" />
                                 <asp:Parameter Name="FK_usuario" Type="String" />
                                 <asp:Parameter Name="FK_afectado" Type="String" />
                                 <asp:Parameter Name="FK_equipo" Type="Int32" />
                                 <asp:Parameter Name="FK_faena" Type="Int32" />
                                 <asp:Parameter Name="FK_clasificacion" Type="Int32" />
                                 <asp:Parameter Name="DiasPerdidos" Type="Int32" />
                                 <asp:Parameter Name="DiasCargo" Type="Int32" />
                                 <asp:Parameter Name="Original_Id" Type="Int32" />
                             </UpdateParameters>
                        </asp:ObjectDataSource>
				  </div> </div>
                  
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        <asp:Label ID="Label10" runat="server" Text="Seleccione archivo"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_archivo" DataSourceID="ObjectDataSource2">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id_archivo" HeaderText="Id_archivo" InsertVisible="False" ReadOnly="True" SortExpression="Id_archivo" />
                                <asp:BoundField DataField="Nombre"  HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Ruta" HeaderText="Ruta" SortExpression="Ruta" />
                                <asp:BoundField DataField="Fk_investigacion_C" HeaderText="Fk_investigacion_C" SortExpression="Fk_investigacion_C" />
                                <asp:BoundField DataField="Fk_investigacion_A" HeaderText="Fk_investigacion_A" SortExpression="Fk_investigacion_A" />
                            </Columns>
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="ConsultarArchivosAccidente" TypeName="DataSetTableAdapters.ArchivoTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_Id_archivo" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Ruta" Type="String" />
                                <asp:Parameter Name="Fk_investigacion_C" Type="Int32" />
                                <asp:Parameter Name="Fk_investigacion_A" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="id_accidente" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Ruta" Type="String" />
                                <asp:Parameter Name="Fk_investigacion_C" Type="Int32" />
                                <asp:Parameter Name="Fk_investigacion_A" Type="Int32" />
                                <asp:Parameter Name="Original_Id_archivo" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
                        <asp:Image ID="Image1" runat="server" Height="380px" Width="440px" />
        <hr />
					</div>
				  </div>

                    

                    <%-- BOTON --%>
				  <div class="form-group">
				  </div>
				</form>
		  			</div>
	  		</div>
	  	</div>
	  </section>  
</body>
</html>
    

</asp:Content>

