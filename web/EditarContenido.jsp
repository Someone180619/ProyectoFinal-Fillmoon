<%@include file="header.jsp" %>
<%
    int id_pelicula = Integer.parseInt(request.getParameter("id"));
%>

<div class="container-fluid row bg-light m-0 w-100">
    <h5 class="text-center fw-bold p-3" id="aton_text">Actualizar datos del contenido seleccionado</h5>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar nombre del contenido-->
            <label class="form-label fw-bold" id="roboto">Título</label>
            <input type="text" class="form-control" name="upt">
            <input type="hidden" class="form-control" value="1" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Actualizar</button>
        </form> 
    </div>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar poster del contenido-->
            <label class="form-label fw-bold" id="roboto">Poster</label>
            <input type="text" class="form-control" name="upt">
            <input type="hidden" class="form-control" value="2" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Enviar Cambio</button>
        </form>  
    </div>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actulizar categoría del contenido-->
            <label class="form-label fw-bold" id="roboto">Categoría</label>
            <select class="form-select" name="upt">
                <option selected>Seleccione</option>
                <option value="1">Acción</option>
                <option value="2">Romance</option>
                <option value="3">Comedia</option>
                <option value="4">Fantasía</option>
                <option value="5">Familia</option>
                <option value="6">Misterio</option>
            </select>
            <input type="hidden" class="form-control" value="6" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Actualizar</button>
        </form>  
    </div>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar backdrop del contenido-->
            <label class="form-label fw-bold" id="roboto">Backdrop</label>
            <input type="text" class="form-control" name="upt">
            <input type="hidden" class="form-control" value="3" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Enviar Cambio</button>
        </form>  
    </div>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar seccion del contenido-->
            <label class="form-label fw-bold" id="roboto">Sección</label>
            <select class="form-select" name="upt">
                <option selected>Seleccione</option>
                <option value="1">Películas</option>
                <option value="2">Series</option>
            </select>
            <input type="hidden" class="form-control" value="4" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Actualizar</button>
        </form>  
    </div>
    <div class="col-6 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar año de estreno de contenido-->
            <form action=""><!--Actualizar año de estreno del contenido-->
                <label class="form-label fw-bold" id="roboto">Año de Estreno</label>
                <input type="text" class="form-control">
                <input type="hidden" class="form-control" value="5" name="opt">
                <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
                <button type="submit" class="btn btn-dark fw-bold mt-2">Actualizar</button>
            </form>   
    </div>
    <div class="col-12 border border-3 p-3">
        <form action="Procesos/peliculas_series/Editar.jsp"><!--Actualizar descripción del contenido-->
            <label class="form-label fw-bold" id="roboto">Descripción</label>
            <textarea class="form-control" rows="3" name="upt"></textarea>
            <input type="hidden" class="form-control" value="7" name="opt">
            <input type="hidden" class="form-control" value="<%= id_pelicula%>" name="id">
            <button type="submit" class="btn btn-dark fw-bold mt-2">Actualizar</button>
        </form> 
    </div>
    <div class="mt-3 text-center">
        <p class="fw-bold text-dark m-0">Recordatorio</p>
        <p class="">Sea lo más cuidadoso y sensato posible al momento de realizar cada uno de los cambios.</p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>