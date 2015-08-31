<%@ Page Title="" Language="VB" MasterPageFile="~/Supervisor/MasterPage.master" AutoEventWireup="false" CodeFile="TasaGravedad.aspx.vb" Inherits="Prevencionista_Default" %>
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
    <%-- LLENAR EL GRAFICO! --%>
     
     <%   
         Dim cantTrabajadores = trabajadores.GetData.Rows.Count
         '2012
         Dim cargoEne2012 As Integer
         Dim cargoFeb2012 As Integer
         Dim cargoMar2012 As Integer
         Dim cargoAbr2012 As Integer
         Dim cargoMay2012 As Integer
         Dim cargojun2012 As Integer
         Dim cargoJul2012 As Integer
         Dim cargoAgo2012 As Integer
         Dim cargoSep2012 As Integer
         Dim cargoOct2012 As Integer
         Dim cargoNov2012 As Integer
         Dim cargoDic2012 As Integer
         Dim diasperdidosEne2012 As Integer
         Dim diasperdidosFeb2012 As Integer
         Dim diasperdidosMar2012 As Integer
         Dim diasperdidosAbr2012 As Integer
         Dim diasperdidosMay2012 As Integer
         Dim diasperdidosJun2012 As Integer
         Dim diasperdidosJul2012 As Integer
         Dim diasperdidosAgo2012 As Integer
         Dim diasperdidosSept2012 As Integer
         Dim diasperdidosOct2012 As Integer
         Dim diasperdidosNov2012 As Integer
         Dim diasperdidosDic2012 As Integer
         '___________________
         '2013
         Dim cargoEne2013 As Integer
         Dim cargoFeb2013 As Integer
         Dim cargoMar2013 As Integer
         Dim cargoAbr2013 As Integer
         Dim cargoMay2013 As Integer
         Dim cargojun2013 As Integer
         Dim cargoJul2013 As Integer
         Dim cargoAgo2013 As Integer
         Dim cargoSep2013 As Integer
         Dim cargoOct2013 As Integer
         Dim cargoNov2013 As Integer
         Dim cargoDic2013 As Integer
         Dim diasperdidosEne2013 As Integer
         Dim diasperdidosFeb2013 As Integer
         Dim diasperdidosMar2013 As Integer
         Dim diasperdidosAbr2013 As Integer
         Dim diasperdidosMay2013 As Integer
         Dim diasperdidosJun2013 As Integer
         Dim diasperdidosJul2013 As Integer
         Dim diasperdidosAgo2013 As Integer
         Dim diasperdidosSept2013 As Integer
         Dim diasperdidosOct2013 As Integer
         Dim diasperdidosNov2013 As Integer
         Dim diasperdidosDic2013 As Integer
         '___________________________
         '2014
         Dim cargoEne2014 As Integer
         Dim cargoFeb2014 As Integer
         Dim cargoMar2014 As Integer
         Dim cargoAbr2014 As Integer
         Dim cargoMay2014 As Integer
         Dim cargojun2014 As Integer
         Dim cargoJul2014 As Integer
         Dim cargoAgo2014 As Integer
         Dim cargoSep2014 As Integer
         Dim cargoOct2014 As Integer
         Dim cargoNov2014 As Integer
         Dim cargoDic2014 As Integer
         Dim diasperdidosEne2014 As Integer
         Dim diasperdidosFeb2014 As Integer
         Dim diasperdidosMar2014 As Integer
         Dim diasperdidosAbr2014 As Integer
         Dim diasperdidosMay2014 As Integer
         Dim diasperdidosJun2014 As Integer
         Dim diasperdidosJul2014 As Integer
         Dim diasperdidosAgo2014 As Integer
         Dim diasperdidosSept2014 As Integer
         Dim diasperdidosOct2014 As Integer
         Dim diasperdidosNov2014 As Integer
         Dim diasperdidosDic2014 As Integer
         '___________________________
         'variables 2015
         Dim cargoEne2015 As Integer
         Dim cargoFeb2015 As Integer
         Dim cargoMar2015 As Integer
         Dim cargoAbr2015 As Integer
         Dim cargoMay2015 As Integer
         Dim cargojun2015 As Integer
         Dim diasperdidosEne2015 As Integer
         Dim diasperdidosFeb2015 As Integer
         Dim diasperdidosMar2015 As Integer
         Dim diasperdidosAbr2015 As Integer
         Dim diasperdidosMay2015 As Integer
         Dim diasperdidosJun2015 As Integer
         '____________________________________
         
         'Enero 2012
         For i = 0 To gravedad.Gravedad("Ene", 2012).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoEne2012 = cargoEne2012 + gravedad.Gravedad("Ene", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Ene", 2012).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosEne2012 = diasperdidosEne2012 + gravedad.Gravedad("Ene", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaEne2012 = Math.Round((cargoEne2012 + diasperdidosEne2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Febrero 2012
         For i = 0 To gravedad.Gravedad("Feb", 2012).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoFeb2012 = cargoFeb2012 + gravedad.Gravedad("Feb", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Feb", 2012).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosFeb2012 = diasperdidosFeb2012 + gravedad.Gravedad("Feb", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaFeb2012 = Math.Round((cargoFeb2012 + diasperdidosFeb2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Marzo 2012
         For i = 0 To gravedad.Gravedad("Mar", 2012).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMar2012 = cargoMar2012 + gravedad.Gravedad("Mar", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Mar", 2012).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMar2012 = diasperdidosAbr2012 + gravedad.Gravedad("Mar", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMar2012 = Math.Round((cargoMar2012 + diasperdidosMar2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Abril 2012
         For i = 0 To gravedad.Gravedad("abr", 2012).Rows.Count - 1
             If gravedad.Gravedad("abr", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAbr2012 = cargoAbr2012 + gravedad.Gravedad("jun", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("abr", 2012).Rows.Count - 1
             If gravedad.Gravedad("abr", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAbr2012 = diasperdidosAbr2012 + gravedad.Gravedad("abr", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAbr2012 = Math.Round((cargoAbr2012 + diasperdidosAbr2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         
         'Mayo 2012
         For i = 0 To gravedad.Gravedad("may", 2012).Rows.Count - 1
             If gravedad.Gravedad("may", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMay2012 = cargoMay2012 + gravedad.Gravedad("may", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("may", 2012).Rows.Count - 1
             If gravedad.Gravedad("may", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMay2012 = diasperdidosMay2012 + gravedad.Gravedad("may", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMay2012 = Math.Round((cargoMay2012 + diasperdidosMay2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Junio 2012
         For i = 0 To gravedad.Gravedad("jun", 2012).Rows.Count - 1
             If gravedad.Gravedad("jun", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2012 = cargojun2012 + gravedad.Gravedad("jun", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jun", 2012).Rows.Count - 1
             If gravedad.Gravedad("jun", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJun2012 = diasperdidosJun2012 + gravedad.Gravedad("jun", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajun2012 = Math.Round((cargojun2012 + diasperdidosJun2012) * 1000000 / (30 * 8 * cantTrabajadores))
         ' julio 2012
         
         For i = 0 To gravedad.Gravedad("jul", 2012).Rows.Count - 1
             If gravedad.Gravedad("jul", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoJul2012 = cargoJul2012 + gravedad.Gravedad("jul", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jul", 2012).Rows.Count - 1
             If gravedad.Gravedad("jul", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJul2012 = diasperdidosJul2012 + gravedad.Gravedad("jul", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajul2012 = Math.Round((cargojun2012 + diasperdidosJul2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Agosto 2012
         For i = 0 To gravedad.Gravedad("ago", 2012).Rows.Count - 1
             If gravedad.Gravedad("ago", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAgo2012 = cargoAgo2012 + gravedad.Gravedad("ago", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("ago", 2015).Rows.Count - 1
             If gravedad.Gravedad("ago", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAgo2012 = diasperdidosAgo2012 + gravedad.Gravedad("ago", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAgo2012 = Math.Round((cargoAgo2012 + diasperdidosAgo2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Septiembre 2012
         For i = 0 To gravedad.Gravedad("sep", 2012).Rows.Count - 1
             If gravedad.Gravedad("sep", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoSep2012 = cargoSep2012 + gravedad.Gravedad("sep", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("sep", 2015).Rows.Count - 1
             If gravedad.Gravedad("sep", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosSept2012 = diasperdidosSept2012 + gravedad.Gravedad("sep", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaSep2012 = Math.Round((cargoSep2012 + diasperdidosSept2012) * 1000000 / (30 * 8 * cantTrabajadores))
         ' Octubre 2012
         For i = 0 To gravedad.Gravedad("Oct", 2012).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoOct2012 = cargoOct2012 + gravedad.Gravedad("Oct", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Oct", 2015).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosOct2012 = diasperdidosOct2012 + gravedad.Gravedad("Oct", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaOct2012 = Math.Round((cargoOct2012 + diasperdidosOct2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Noviembre 2012
         For i = 0 To gravedad.Gravedad("Nov", 2012).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoNov2012 = cargoNov2012 + gravedad.Gravedad("Nov", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Nov", 2015).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosNov2012 = diasperdidosNov2012 + gravedad.Gravedad("Nov", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaNov2012 = Math.Round((cargoNov2012 + diasperdidosNov2012) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Diciembre
         For i = 0 To gravedad.Gravedad("dic", 2012).Rows.Count - 1
             If gravedad.Gravedad("dic", 2012).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoDic2012 = cargoDic2012 + gravedad.Gravedad("dic", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("dic", 2015).Rows.Count - 1
             If gravedad.Gravedad("dic", 2012).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosDic2012 = diasperdidosDic2012 + gravedad.Gravedad("dic", 2012).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaDic2012 = Math.Round((cargoDic2012 + diasperdidosDic2012) * 1000000 / (30 * 8 * cantTrabajadores))
                     
         '__________________________________________________
         
         'Enero 2013
         For i = 0 To gravedad.Gravedad("Ene", 2013).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoEne2013 = cargoEne2013 + gravedad.Gravedad("Ene", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Ene", 2013).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosEne2013 = diasperdidosEne2013 + gravedad.Gravedad("Ene", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaEne2013 = Math.Round((cargoEne2013 + diasperdidosEne2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Febrero 2013
         For i = 0 To gravedad.Gravedad("Feb", 2013).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoFeb2013 = cargoFeb2013 + gravedad.Gravedad("Feb", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Feb", 2013).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosFeb2013 = diasperdidosFeb2013 + gravedad.Gravedad("Feb", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaFeb2013 = Math.Round((cargoFeb2013 + diasperdidosFeb2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Marzo 2013
         For i = 0 To gravedad.Gravedad("Mar", 2013).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMar2013 = cargoMar2013 + gravedad.Gravedad("Mar", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Mar", 2013).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMar2013 = diasperdidosMar2013 + gravedad.Gravedad("Mar", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMar2013 = Math.Round((cargoMar2013 + diasperdidosMar2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Abril 2013
         For i = 0 To gravedad.Gravedad("abr", 2013).Rows.Count - 1
             If gravedad.Gravedad("abr", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAbr2013 = cargoAbr2013 + gravedad.Gravedad("jun", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("abr", 2013).Rows.Count - 1
             If gravedad.Gravedad("abr", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAbr2013 = diasperdidosAbr2013 + gravedad.Gravedad("abr", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAbr2013 = Math.Round((cargoAbr2013 + diasperdidosAbr2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         
         'Mayo 2013
         For i = 0 To gravedad.Gravedad("may", 2013).Rows.Count - 1
             If gravedad.Gravedad("may", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMay2013 = cargoMay2013 + gravedad.Gravedad("may", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("may", 2013).Rows.Count - 1
             If gravedad.Gravedad("may", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMay2013 = diasperdidosMay2013 + gravedad.Gravedad("may", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMay2013 = Math.Round((cargoMay2013 + diasperdidosMay2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Junio 2013
         For i = 0 To gravedad.Gravedad("jun", 2013).Rows.Count - 1
             If gravedad.Gravedad("jun", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2013 = cargojun2013 + gravedad.Gravedad("jun", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jun", 2013).Rows.Count - 1
             If gravedad.Gravedad("jun", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJun2013 = diasperdidosJun2013 + gravedad.Gravedad("jun", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajun2013 = Math.Round((cargojun2013 + diasperdidosJun2013) * 1000000 / (30 * 8 * cantTrabajadores))
         ' julio 2013
         
         For i = 0 To gravedad.Gravedad("jul", 2013).Rows.Count - 1
             If gravedad.Gravedad("jul", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2013 = cargojun2013 + gravedad.Gravedad("jul", 2012).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jul", 2013).Rows.Count - 1
             If gravedad.Gravedad("jul", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJul2013 = diasperdidosJul2013 + gravedad.Gravedad("jul", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajul2013 = Math.Round((cargojun2013 + diasperdidosJul2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Agosto 2013
         For i = 0 To gravedad.Gravedad("ago", 2013).Rows.Count - 1
             If gravedad.Gravedad("ago", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAgo2013 = cargoAgo2013 + gravedad.Gravedad("ago", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("ago", 2013).Rows.Count - 1
             If gravedad.Gravedad("ago", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAgo2013 = diasperdidosAgo2013 + gravedad.Gravedad("ago", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAgo2013 = Math.Round((cargoAgo2013 + diasperdidosAgo2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Septiembre 2013
         For i = 0 To gravedad.Gravedad("sep", 2013).Rows.Count - 1
             If gravedad.Gravedad("sep", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoSep2013 = cargoSep2013 + gravedad.Gravedad("sep", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("sep", 2013).Rows.Count - 1
             If gravedad.Gravedad("sep", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosSept2013 = diasperdidosSept2013 + gravedad.Gravedad("sep", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaSep2013 = Math.Round((cargoSep2013 + diasperdidosSept2013) * 1000000 / (30 * 8 * cantTrabajadores))
        
         ' Octubre 2013
         For i = 0 To gravedad.Gravedad("Oct", 2013).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoOct2013 = cargoOct2013 + gravedad.Gravedad("Oct", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Oct", 2013).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosOct2013 = diasperdidosOct2013 + gravedad.Gravedad("Oct", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaOct2013 = Math.Round((cargoOct2013 + diasperdidosOct2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Noviembre 2013
         For i = 0 To gravedad.Gravedad("Nov", 2013).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoNov2013 = cargoNov2013 + gravedad.Gravedad("Nov", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Nov", 2013).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosNov2013 = diasperdidosNov2013 + gravedad.Gravedad("Nov", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaNov2013 = Math.Round((cargoNov2013 + diasperdidosNov2013) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Diciembre 2013
         For i = 0 To gravedad.Gravedad("dic", 2013).Rows.Count - 1
             If gravedad.Gravedad("dic", 2013).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoDic2013 = cargoDic2013 + gravedad.Gravedad("dic", 2013).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("dic", 2013).Rows.Count - 1
             If gravedad.Gravedad("dic", 2013).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosDic2013 = diasperdidosDic2013 + gravedad.Gravedad("dic", 2013).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaDic2013 = Math.Round((cargoDic2013 + diasperdidosDic2013) * 1000000 / (30 * 8 * cantTrabajadores))
                     
         '__________________________________________________
       
         'Enero 2014
         For i = 0 To gravedad.Gravedad("Ene", 2014).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoEne2014 = cargoEne2014 + gravedad.Gravedad("Ene", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Ene", 2014).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosEne2014 = diasperdidosEne2014 + gravedad.Gravedad("Ene", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaEne2014 = Math.Round((cargoEne2014 + diasperdidosEne2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Febrero 2014
         For i = 0 To gravedad.Gravedad("Feb", 2014).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoFeb2014 = cargoFeb2014 + gravedad.Gravedad("Feb", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Feb", 2014).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosFeb2014 = diasperdidosFeb2014 + gravedad.Gravedad("Feb", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaFeb2014 = Math.Round((cargoFeb2014 + diasperdidosFeb2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Marzo 2014
         For i = 0 To gravedad.Gravedad("Mar", 2014).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMar2014 = cargoMar2014 + gravedad.Gravedad("Mar", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Mar", 2014).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMar2014 = diasperdidosMar2014 + gravedad.Gravedad("Mar", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMar2014 = Math.Round((cargoMar2014 + diasperdidosMar2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Abril 2014
         For i = 0 To gravedad.Gravedad("abr", 2014).Rows.Count - 1
             If gravedad.Gravedad("abr", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAbr2014 = cargoAbr2014 + gravedad.Gravedad("jun", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("abr", 2014).Rows.Count - 1
             If gravedad.Gravedad("abr", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAbr2014 = diasperdidosAbr2014 + gravedad.Gravedad("abr", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAbr2014 = Math.Round((cargoAbr2014 + diasperdidosAbr2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         
         'Mayo 2014
         For i = 0 To gravedad.Gravedad("may", 2014).Rows.Count - 1
             If gravedad.Gravedad("may", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMay2014 = cargoMay2014 + gravedad.Gravedad("may", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("may", 2014).Rows.Count - 1
             If gravedad.Gravedad("may", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMay2014 = diasperdidosMay2014 + gravedad.Gravedad("may", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMay2014 = Math.Round((cargoMay2014 + diasperdidosMay2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Junio 2014
         For i = 0 To gravedad.Gravedad("jun", 2014).Rows.Count - 1
             If gravedad.Gravedad("jun", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2014 = cargojun2014 + gravedad.Gravedad("jun", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jun", 2014).Rows.Count - 1
             If gravedad.Gravedad("jun", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJun2014 = diasperdidosJun2014 + gravedad.Gravedad("jun", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajun2014 = Math.Round((cargojun2014 + diasperdidosJun2014) * 1000000 / (30 * 8 * cantTrabajadores))
         ' julio 2014
         
         For i = 0 To gravedad.Gravedad("jul", 2014).Rows.Count - 1
             If gravedad.Gravedad("jul", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2014 = cargojun2014 + gravedad.Gravedad("jul", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jul", 2014).Rows.Count - 1
             If gravedad.Gravedad("jul", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosJul2014 = diasperdidosJul2014 + gravedad.Gravedad("jul", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajul2014 = Math.Round((cargojun2014 + diasperdidosJul2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Agosto 2014
         For i = 0 To gravedad.Gravedad("ago", 2014).Rows.Count - 1
             If gravedad.Gravedad("ago", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAgo2014 = cargoAgo2014 + gravedad.Gravedad("ago", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("ago", 2014).Rows.Count - 1
             If gravedad.Gravedad("ago", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAgo2014 = diasperdidosAgo2014 + gravedad.Gravedad("ago", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAgo2014 = Math.Round((cargoAgo2014 + diasperdidosAgo2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Septiembre 2014
         For i = 0 To gravedad.Gravedad("sep", 2014).Rows.Count - 1
             If gravedad.Gravedad("sep", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoSep2014 = cargoSep2014 + gravedad.Gravedad("sep", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("sep", 2014).Rows.Count - 1
             If gravedad.Gravedad("sep", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosSept2014 = diasperdidosSept2014 + gravedad.Gravedad("sep", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaSep2014 = Math.Round((cargoSep2014 + diasperdidosSept2014) * 1000000 / (30 * 8 * cantTrabajadores))
        
         ' Octubre 2014
         For i = 0 To gravedad.Gravedad("Oct", 2014).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoOct2014 = cargoOct2014 + gravedad.Gravedad("Oct", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Oct", 2014).Rows.Count - 1
             If gravedad.Gravedad("Oct", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosOct2014 = diasperdidosOct2014 + gravedad.Gravedad("Oct", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaOct2014 = Math.Round((cargoOct2014 + diasperdidosOct2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Noviembre 2014
         For i = 0 To gravedad.Gravedad("Nov", 2014).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoNov2014 = cargoNov2014 + gravedad.Gravedad("Nov", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Nov", 2014).Rows.Count - 1
             If gravedad.Gravedad("Nov", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosNov2014 = diasperdidosNov2014 + gravedad.Gravedad("Nov", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaNov2014 = Math.Round((cargoNov2014 + diasperdidosNov2014) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Diciembre 2014
         For i = 0 To gravedad.Gravedad("dic", 2014).Rows.Count - 1
             If gravedad.Gravedad("dic", 2014).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoDic2014 = cargoDic2014 + gravedad.Gravedad("dic", 2014).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("dic", 2014).Rows.Count - 1
             If gravedad.Gravedad("dic", 2014).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosDic2014 = diasperdidosDic2014 + gravedad.Gravedad("dic", 2014).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaDic2014 = Math.Round((cargoDic2014 + diasperdidosDic2014) * 1000000 / (30 * 8 * cantTrabajadores))
                     
         '__________________________________________________
         
         
         'Enero 2015
         For i = 0 To gravedad.Gravedad("Ene", 2015).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoEne2015 = cargoEne2015 + gravedad.Gravedad("Ene", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Ene", 2015).Rows.Count - 1
             If gravedad.Gravedad("Ene", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosEne2015 = diasperdidosEne2015 + gravedad.Gravedad("Ene", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaEne2015 = Math.Round((cargoEne2015 + diasperdidosEne2015) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Febrero 2015
         For i = 0 To gravedad.Gravedad("Feb", 2015).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoFeb2015 = cargoFeb2015 + gravedad.Gravedad("Feb", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Feb", 2015).Rows.Count - 1
             If gravedad.Gravedad("Feb", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosFeb2015 = diasperdidosFeb2015 + gravedad.Gravedad("Feb", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaFeb2015 = Math.Round((cargoFeb2015 + diasperdidosFeb2015) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Marzo 2015
         For i = 0 To gravedad.Gravedad("Mar", 2015).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMar2015 = cargoMar2015 + gravedad.Gravedad("jun", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("Mar", 2015).Rows.Count - 1
             If gravedad.Gravedad("Mar", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMar2015 = diasperdidosAbr2015 + gravedad.Gravedad("Mar", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMar2015 = Math.Round((cargoMar2015 + diasperdidosMar2015) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Abril 2015
         For i = 0 To gravedad.Gravedad("abr", 2015).Rows.Count - 1
             If gravedad.Gravedad("abr", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoAbr2015 = cargoAbr2015 + gravedad.Gravedad("jun", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("abr", 2015).Rows.Count - 1
             If gravedad.Gravedad("abr", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosAbr2015 = diasperdidosAbr2015 + gravedad.Gravedad("abr", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaAbr2015 = Math.Round((cargoAbr2015 + diasperdidosAbr2015) * 1000000 / (30 * 8 * cantTrabajadores))
         
         
         'Mayo 2015
         For i = 0 To gravedad.Gravedad("may", 2015).Rows.Count - 1
             If gravedad.Gravedad("may", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargoMay2015 = cargoMay2015 + gravedad.Gravedad("may", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("may", 2015).Rows.Count - 1
             If gravedad.Gravedad("may", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosMay2015 = diasperdidosMay2015 + gravedad.Gravedad("may", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasaMay2015 = Math.Round((cargoMay2015 + diasperdidosMay2015) * 1000000 / (30 * 8 * cantTrabajadores))
         
         'Junio 2015
         For i = 0 To gravedad.Gravedad("jun", 2015).Rows.Count - 1
             If gravedad.Gravedad("jun", 2015).Rows(i).Item(3).ToString = "" Then
             Else
                 cargojun2015 = cargojun2015 + gravedad.Gravedad("jun", 2015).Rows(i).Item(3).ToString
             End If
         Next
         For i = 0 To gravedad.Gravedad("jun", 2015).Rows.Count - 1
             If gravedad.Gravedad("jun", 2015).Rows(i).Item(2).ToString = "" Then
             Else
                 diasperdidosjun2015 = diasperdidosjun2015 + gravedad.Gravedad("jun", 2015).Rows(i).Item(2).ToString
             End If
         Next
         Dim tasajun2015 = Math.Round((cargojun2015 + diasperdidosjun2015) * 1000000 / (30 * 8 * cantTrabajadores))%>
    
         <%-- LLENAR EL GRAFICO! --%>



    <script type="text/javascript">
        $(function () {
            $('#container').highcharts({
                title: {
                    text: 'Cantidad de dias perdido por cada 1.000.000 de horas hombre trabajadas',
                    x: -20 //center
                },
              
                xAxis: {
                
                    categories: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                        'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
                }, min: 0,
                yAxis: { 
                    title: {
                        text: 'Indice de gravedad '
                    }, min: 0,
                    plotLines: [{
                       
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    valueSuffix: ' Cantidad de dias perdidos'
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle',
                    borderWidth: 0
                },
               
                series: [{
                    name: '2012',
                    data: [<%=tasaEne2012%>,
                       <%=tasaFeb2012%>,
                       <%=tasaMar2012%>,
                        <%=tasaAbr2012%>,
                        <%=tasaMay2012%>,
                       <%=tasajun2012%>,
                       <%=tasajul2012%>,
                        <%=tasaAgo2012%>,
                        <%=tasaSep2012%>,
                        <%=tasaOct2012%>,
                        <%=tasaNov2012%>,
                       <%=tasaDic2012%>]
                }, {
                    name: '2013',
                    data: [  <%=tasaEne2013%>,
                          <%=tasaFeb2013%>,
                          <%=tasaMar2013%>,
                         <%=tasaAbr2013%>,
                          <%=tasaMay2013%>,
                          <%=tasajun2013%>,
                          <%=tasajul2013%>,
                          <%=tasaAgo2013%>,
                          <%=tasaSep2013%>,
                          <%=tasaOct2013%>,
                          <%=tasaNov2013%>,
                          <%=tasaDic2013%>]
                }, {
                    name: '2014',
                    data: [  <%=tasaEne2014%>,
                          <%=tasaFeb2014%>,
                          <%=tasaMar2014%>,
                         <%=tasaAbr2014%>,
                          <%=tasaMay2014%>,
                          <%=tasajun2014%>,
                          <%=tasajul2014%>,
                          <%=tasaAgo2014%>,
                          <%=tasaSep2014%>,
                          <%=tasaOct2014%>,
                          <%=tasaNov2014%>,
                          <%=tasaDic2014%>]
                }, {
                    name: '2015',
                    data: [<%=tasaEne2015%>,
                          <%=tasaFeb2015%>,
                          <%=tasaMar2015%>,
                          <%=tasaAbr2015%>,
                          <%=tasaMay2015%>,
                          <%=tasajun2015%>
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
					 <h2 align="center">Tasa de gravedad</h2>
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

