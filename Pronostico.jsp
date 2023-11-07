<%-- 
    Document   : Pronostico
    Created on : 27 oct. 2023, 21:26:20
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
        <link rel="stylesheet" href="CSS/Pronostico.css">
        <link rel="icon" href="images/icons/iconoN.ico">


        <title>Pronostico</title>
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
            rs = smt.executeQuery("select * from pronostico");
        %>

    </head>
    <div class="containerU2 ">  
        <div class = "card0 col-sm-19">
            <div class="card-body">        
                <div class = "card1">
                    <br/>
                    <h1>ㅤCalendario Actual:</h1>

                    <div class="seleccionarM" id="month-selector">
                        <label for="month">Selecciona un mes: </label>
                        <select id="month" onchange="cambiarMes(this.value)"></select>
                    </div>

                    <div class="calendar">
                        <table>
                            <thead>
                                <tr>
                                    <th>Dom</th>
                                    <th>Lun</th>
                                    <th>Mar</th>
                                    <th>Mie</th>
                                    <th>Jue</th>
                                    <th>Vie</th>
                                    <th>Sab</th>

                                </tr>
                            </thead>
                            <tbody id="calendar-body"></tbody>
                        </table>
                    </div>
                    <form id="miFormulario">
                        <label for="fechaInput">ㅤㅤㅤ Fecha Seleccionada:</label>
                        <input class="field" type="text" id="fechaInput" readonly name="txtbuscar" >
                        <input class="btn1 btn-dark" type="submit" value="Encontrar Clima">
                    </form>
                </div>
                <script>
                    document.getElementById('miFormulario').onsubmit = function () {
                        var campoTexto = document.getElementById('fechaInput').value;
                        // Utilizamos una expresión regular para verificar si el campo de texto contiene letras
                        var contieneLetras = /[a-zA-Z]/.test(campoTexto);

                        if (!contieneLetras) {
                            alert("Debe de escoger una fecha");
                            return false; // Evita que el formulario se envíe
                        }
                    };
                </script>

                <%
                    String nombuscar = request.getParameter("txtbuscar");
                    if (nombuscar != null) {
                        smt = con.createStatement();
                        rs = smt.executeQuery("Select * from pronostico where dia LIKE" + "'%" + nombuscar + "%'");
                    }

                %>

                <div class = "card2">
                    <table class="table table-bordered table-fixed"  id="tablaDatos">

                        <tbody id="tbodys">
                            <%while (rs.next()) {
                            %>
                            <tr>
                        <h6 class="diasemana"><%= rs.getString("diasemana")%></h6>
                        <h6 class="fecha">‎<%= rs.getString("fecha")%></h6><br>

                        <div class="iconoC"><img src="<%= rs.getString("icono")%>" width="150" height="150"/></div>
                        <h1 class="temperatura"><%= rs.getString("temperatura")%></h1>  
                        <h3 class="subtemperatura"><%= rs.getString("subtemperatura")%></h3> <br>
                        <h6 class="descripcion"><%= rs.getString("descripcion")%></h6>
                        <br>
                        <h5 class="text1">Índice UV máx.</h5><h5 class="UV"><%= rs.getString("UV")%></h5>
                        <h5 class="text1">Vientos</h5><h5 class="vientos"><%= rs.getString("vientos")%></h5>
                        <h5 class="text1">Ráfagas de viento</h5><h5 class="rafagas"><%= rs.getString("rafagas")%></h5>
                        <h5 class="text1">Nubosidad</h5><h5 class="nubosidad"><%= rs.getString("nubosidad")%></h5>
                        <div class="humedad"><img src="images/1691521.png" width="40" height="40"/><h5 class="humedad1"> <%= rs.getString("humedad")%> </h5> </div>

                        </tr>

                    </table>
                </div>
                <div class = "card3">
                    <table class="table table-bordered table-fixed"  id="tablaDatos">

                        <tbody id="tbodys">

                            <tr>
                        <h6 class="diasemanaN"><%= rs.getString("diasemanaN")%></h6>
                        <h6 class="fechaN">‎<%= rs.getString("fechaN")%></h6><br>

                        <div class="iconoC"><img src="<%= rs.getString("icono2")%>" width="150" height="150"/></div>
                        <h1 class="temperaturaN"><%= rs.getString("temperaturaN")%></h1>  
                        <h3 class="subtemperatura"><%= rs.getString("subtemperaturaN")%></h3> <br>
                        <h6 class="descripcionN"><%= rs.getString("descripcionN")%></h6>
                        <br>

                        <h5 class="text1N">Vientos</h5><h5 class="vientosN"><%= rs.getString("vientosN")%></h5>
                        <h5 class="text1N">Ráfagas de viento</h5><h5 class="rafagasN"><%= rs.getString("rafagasN")%></h5>
                        <h5 class="text1N">Probabilidad de precipitación</h5><h5 class="precipitacion"><%= rs.getString("precipitacion")%></h5>
                        <h5 class="text1N">Nubosidad</h5><h5 class="nubosidadN"><%= rs.getString("nubosidadN")%></h5>

                        </tr>
                        <%}%>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        const monthSelect = document.getElementById('month');
        const fechaInput = document.getElementById('fechaInput');
        let selectedDate = null;

        // Función para crear el calendario
        function crearCalendario() {
            const calendarBody = document.getElementById('calendar-body');
            const fechaHoy = new Date();
            const year = fechaHoy.getFullYear();
            const month = parseInt(monthSelect.value) + 10; // Ajustamos el valor para obtener noviembre (10) y diciembre (11)
            const primerDia = new Date(year, month, 1);
            const ultimoDia = new Date(year, month + 1, 0);

            calendarBody.innerHTML = '';

            let currentDate = new Date(primerDia);
            const dayOfWeek = primerDia.getDay();
            let currentDay = 1; // Contador para los días

            for (let i = 0; i < 6; i++) { // 6 filas para cubrir todos los casos de inicio de mes
                const row = document.createElement('tr');
                for (let j = 0; j < 7; j++) {
                    const cell = document.createElement('td');
                    if (i === 0 && j < dayOfWeek) {
                        // Agregar celdas vacías para los días previos al primer día del mes
                        cell.textContent = "";
                    } else if (currentDay <= ultimoDia.getDate()) {
                        // Agregar los números de los días
                        cell.textContent = currentDay;
                        currentDay++;
                        cell.addEventListener('click', function () {
                            selectedDate = new Date(year, month, parseInt(cell.textContent));
                            updateInput();
                        });

                        // Resaltar el día de hoy
                        if (fechaHoy.getFullYear() === year && fechaHoy.getMonth() === month && parseInt(cell.textContent) === fechaHoy.getDate()) {
                            cell.classList.add('today');
                        }
                    }
                    row.appendChild(cell);
                }
                calendarBody.appendChild(row);
            }
        }

        // Función para actualizar el valor del input con la fecha seleccionada
        function updateInput() {
            if (selectedDate) {
                const options = {weekday: 'long', year: 'numeric', month: 'long', day: 'numeric'};
                const formattedDate = selectedDate.toLocaleDateString('es-ES', options);
                fechaInput.value = formattedDate;
            }
        }

        // Función para cambiar el mes
        function cambiarMes(newMonth) {
            selectedDate = null; // Limpiamos la fecha seleccionada al cambiar de mes
            crearCalendario();
        }

        // Rellenar el selector de mes con los nombres de los meses
        const nombresMeses = ["Noviembre", "Diciembre"];
        for (let i = 0; i < nombresMeses.length; i++) {
            const option = document.createElement('option');
            option.value = i;
            option.textContent = nombresMeses[i];
            monthSelect.appendChild(option);
        }

        // Establecer el mes actual como seleccionado
        const fechaHoy = new Date();
        const mesActual = fechaHoy.getMonth();
        if (mesActual >= 10) { // Noviembre y diciembre corresponden a los índices 10 y 11
            monthSelect.value = mesActual - 10; // Ajustamos el valor para el selector
        } else {
            monthSelect.value = 0; // Establecer noviembre como predeterminado si es un mes anterior a noviembre
        }

        crearCalendario(); // Crear el calendario al cargar la página
    </script>
    <footer class="pie">
        <div class="face"> <img src="images/icons/facebook.png" alt="60" width="60"/> </div>
        <div class="gor"> <img src="images/icons/gorjeo.png" alt="60" width="60"/> </div>
        <div class="derechos">
            <p>©Copyright 2023 ClimaWeb. Todos los derechos reservados</p>
            <p>Política de privacidad Términos y condiciones</p>

        </div>

    </footer>    
    <script src="https://kit.fontawesome.com/7c8801c017.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
