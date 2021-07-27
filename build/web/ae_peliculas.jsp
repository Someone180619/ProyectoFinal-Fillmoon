<%@page import="Ayudas.Errores" %>
<%@include file="header.jsp"%>

<%int codigo_error = (int) session.getAttribute("error");
    if (codigo_error == 2) {%>
<div class="alert alert-danger" role="alert">
    <h4 class="alert-heading">Error!</h4>
    <p> <%= new Errores(codigo_error).ErrorMessage()%> </p>
    <hr>
</div>
<%}%>
<div class="container bg-light mb-2 mt-2 rounded-3">
    <h2 class="text-center pt-4 fw-bold" id="aton_text">Añadir Contenido</h2>
    <form action="Procesos/peliculas_series/a_peliculas.jsp" class="container">
        <div class="mb-3">
            <label class="form-label fw-bold" id="roboto">Título</label>
            <input name="nombre_pelicula" type="text" class="form-control" placeholder="Título del contenido">
        </div>
        
        <label class="form-label fw-bold" id="roboto">Sección</label>
        <select class="form-select mb-3" name="id_seccion">
            <option selected>Open this select menu</option>
            <option value="1" >Películas</option>
            <option value="2">Series</option>
        </select>
        
        <label class="form-label fw-bold" id="roboto">Categoría</label>
        <select class="form-select mb-3" name="id_categoria">
            <option selected>Open this select menu</option>
            <option value="1" >Acción</option>
            <option value="2">Romance</option>
            <option value="3">Comedia</option>
            <option value="4">Fantasía</option>
            <option value="5">Familia</option>
            <option value="6">Misterio</option>
        </select>
        
        <div class="mb-3">
            <label class="form-label fw-bold" id="roboto">Poster</label>
            <input name="poster" type="text" class="form-control" placeholder="Dirección URL de la imagen">
        </div>
        
        <div class="mb-3">
            <label class="form-label fw-bold" id="roboto">Backdrop</label>
            <input name="backdrop" type="text" class="form-control" placeholder="Dirección URL de la imagen">
        </div>
        
        <div class="mb-3">
            <label class="form-label fw-bold" id="roboto">Estreno</label>
            <input name="estreno" type="text" class="form-control" placeholder="Año de estreno">
        </div>
        
        <div class="mb-3">
            <label class="form-label fw-bold"id="roboto">Descripción</label>
            <textarea name="descripcion" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        
        <input type="hidden" name="id_persona" value="<%= session.getAttribute("id_usuario")%>">
        <button type="button" class="btn btn-dark mb-3 fw-bold" data-bs-toggle="modal" data-bs-target="#activador" id="roboto">Añadir contenido</button>
        
        <!-- Modal -->
        
        <div class="modal fade" id="activador" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Subir Contenido</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ¿Esta seguro de querer añadir este contenido a la base de datos del sistema?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Añadir</button>
                    </div>
                </div>
            </div>
        </div>  
    </form>
</div>
        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>

