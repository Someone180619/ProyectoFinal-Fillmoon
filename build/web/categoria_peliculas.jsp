<%@page import="Entidad.Peliculas"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp"%>

<%
    int seccion = Integer.parseInt(request.getParameter("id_seccion"));
    int filtro = Integer.parseInt(request.getParameter("filtro"));
    String sc = "";
    if(seccion==1){
        sc = "peliculas";
    }else{
        sc = "series";
    }
    ProcesosPeliculasSeries pps = new ProcesosPeliculasSeries();
    List <Peliculas> peliculas = pps.FiltrarCategoria(filtro, seccion);
%>

<div class="container-fluid mt-2 mb-1">
    <ul class="nav">
        <li class="nav-item me-auto p-2 bd-highlight d-flex">
            <p class="fs-6 text-light" id="one">Categoría seleccionada: </p>
            <p class="fs-6 fw-bold text-light" id="one">"
                <%if (peliculas.size() != 0) {%>
                <%= peliculas.get(0).getCategoria()%>
                <%} else {%>
                Seccion actualmente vacia
                <%}%>"
            </p>
        </li>
        <li class="nav-item mx-5 p-0">
            <div>
                <a class="btn text-light bg-dark nav-item" href="seccion_<%= sc%>.jsp?id_seccion=<%= seccion%>" ><i class="bi bi-filter"></i></a>
            </div>
        </li>
    </ul> 
</div>

<div class="container"><!--Aquí se generarán todas las películas pertenecientes a esta categoría-->
    <div class="row d-flex justify-content-start">
        <%for (Peliculas pelicula : peliculas) {%>
        <div class="col-2 mb-2 mx-3 bg-gradient rounded-3 mt-0">
            <div class="container d-flex justify-content-end px-0 mt-1 mb-1 ms-1">
                <a class="nav-link text-end fw-bold p-0 text-light" id="SPR"><i class="bi bi-badge-4k-fill"></i></i></a> 
            </div>
            <div class="mb-0" id="SPP">
                <a href="visualizar_contenido.jsp?id=<%= pelicula.getId()%>"><img class="mx-auto d-block img-fluid p-0" width="220" height="320" src="<%= pelicula.getPosters()%>" alt=""></a>
            </div>
            <div class="text-start text-light">
                <p class="fw-bold pb-0 mb-0" style="font-size: 80%;" id="one"><%= pelicula.getNombre()%></p>
                <p class="pt-0 mt-0 mb-1" style="font-size: 75%;" id="roboto"><%= pelicula.getEstreno()%></p>
            </div>
        </div>
        <%}%>
    </div>
</div>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>