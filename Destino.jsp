
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Clima.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <title>Buscar Clima</title>
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
        <div class="containerR">
            <div class="cardR">
                <div class="container-clock">
                    <div class="reloj"> <img src="images/icons/reloj.png" width="100px" height="100px"/></div>
                    <h1 class="hora" id="time">00:00:00</h1>
                    <h7  id="date">date</h7>
                </div>
            </div>
        </div>

        <div class="containerT mt-7 col-7">
            <div class="card">
                <div class="card-body">
                    <h1 class="h1"> Posibles Climas:</h1>
                    <h3 class="caluroso" > <img src="images/clear.png" width="80" height="80"/> Caluroso <h5 class="clima">(Clear Sky)</h5></h3>
                    <h3 class="lluvioso"> <img src="images/rain.png" width="80" height="80"/> Lluvioso <h5 class="clima1">(Light Rain)</h5></h3>
                    <h3 class="templado"> <img src="images/cloud.png" width="80" height="80"/>Templado</h3>
                    <h3 class="tormentoso"> <img src="images/snow.png" width="80" height="80"/> Tormentoso</h3>
                    <div class="contenedor1">

                        <img src="images/DiseñoC/palmera.png" class="iconos"width="45" height="45"/> <h6 class="h7">Protegerse del sol usando un <br>gorro o una sombrilla.</h6>
                    </div> 
                    <div class="contenedor2">

                        <img src="images/DiseñoC/short.png" class="iconos" width="45" height="45"/><h6 class="h7">Llevar ropa ligera para el viaje.<br>Recomendable</h6>
                    </div> 
                    <div class="contenedor3">

                        <img src="images/DiseñoC/lluvia.png" class="iconos"width="50" height="50"/><h6 class="h7">Tener paraguas y/o algo para<br>cubrirse de la lluvia.</h6>

                    </div> 
                    <div class="contenedor4">

                        <img src="images/DiseñoC/chaqueta.png" class="iconos"width="45" height="45"/> <h6 class="h7">Llevar abrido impermeable <br>para el viaje.</h6>
                    </div> 

                    <div class="contenedor5">
                        <img src="images/DiseñoC/ventoso.png"class="iconos" width="50" height="50"/> <h6 class="h7">Habrá viento pero relativamente <br>cálido.</h6>
                    </div>
                    <div class="contenedor6">

                        <img src="images/DiseñoC/empresario.png" class="iconos"width="50" height="50"/> <h6 class="h7">Ropa casual cualquier tipo.<br>Opcional</h6>
                    </div>
                    <div class="contenedor7">

                        <img src="images/DiseñoC/viento.png" class="iconos"width="45" height="45"/> <h6 class="h7">Clima tempestuoso estar precavido <br>de la estación.</h6>
                    </div>
                    <div class="contenedor8">

                        <img src="images/DiseñoC/ropadelluvia.png" class="iconos"width="50" height="50"/> <h6 class="h7">Llevar ropa de abrigo en adelante.<br>Muy recomendable</h6>
                    </div>



                </div>
            </div>
        </div>



        <div class="container">
            <div class="search-box">
                <i class="fa-solid fa-location-dot"></i>
                <input type="text" placeholder="Ingresa la ubicacion">
                <button class="fa-solid fa-magnifying-glass"></button>
            </div>

            <div class="not-found">
                <img src="images/404.png">
                <p>Oops! ubicacion invalida :/</p>
            </div>

            <div class="weather-box">
                <img src="">
                <p class="temperature"></p>
                <p class="description"></p>
            </div>

            <div class="weather-details">
                <div class="humidity">
                    <i class="fa-solid fa-water"></i>
                    <div class="text">
                        <span></span>
                        <p>Humedad</p>
                    </div>
                </div>
                <div class="wind">
                    <i class="fa-solid fa-wind"></i>
                    <div class="text">
                        <span></span>
                        <p>Velocidad del viento</p>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
        <script src="JS/index.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <footer class="pie">
            <div class="face"> <img src="images/icons/facebook.png" alt="60" width="60"/> </div>
            <div class="gor"> <img src="images/icons/gorjeo.png" alt="60" width="60"/> </div>
            <div class="derechos">
                <p>©Copyright 2023 ClimaWeb. Todos los derechos reservados</p>
                <p>Política de privacidad Términos y condiciones</p>

            </div>

        </footer>
        <script src="JS/clock.js"></script>
    </body>
</html>
