<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/styles.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Contactos</title>
    </head>
    <body>
        <nav class="navbar navbar-light bg-dark fixed-top">
            <div class="container-fluid">
                <li class="nav-itemb">
                    <img src="images/icons/hogar.png" width="30" height="30"/> 
                    <a class="navbar-brand" href="Inicio.jsp"> <h5 class="h500">Home</h5></a>
                </li>
                <li class="nav-itemb1">
                    <img src="images/icons/dia-nublado.png" width="30" height="30"/>
                    <a class="navbar-brand" href="Destino.jsp"><h6 class="h510"> Buscar Clima</h6></a>
                </li>
                <li class="nav-itemb2">
                    <img src="images/icons/sugerencia.png" width="25" height="25"/> 
                    <a class="navbar-brand"  href="Sugerencias.jsp?txtbuscar=Perú"><h6 class="h520">Sugerencias</h6></a>
                </li>
                <li class="nav-itemb4">
                    <img src="images/icons/contacto.png" width="25" height="25"/> 
                    <a class="navbar-brand"  href="contacto.jsp"><h6 class="h520">Contactos</h6></a>
                </li>
                <li class="nav-itemb3">
                    <img src="images/icons/saludos.png" width="25" height="25"/> 
                    <a class="navbar-brand" href="Pronostico.jsp?txtbuscar=miércoles%2C+1+de+noviembre+de+2023"><h6 class="h520"> ¡Pronóstico!</h6></a>

                </li>
                <div class="tablausu"><img src="images/icons/tablausu.png" width="35" height="35"/></div><div class="form-group text-center">  <a class="form_link"> <h7 class="nom">${correo}</h7></a> </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">


                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">HOME</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <div class="perfil">
                                    <img src="images/icons/perfil.png" width="200" height="200"/>
                                </div>
                            <h7 class="register">REGISTRADO</h7>

                            <h3>-------------------------------</h3>
                            <h5><img src="images/icons/garrapata.png" width="20" height="20"/> USUARIO:</h5><h6> <a>${nombre}</a></h6>
                            <h5><img src="images/icons/garrapata.png" width="20" height="20"/> CORREO:</h5><h6> <a>${correo}</a></h6>
                            </li>
                            <h3>-------------------------------</h3>
                            <li class="nav-item">
                                <a class="nav-link" href="Destino.jsp">Buscar clima del lugar</a>
                                <a class="nav-link" href="https://www.google.com/maps/@-12.1503744,-76.9687552,12z?authuser=0&entry=ttu">GoogleMaps</a>
                                <br>
                                <a  class="btn btn-danger btn-block" href="index.jsp" />  <img src="images/icons/cerrar-sesion.png" width="25" height="25"/> Cerrar Sesión</a>
                            </li>

                        </ul>

                    </div>
                </div>
            </div>
        </nav>
        <section class="contact">          
            <div class="contactForm">

                <div class="container-2">
                    <h2 style="font-size:40px; padding: 0px 10px" > Contáctanos</h2>
                </div>
                <div class="content"> 
                    <h3 style=font-size:20px> Gracias por confiar en nosotros y permitirnos<br/> servirles. Esperamos poder asistirles en todas<br/> sus necesidades.<h3>                         
                            </div>   
                            <div class="container">
                                <div class="estrella"><img src="images/paisaje2.png" alt="paisaje"/></div>
                                <form action="https://formsubmit.co/ffalcon9@autonoma.edu.pe" method="POST">                   
                                    <p class="p">Nombre</p> 
                                    <div class="inputbox">
                                        <input type="text" name="Nombre" placeholder=" Nombre " required=" required">                           
                                    </div>
                                    <p class="p">Email*</p>
                                    <div class="inputbox">
                                        <input type="text" name="Correo" placeholder=" Email " required=" required">

                                    </div>
                                    <p class="p">Mensaje</p>
                                    <div class="inputbox">
                                        <textarea required="required" name="Mensaje"placeholder= " Mensaje"></textarea>

                                    </div>
                                    <div class="inputbox">
                                        <input type="submit" name="" value="Enviar Mensaje">

                                    </div>
                                    <input type="hidden" name="_next" value="http://127.0.0.1:5500/">
                                    <input type="hidden" name="_captcha" value="false">
                                </form>
                            </div>

                            </div>
                            </section>
                            <footer class="pie">
                                <div class="face"> <img src="images/icons/facebook.png" alt="60" width="60"/> </div>
                                <div class="gor"> <img src="images/icons/gorjeo.png" alt="60" width="60"/> </div>
                                <div class="derechos">
                                    <p>©Copyright 2023 ClimaWeb. Todos los derechos reservados</p>
                                    <p>Política de privacidad Términos y condiciones</p>
                                </div>
                            </footer> 
                            <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
                            <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
                            <script src="JS/script.js"></script>
                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
                            </body>
                            </html>
