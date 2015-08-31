<%@ Page Title="" Language="VB" MasterPageFile="~/JefeFaena/MasterPage.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Supervisor_Default" %>

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
     
</head>
<body>
   
    <br />
  <section id="contact" class="home-section bg-white">
	  	<div class="container">
			  <div class="row">
				  <div class="col-md-offset-2 col-md-8">
					<div class="section-heading">
					 <h2 align="center">Panel del jefe de faena</h2>
					</div>
				  </div>
			  </div>
              <br />
	  		<div class="row">
	  			<div class="col-md-offset-1 col-md-10">

				<form class="form-horizontal" role="form" runat="server">
                    
                  	  <div class="form-group">
					<div class="col-md-offset-2 col-md-8">
                        Bienvenido al panel del jefe de faena, donde podrá registrar los accidentes y cuasi accidentes ocurridos en la empresa.<br />       <br /> 
                                       
				  </div> </div>
                  
				                  

               				</form>
		  			</div>
	  		</div>
	  	</div>
	  </section>  
</body>
</html>
    
</asp:Content>

