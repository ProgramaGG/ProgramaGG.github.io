<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Registrar.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <title>Climatología Web</title>
    </head>
    <body>
        <nav class="navbar navbar-light bg-dark fixed-top">
            <div class="container-fluid">
                <img src="images/icons/hogar.png" width="25" height="25"/> <a class="navbar-brand" href="index.jsp"> <h5 class="home">Home</h5></a>
                <a class="btn btn-primary btn-block" aria-current="page" href="Ingresar.jsp"><img src="images/icons/iniciar-sesion.png" width="25" height="25"/>  Iniciar Sesión</a>
            </div>

        </nav>
        <h5 class="p1"> Alguna vez has querido</h5>
        <h1 class="h1">¿VIAJAR A <br>ALGÚN LUGAR?</h1>
        <h4 class="p2"> Ahorra el tiempo buscando</h4>
        <h5 class="p3">Le brinda el control con el equipo de <br>soporte para respaldarlo, todo mientras <br>le ahorra miles de horas buscando. <br>Vea cómo puede beneficiarse:<br><br>◦ Brindar inforamción sobre el clima<br>‎ ‎ de diferentes ciudades y países.</h5>
        <h5 class="p4"> ○hola</h5>
        <div class ="container mt-5 col-lg-3">
            <div class = "card col-sm-10">
                <div class="card-body">        
                    <div class="form-group ">
                        <h8 class="h8"> Completar el registro para</h8>
                        <h4 class="h4">PODER INGRESAR</h4>
                        <br>
                        <form action="AgUsu" method="POST">
                            <div class="nombre">       
                                <input type="text" name="nombre" placeholder="Nombre" class="form-control"/> 
                            </div>  
                            <br/>
                            <div class="pass"> 
                                <input type="password" name="pass" placeholder="Password" class="form-control"/> 
                            </div> 
                            <br/>
                            <div class="correo"> 
                                <input type="text" name="correo" placeholder="Correo Electronico" class="form-control"/> 
                            </div> 
                            <br/>
                            <div class="celular"> 
                                <input type="text" name="celular" placeholder="Celular" class="form-control"/> 
                            </div> 
                            <br/>
                            <div class="dni"> 
                                <input type="text" name="dni" placeholder="DNI" class="form-control"/> 
                            </div> 

                            <br>
                            <h9 class="h9"><input type="checkbox"> Acepto los terminos y condiciones</h9>
                            <br>
                            <br>
                            <button type="submit" value="Registrarse" class="btn1 btn-dark btn-block" />Registrar</button>
                            
                              
                            </script>



                        </form>
                    </div>          
                </div>
                <br>

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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script src="JS/sweetAlert.js"></script>
        <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
        <script src="index.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>

