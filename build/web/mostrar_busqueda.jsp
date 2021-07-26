<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="Entidad.Peliculas" %>
<%@include file="header.jsp" %>
<%@include file = "carousel.jsp" %>

<%
    String nombre_contenido = request.getParameter("contenido");
    ProcesosPeliculasSeries ps = new ProcesosPeliculasSeries();
    Peliculas contenido = ps.BuscarContenido(nombre_contenido);
%>

    <%if(contenido != null){%>
    <div class="container m-4">
       <h4 class="fw-bold text-light" id="one">Coincidencia encontrada...</h4> 
    </div>
    <div class="d-flex justify-content-center">
        <div class="col-4 mb-2 mx-3 bg-gradient border border-1 rounded-3 mt-0 p-3">
            <div class="mb-0 mt-3" id="SPP">
                <a href="visualizar_contenido.jsp?id=<%= contenido.getId() %>"><img class="mx-auto d-block img-fluid p-0"  src="<%= contenido.getPosters() %>" alt=""></a>
            </div>
            <div class="text-start text-light">
                <p class="fw-bold pb-0 mb-0" style="font-size: 100%;" id="one"><%= contenido.getNombre() %></p>
            </div>
            <div class="text-light d-flex mt-2">
                <p class="pt-0 mt-0 mb-1" style="font-size: 80%;" id="roboto"><%= contenido.getEstreno() %></p>
                <p class="pt-0 mt-0 mb-1 ms-4 fw-bold text-danger" style="font-size: 80%;" id="roboto"><%= contenido.getCategoria() %></p>
            </div>
            <div class="text-start text-light mt-3 mb-2">
                <p class="pt-0 mt-0 mb-1 text-start  fw-bold" style="font-size: 90%;" id="one">Descripción</p>
                <p class="pt-0 mt-0 mb-1 text-start" style="font-size: 80%;" id="roboto"><%= contenido.getDescripcion() %></p>
            </div>
        </div>
    </div>
    <%}else{%>
    <div class="container m-4">
        <h4 class="fw-bold text-light" id="one">No encontramos coincidencias...</h4> 
    </div>
    <%}%>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

