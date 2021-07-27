<%@page import="Entidad.Peliculas"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp"%>

<%
    int usuario = (int)session.getAttribute("id_usuario");
    int seccion = Integer.parseInt(request.getParameter("seccion"));
    ProcesosPeliculasSeries cont = new ProcesosPeliculasSeries();
    List <Peliculas> contenido = cont.FiltrarFavoritos(usuario, seccion);
%>

<div class="container-fluid mt-2 mb-1">
    <ul class="nav">
        <li class="nav-item me-auto p-2 bd-highlight d-flex">
            <p class="fs-5 text-light" id="one">Sección seleccionada: </p>
            <p class="fs-5 fw-bold text-light" id="one">"
                <%if (contenido.size() != 0) { %>
                Los datos han sido cargados exitosamente
                <%} else {%>
                No hay contenido añadido actualmente en esta sección
                <%}%>"
            </p>
        </li>
        <li class="nav-item mx-5 p-0">
            <div>
                <a class="btn btn-dark nav-item" href="seccion_favoritos.jsp" ><i class="bi bi-filter"></i></a>
            </div>
        </li>
    </ul> 
</div>

<div class="container"><!--Aquí se generarán todas las películas pertenecientes a esta categoría-->
    <div class="row d-flex justify-content-start">
        <%for (Peliculas favoritos : contenido) {%>
        <div class="col-2 mb-2 mx-3 bg-gradient rounded-3 mt-0">
            <div class="container d-flex justify-content-end px-0 mt-1 mb-1 ms-1">
                <a href=""class="nav-link text-end fw-bold p-0 text-light" id="SPR"><i class="bi bi-badge-4k-fill"></i></a> 
            </div>
            <div class="mb-0" id="SPP">
                <a href="visualizar_contenido.jsp?id=<%= favoritos.getId()%>"><img class="mx-auto d-block img-fluid p-0" width="220" height="320" src="<%= favoritos.getPosters()%>" alt=""></a>
            </div>
            <div class="text-start text-light">
                <p class="fw-bold pb-0 mb-0" style="font-size: 80%;" id="one"><%= favoritos.getNombre()%></p>
                <p class="pt-0 mt-0 mb-1" style="font-size: 75%;" id="roboto"><%= favoritos.getEstreno()%></p>
            </div>
        </div>
        <%}%>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
