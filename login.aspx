<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html runat="server">
 <head runat="server">
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Inicio session </title>
         <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css_login/demo.css" />
        <link rel="stylesheet" type="text/css" href="css_login/style.css" />
		<link rel="stylesheet" type="text/css" href="css_login/animate-custom.css" />

     
    <script type="text/javascript">
        function ValidarLogin(e) {
            var tecla = document.all ? tecla = e.keyCode : tecla = e.which;
            return ((tecla > 47 && tecla < 58) || tecla == 08 ||tecla>64 && tecla<91 || tecla==45 || tecla > 60 && tecla < 123);
        }
       </script>

       </head>
<body runat="server">
   <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
              
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                
				
            </header>
            <section>				
                <div id="container_demo" >
                 
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form runat="server"> 
                                <h1>INICIO SESION</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Ingrese Usuario </label>
                                    <asp:TextBox ID="usuario" runat="server" required="" placeholder="1111111-1"></asp:TextBox>
                                   
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Ingrese contraseña </label>
                                    <asp:TextBox ID="contraseña" runat="server" required="" placeholder="********" TextMode="Password" ></asp:TextBox>
                                    
                                </p>
                                
                                <p class="login button"> 
                                    <asp:Button ID="Button1"  runat="server" Text="Ingresar" />
                                   
								</p>
                                
                            </form>
                        </div>
                                              						
                    </div>
                </div>  
            </section>
        </div>

   

</body>
</html>
