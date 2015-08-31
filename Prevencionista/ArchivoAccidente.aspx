<%@ Page Title="" Debug="true" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="ArchivoAccidente.aspx.vb" Inherits="Prevencionista_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>   
<html>
<head runat="server">
	 <title>Mprueba</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
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
  <style type="text/css">
    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 600px;
        height: 600px;
    }
</style>
</head>
<body>
   
    <br />
  <section id="contact" class="home-section bg-white">
	  	<div class="container">
			  <div class="row">
				  <div class="col-md-offset-2 col-md-8">
					<div class="section-heading">
					 <h2 align="center">Investigación Accidente</h2>
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
                              <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ObjectDataSource1" align="center" ForeColor="#333333" GridLines="None" Width="457px">
                             <AlternatingRowStyle BackColor="White" />
                                  <Columns>
                                      <asp:CommandField ShowSelectButton="True" />
                                      <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                      <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
                                      <asp:BoundField DataField="Actividad" HeaderText="Actividad" SortExpression="Actividad" />
                                      <asp:BoundField DataField="Tipo_accidente" HeaderText="Tipo accidente" SortExpression="Tipo_accidente" />
                                      <asp:BoundField DataField="Tipo_lesion" HeaderText="Tipo lesion" SortExpression="Tipo_lesion" />
                                      <asp:BoundField DataField="Causa" HeaderText="Causa" SortExpression="Causa" />
                                      <asp:BoundField DataField="Lugar" HeaderText="Lugar" SortExpression="Lugar" />
                                      <asp:BoundField DataField="Ubi_lesion" HeaderText="Ubi_lesion" SortExpression="Ubi_lesion" />
                                      <asp:BoundField DataField="Folio" HeaderText="Folio" SortExpression="Folio" />
                                      <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" SortExpression="Fecha" />
                                      <asp:BoundField DataField="Fecha_investigacion" DataFormatString="{0:d}" HeaderText="Investigación" SortExpression="Fecha_investigacion" />
                                      <asp:BoundField DataField="FK_usuario" HeaderText="Usuario" SortExpression="FK_usuario" />
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
                         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.AccidenteTableAdapter">
                             <DeleteParameters>
                                 <asp:Parameter Name="Original_Id" Type="Int32" />
                             </DeleteParameters>
                        </asp:ObjectDataSource>
				  </div> </div>

                      <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Folio"></asp:Label> <br />
                        <asp:TextBox ID="folio" runat="server" Height="21px"></asp:TextBox>
        
					</div></div>

                   <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Dias perdidos"></asp:Label> <br />
                        <asp:TextBox ID="diasperdidos" runat="server"></asp:TextBox>
        
					</div></div>

                        <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                      
                        <asp:Label ID="lblgrado" runat="server" Text="Dias Cargo"></asp:Label> 
                                        
                       <br /> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="btnShow" runat="server" Text="Detalle" />
          <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
              
                        </cc1:ModalPopupExtender>
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none">
    <asp:Image ID="Image1" ImageUrl="images/DiasCargo.png" Height="500px" Width="500px" runat="server" /><br />
    <asp:Button ID="btnClose" runat="server" Text="Close" />
</asp:Panel>                  
     
					</div>
                            </div>

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>   

				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        <br />
               <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
        <hr />
					</div>
				  </div>

                   

                    <%-- BOTON --%>
				  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
<asp:Button ID="Button1" runat="server" class="btn btn-theme btn-lg btn-block" Text="Subir Archivos" />
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

