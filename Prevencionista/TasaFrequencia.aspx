<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="TasaFrequencia.aspx.vb" Inherits="Prevencionista_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
	 <title>Mprueba</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
   <script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
    <link href="color/default.css" rel="stylesheet" media="screen">
         <script type="text/javascript">
         function ValidNum(e) {
             var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
             return ((tecla > 47 && tecla < 58) || tecla == 08);
         }
       </script>
    <script type="text/javascript">
        $(function () {
            $('#container').highcharts({
                title: {
                    text: 'Por cada 1.000.000 de hrs hombre trabajadas',
                    x: -20 //center
                },
              
                xAxis: {
                    categories: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                        'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
                }, min: 0,
                yAxis: {
                    title: {
                        text: 'Indice de frequencia '
                    }, min: 0,
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    valueSuffix: ' Cantidad de lesiones incapacitantes '
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle',
                    borderWidth: 0
                },
                series: [{
                    name: '2012',
                    data: [<%=Math.Round(((graficos.Graficos("ene", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                       <%=Math.Round(((graficos.Graficos("feb", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                       <%=Math.Round(((graficos.Graficos("mar", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("abr", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("may", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                       <%=Math.Round(((graficos.Graficos("jun", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                       <%=Math.Round(((graficos.Graficos("jul", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("ago", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("sep", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("oct", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("nov", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                       <%=Math.Round(((graficos.Graficos("dic", 2012).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>]
                }, {
                    name: '2013',
                    data: [  <%=Math.Round(((graficos.Graficos("ene", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("feb", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("mar", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                         <%=Math.Round(((graficos.Graficos("abr", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("may", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("jun", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("jul", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("ago", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("sep", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("oct", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("nov", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("dic", 2013).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>]
                }, {
                    name: '2014',
                    data: [  <%=Math.Round(((graficos.Graficos("ene", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("feb", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("mar", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                         <%=Math.Round(((graficos.Graficos("abr", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("may", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("jun", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("jul", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("ago", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("sep", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("oct", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("nov", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("dic", 2014).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>]
                }, {
                    name: '2015',
                    data: [<%=Math.Round(((graficos.Graficos("ene", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("feb", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("mar", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("abr", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                          <%=Math.Round(((graficos.Graficos("may", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("jun", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>,
                        <%=Math.Round(((graficos.Graficos("Jul", 2015).Rows.Count * 1000000) / (8 * 30 * trabajadores.GetData.Rows.Count)))%>
                    ]
                }]
            });
        });
       
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
					 <h2 align="center">Tasa de frequencia de accidente</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
              								
  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                     <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

					</div>
				  </div>  
          
                    <%-- BOTON --%>
				</form>
		  			</div>
	  		</div>
	  	</div>
	  </section>  
</body>
</html>
</asp:Content>

