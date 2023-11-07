<%-- 
    Document   : Inicio
    Created on : 13 oct. 2023, 11:41:19
    Author     : Gonzalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Inicio2.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Climatología Web</title>
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

        <div class="negro1"></div> 
        <header>
            <div class="overlay"></div>

            <div class="absolute">
                <div class="planeta"><img src="images/icons/clima.png" width="300px" height="300px"/></div>
                <h1 class="h1">Aplicación<br> Web acerca<br> del clima</h1>
            </div>
            <div class="blanco"></div>
            <video muted autoplay loop >
                <source src="Video/sunrise.mp4" type="video/mp4" >
            </video>

        </header>
        <h6 class="periodicos1">- Imformación de lo que hay en el periodico<br/> sobre el clima que podrás encontrar.<br/><br/>- Buscar y sugerir información actualizada<br/>sobre el clima en periódicos.</h6>
        <h6 class="revistas1">- Imformación de lo que hay en las revistas<br/> sobre el clima que podrás encontrar.<br/><br/>- Buscar y sugerir información actualizada<br/> sobre el clima en revistas.</h6>
        <h6 class="articulos1">- Imformación de lo que hay en los articulos<br/> sobre el clima que podrás encontrar.<br/><br/>- Buscar y sugerir información actualizada<br/> sobre el clima en artículos.</h6>
        <div class="slider">
            <li>
                <input type="radio" id="sbuton1" name="sradio" checked>
                <label for="sbuton1"></label>
                <img src="images/templado.jpg" alt="alt"/>
            </li>
            <li>
                <input type="radio" id="sbuton2" name="sradio">
                <label for="sbuton2"></label>
                <img src="images/verano.jpg" alt="alt"/>
            </li>
            <li>
                <input type="radio" id="sbuton3" name="sradio">
                <label for="sbuton3"></label>
                <img src="images/lluvioso.jpg" alt="alt"/>
            </li>
            <li>
                <input type="radio" id="sbuton4" name="sradio">
                <label for="sbuton4"></label>
                <img src="images/finlandia.jpg" alt="alt"/>
            </li>
        </div>  

        <div class="wave" style="height: 150px ; overflow: hidden;"><svg viewBox="0 0 500 150" preserveAspectRatio="none"
                                                                         style="height: 100%; width: 100%;">
            <path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L505.92,437.67 L-4.79,419.91 Z"
                  style="stroke: none; fill: #06283D;"></path>
            </svg></div>
        <h3 class="revistas"><img src="images/icons/revista.png" alt="90" width="90"/> Revistas</h3> 
        <h3 class="articulos"><img src="images/icons/articulo.png" alt="90" width="90"/> Artículos</h3> 
        <h3 class="periodicos"> <img src="images/icons/periodico.png" alt="90" width="90"/> Periódicos</h3> 

        <div class="blanco1"></div> 

        <div class="gris">
            <h5 class="texto1"> Pueden comunicarse con<br/> nosotros a través de los canales<br/> de contacto que ponemos a su<br/> disposición, ya sea por teléfono,<br/> correo electrónico o a través de<br/> nuestro sitio web. Nuestro <br/>equipo está listo para ayudarles<br/> en todo momento.</h5><br/>
            <h5 class="contactanos">Contactanos <img src="images/icons/flecha.png" alt="20" width="20"/></h5>

            <div class="linea1"></div>
            <h5 class="texto2"> Queremos recordarles que <br/>estamos aquí para servirles en <br/> todo momento. Si en algún <br/> momento requieren información,<br/>asistencia o tienen preguntas, <br/> no duden en ponerse en  <br/>contacto con nosotros. Nuestra<br/> puerta está siempre abierta para<br/>atender sus necesidades y <br/>proporcionar respuestas a sus<br/>inquietudes.</h5>
            <h5 class="contactanos1">Contactanos <img src="images/icons/flecha.png" alt="20" width="20"/></h5>
            <div class="linea2"></div>
            <h5 class="texto3"> Estamos comprometidos en  <br/>brindarles el mejor servicio  <br/> posible, y su retroalimentación <br/> es fundamental para lograrlo. Ya<br/>sea que deseen obtener <br/> información adicional, resolver <br/>dudas o compartir comentarios,<br/> estaremos encantados de <br/>escucharlos y responder a sus  <br/>solicitudes de la manera más <br/>eficaz y oportuna.</h5>
            <h5 class="contactanos2">Contactanos <img src="images/icons/flecha.png" alt="20" width="20"/></h5>
            <div class="linea3"></div>
        </div>

        <div class="id">
            <div class="container">
                <div class="row">        
                    <div class=" vaya3 col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Wladimir Quispe</h5>
                                                <h6 class="card-subtitle">‎Documentalista<br/>‎ <br/>‎ (Project Documenter)</h6>
                                                <img src="images/perfiles/coloso.png"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">Encargado de mantener una <br/> documentación completa y <br/> organizada del proyecto.  <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                     <div class=" vaya2 col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Sebastian Cáceres</h5>
                                                <h6 class="card-subtitle">‎  Diseñador Interfaz<br/>‎ <br/>‎(UI Designer)</h6>
                                                <img src="images/perfiles/spiderB.jpg"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">El diseñador de UI se enfoca en la <br/> estética visual de la aplicación. <br/> Diseña los elementos gráficos.  <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                    
                     <div class="col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Gonzalo Falcón</h5>
                                                <h6 class="card-subtitle">‎  Desarrollador Front-End<br/>‎  Desarrollador Back-End</h6>
                                                <img src="images/perfiles/soldierboy.jpg"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">Este miembro del equipo se enfoca<br/> en la interfaz de usuario y la<br/> experiencia del usuario.  <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                    <div class=" vaya4 col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Hipolito Delgado</h5>
                                                <h6 class="card-subtitle">‎ Documentalista<br/>‎(Project Documenter)</h6>
                                                <img src="images/perfiles/yukio.png"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">Contribuí con la búsqueda del tema,<br/> brindando información para la <br/> estructura y contenido de la página.  <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                    <div class=" vaya5 col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Juan La.Rosa</h5>
                                                <h6 class="card-subtitle">‎Gestor  <br/>‎(Project Manager)</h6>
                                                <img src="images/perfiles/deadpool.jpg"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">El gestor de proyecto supervisa la <br/> planificación, coordinación y <br/> ejecución del proyecto. <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                    <div class=" vaya6 col-md-4">
                        <main>
                            <div class="container">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 g-1">
                                    <div class="col">
                                        <div class="card">
                                            <br>
                                            <div class="imagenP">
                                                <h5 class="card-title">Yair Granados</h5>
                                                <h6 class="card-subtitle">‎  Content Creator<br/>‎  </h6>
                                                <img src="images/perfiles/ironman.jpg"  width="140" height="206">
                                            </div>
                                            <div class="card-body">
                                                <div class="lineaN"></div><br/>
                                                <h6></h6> <p class="card-text">Se centra en crear y mantener <br/> documentación técnica, como <br/> manuales de usuario.  <p><br/>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>         
                        </main>

                    </div>
                </div>
            </div>
        </div>


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
