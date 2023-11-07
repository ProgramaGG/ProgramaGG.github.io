<%@page import="Conexiones.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Ingresar.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <title>Clima Despejado</title>
    </head>
    <body>
        <nav class="navbar navbar-light bg-dark fixed-top">
            <div class="container-fluid">
                <img src="images/icons/hogar.png" width="25" height="25"/> <a class="navbar-brand" href="index.jsp"> <h5 class="home">Home</h5></a>
            </div>
        </nav>
        <header>

            <video muted autoplay loop>
                <source src="Video/mywallpaperpersonal2021.mp4" type="video/mp4" >

            </video>
        </header>
        <div class ="container mt-5 col-lg-3">
            <div class = "card col-sm-10">
                <div class="card-body">        
                    <div class="form-group text-center">
                        <br>
                        <h3 class="h3">Inicia Sesión</h3>

                        <img src="images/icons/nube.png" alt="70" width="170"/>
                        <div class="form-group text-center">¿Aún no tienes cuenta? <a href="Registrar.jsp" class="form_link">Entra aquí</a> </div>
                        <br>
                        <form id="miFormulario" action="Ingresar" method="POST">
                            <div class="form-group">
                                <img src="images/icons/usuario.png" alt="18" width="18" class="iconos"/>  <div class="letra"> USER:</div>
                                <br>
                                <input id="text"  type="text" name="user" placeholder="Usuario" class="form-control"/> 
                            </div> 
                            <br>
                            <div class="form-group">
                                <img src="images/icons/correo.png" alt="18" width="18" class="iconos2"/>  <div class="letra"> GMAIL:</div>
                                <br>
                                <input id="text"  type="text" name="correo" placeholder="Correo" class="form-control"/> 
                            </div> 
                            <br>

                            <div class="form-group">
                                <div class="iconos1"> <img src="images/icons/candado.png" alt="20" width="20"/> </div> <div class="letra">  PASSWORD:</div>
                                <br>
                                <input id="text" type="password" name="pass"  placeholder="Contraseña" class="form-control"/>

                            </div>
                            <br>
                            <p><%if (login.loginError) {%>
                                <%="Usuario no registrado"%>
                                <%}%></p>
                            <div class="terminos"> <input type="checkbox"> Acepto,</div>


                            <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalToggleLabel">POLÍTICA DE PRIVACIDAD</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body ">
                                            <p>El presente Política de Privacidad establece los términos en que Clima Web usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios</p>
                                            <h5>INFORMACIÓN RECOGIDA</h5>
                                            <P>Nuestro sitio web podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido o realizar una entrega o facturación.</P>
                                            <h5>USO DE LA INFORMACIÓN RECOGIDA</h5>
                                            <P>Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios.  Es posible que sean enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas especiales, nuevos productos y otra información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento.
                                                Clima Web está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado. </P>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="checkbox">Leído y aceptado
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="terminos1">
                                <a class="form_link" data-bs-toggle="modal" href="#exampleModalToggle" role="button">terminos y condiciones</a>.
                            </div>
                            <br>
                            <br>
                            <input type="submit" value="Ingresar" class="btn btn-dark btn-block"/>

                        </form>
                        <br>
                        <script>
                            document.getElementById('miFormulario').onsubmit = function () {
                                var campoTexto = document.getElementById('text').value;
                                // Utilizamos una expresión regular para verificar si el campo de texto contiene letras
                                var contieneLetras = /[a-zA-Z]/.test(campoTexto);

                                if (!contieneLetras) {
                                    alert("No a ingresado ninguna cuenta registrada");
                                    return false; // Evita que el formulario se envíe
                                }
                            };
                        </script>
                    </div>          
                </div>
                <br>
            </div>
        </div> 



        <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
        <script src="index.jsp"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <footer class="pie">
            <div class="face"> <img src="images/icons/facebook.png" alt="60" width="60"/> </div>
            <div class="gor"> <img src="images/icons/gorjeo.png" alt="60" width="60"/> </div>
            <div class="derechos">
                <p>©Copyright 2023 ClimaWeb. Todos los derechos reservados</p>
                <p>Política de privacidad Términos y condiciones</p>

            </div>

        </footer>
    </body>


</html>
