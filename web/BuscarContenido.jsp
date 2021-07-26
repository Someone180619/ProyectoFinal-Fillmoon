<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>
<%@page import="Entidad.Peliculas" %>
<%@include file="header.jsp" %>
<%@include file = "carousel.jsp" %>


    <hr class="border border-1 mt-0" >
    <div class="container-fluid mt-0 p-0 d-flex justify-content-center">
        <form action="mostrar_busqueda.jsp" class="input-group input-group-lg w-50">
            <input type="text" name ="contenido" class="form-control" placeholder="Buscar película o serie por título" aria-describedby="basic-addon1" id="buscar">
            <button type="submit" class="btn btn-dark input-group-text" id="buscar"><i class="bi bi-search"></i></button>
        </form>
    </div>
    <hr class="border border-2">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>