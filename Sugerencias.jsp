<%-- 
    Document   : Sugerencias
    Created on : 22 oct. 2023, 13:40:16
    Author     : Gonzalo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Sugerencias.css">
        <link rel="icon" href="images/icons/iconoN.ico">
        <script src="JS/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="JS/jquery.dd.min.js" type="text/javascript"></script>
        <title>Sugerencias</title>
    </head>
    <body>
        <script lenguage="javascript">
            $(function () {
                try {
                    $("body select").msDropDown();
                } catch (e) {
                    alert(e.message);
                }
            });
        </script>
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
                <div class="tablausu"><img src="images/icons/tablausu.png" width="35" height="35"/></div><div class="form-group1 text-center">  <a class="form_link"> <h7 class="nom">${correo}</h7></a> </div>
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
        <%
            Connection con;
            String url = "jdbc:mysql://localhost:3306/clima";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            rs = smt.executeQuery("select * from lugares");
        %>


        <div class="containerU2 mt-10 col-lg-9">  

            <div class = "card col-sm-23">
                <div class="card-body">        
                    <div class="form-group "> 
                        <div class="card1"> <h2>‎ Sugerencias de climas en países:</h2> </div>
                        <div class="buscar" >
                            <form class="form" id="form">
                                <select id="txtbuscar" class="select" type="text" name="txtbuscar" style="right: 5px; width: 210px;" >
                                    <option data-image='images/paises/en-todo-el-mundo.png' disabled selected="" value=""> -Seleccione un país-</option> 
                                    <option data-image='images/paises/bandera-peru.png'> Perú</option> 
                                    <option data-image='images/paises/bandera-nzelanda.png'>Nueva Zelanda</option> 
                                    <option data-image='images/paises/bandera-spain.png'> España</option> 
                                    <option data-image='images/paises/bandera-francia.png'> Francia</option> 
                                    <option data-image='images/paises/bandera-mexico.png'> México</option> 
                                    <option data-image='images/paises/bandera-colombia.png'> Colombia</option> 
                                    <option data-image='images/paises/bandera-argentina.png'> Argentina</option> 
                                    <option data-image='images/paises/bandera-ecuador.png'> Ecuador</option> 
                                </select>
                                ㅤ<input class="btn btn-dark" type="submit" value="Buscar" >
                            </form>


                            <script>
                                document.getElementById('form').onsubmit = function () {
                                    var miSelect = document.getElementById('txtbuscar');
                                    var selectedOption = miSelect.options[miSelect.selectedIndex];

                                    if (selectedOption.value === '') {
                                        alert("Debes seleccionar una país");
                                        return false; // Evita que el formulario se envíe
                                    }
                                };
                            </script>
                            
                            <%
                                String nombuscar = request.getParameter("txtbuscar");
                                if (nombuscar != null) {
                                    smt = con.createStatement();
                                    rs = smt.executeQuery("Select * from lugares where pais LIKE" + "'%" + nombuscar + "%'");
                                }

                            %>
                        </div>


                        <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
                        <table class="table table-bordered table-fixed"  id="tablaDatos">

                            <tbody id="tbodys">
                                <%while (rs.next()) {
                                %>
                                <tr>
                                    ‎<div class="card3">  <h5 class="h51">‎<%= rs.getString("descripcion1")%></h5><br/><img src="<%= rs.getString("ruta1")%>" width="417" height="500"></div>
                            <div class="card4">  <h5 class="h52">‎<%= rs.getString("descripcion2")%></h5><br/><img src="<%= rs.getString("ruta2")%>" width="417" height="500"></div>           
                            <h2>‎ ‎ ‎  <%= rs.getString("pais")%> - <%= rs.getString("capital")%></h2> 
                            <img src="<%= rs.getString("ruta")%>" width="620" height="400">
                            <br/><br/><div class="card2"> <h5 class="h5">‎<%= rs.getString("descripción")%></h5></div><br/><br/>
                            <h2 class="h21">Lugares para visitar:</h2>        
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>

            </div> 
            <br>      
        </div>








        <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
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
