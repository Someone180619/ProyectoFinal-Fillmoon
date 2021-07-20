<%
    if (session.getAttribute("error") == null){
        session.setAttribute("error", 0);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/Styles_Header_Footer.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/comments.css"/>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/fe0dda9e61.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    </head>
<body style="background-color: #150129">
    
    <!-- Header BootStrap -->
    
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light p-3 bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand fw-bold fs-3" href="#" id="logo">Fillmoon</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav m-auto" id="texto-central">
                    <%
                        if(session.getAttribute("id_usuario")==null){
                    %>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light disabled" aria-current="page" href="#" id="activo">Inicio</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light disabled" href="#">Pelicula</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light disabled" href="#">Series</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light disabled" href="#">Favoritos</a>
                    </li>
                    <%}else{%>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light" aria-current="page" href="#" id="activo">Inicio</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light" href="#">Pelicula</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light" href="#">Series</a>
                    </li>
                    <li class="nav-item ps-3 pe-3">
                        <a class="nav-link text-light" href="#">Favoritos</a>
                    </li>
                    <%}%>
                </ul>
                <%
                    if (session.getAttribute("id_usuario")!= null){
                %>
                <ul class="navbar-nav me-4">
                    <li class="nav-item fs-4">
                        <a class="nav-link text-light" href="#"><i class="bi bi-search"></i></a>
                    </li>       
                </ul>
                <%}%>
                
                <!-- Registrarse o Usuario -->
                <%
                    if (session.getAttribute("id_usuario")==null){
                %>
                <ul class="navbar-nav me-5 mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">
                            Registrarse
                        </a>
                    </li>
                </ul>
                <%}else{%>
                <ul class="navbar-nav me-5 mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Usuario
                        </a>
                        <ul class="dropdown-menu me-3 rounded-0" aria-labelledby="navbarDropdown">
                            <li><p class="nav-item text-center">Nombre de la cuenta</p></li>
                            <li>
                                <ul class="nav-item" id="profile-img">
                                    <li class="nav-item">
                                        <img src="http://s4.thingpic.com/images/s4/eJUVBCxdW6z47vVFBEgAQkTz.jpeg" alt="" width="140" height="140" class="border border-3 border-dark rounded-pill" id="profile-img">
                                    </li> 
                                </ul>
                            </li>
                            <li><a class="dropdown-item p-2 mt-2" href="#"><i class="bi bi-gear-fill"></i> Configuración</a></li>
                            <li><a class="dropdown-item p-2" href="#"><i class="bi bi-info-circle-fill"></i> Ayuda y soporte técnico</a></li>
                            <li><a class="dropdown-item p-2 mb-2" href="#"><i class="bi bi-telephone-fill"></i> Contáctenos</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item mt-2 ps-2" href="#"><i class="bi bi-arrow-left-square-fill"></i> Salir</a></li>
                        </ul>
                    </li>
                </ul>
                <%}%>
                <!-- Iniciar Sesión o Mis amigos -->
                <%
                    if (session.getAttribute("id_usuario")==null){
                %>
                <ul class="navbar-nav me-5 mb-2 mb-lg-0">
                    <li class="nav-item" id="id_usuario_null">
                        <a class="nav-link text-light" href="#">
                            Iniciar sesión
                        </a>
                    </li>
                </ul>
                <%}else{%>
                <ul class="navbar-nav me-4 mb-2 mb-lg-0">
                    <li class="nav-item dropdown me-3">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Mis amigos
                        </a>
                        <ul class="dropdown-menu rounded-0" aria-labelledby="navbarDropdown">
                            <li><p class="nav-item text-center p-0 m-0 fw-bold">Buscar</p></li>
                            <li>
                                <form action="#">
                                    <div class="input-group-sm input-group mb-1 mt-1 w-30">
                                        <button class="input-group-text" id="inputGroup-sizing-sm" type="submit"><i class="bi bi-search"></i></button>
                                        <input type="text" class="form-control" placeholder="buscar" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                                    </div>
                                </form>
                            </li>
                            <li><a class="dropdown-item m-0 p-2" href="#"><i class="bi bi-person-plus-fill"></i> Agregar personas</a></li>
                            <li><a class="dropdown-item m-0 p-2" href="#"><i class="bi bi-people-fill"></i> Conocer personas</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><p class="nav-item text-center p-0 m-0 fw-bold">Amigos</p></li>
                            <li><p class="nav-item m-2">Conectados (0)</p></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item m-0 p-2" href="#">Ver amigos</a></li>
                        </ul>
                    </li>
                </ul>
                <%}%>
              </div>
            </div>
        </nav>
    </header>