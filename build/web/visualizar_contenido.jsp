<%@page import="Entidad.Peliculas" %>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>
<%@include file="header.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    int usuario = (int)(session.getAttribute("id_usuario"));
    ProcesosPeliculasSeries peliseriesDb = new ProcesosPeliculasSeries();
    Peliculas cont = peliseriesDb.ContenidoSeleccionado(id);
    int favorito = peliseriesDb.ValidadFavorito(usuario, id);
%>

<div class="container-fluid">
    <div class="row border" id="VCC">
        <div class="col-12 danger p-0" id="VCB">
            <img src="<%= cont.getBackdrops()%>" class="img-fluid d-block" alt="">
            <div class="container-fluid">
            </div>
        </div>
    </div>
    <hr class="m-3">
    <div class="container-fluid row mt-1">
        <div class="col-3 p-0 border" id="VCC">
            <img src="<%= cont.getPosters()%>" class="img-fluid" alt="" id="img">
        </div>
        <div class="col-9 border rounded-end bg-gradient" id="VCC">
            <div class="container-fluid p-0">
                <h2 class="m-1 fw-bold" id="ABP">Título</h2>
                <h5 class="text-light ms-5 fw-bold" id="roboto"><%= cont.getNombre()%></h5>
            </div>
            <div class="container-fluid p-0">
                <h2 class="m-1 fw-bold" id="ABP">Estreno</h2>
                <h5 class="text-light fw-bold ms-5" id="roboto"><%= cont.getEstreno()%></h5>
            </div>
            <div class="container-fluid p-0 mb-4">
                <h2 class="m-1 fw-bold" id="ABP">Descripcion</h2>
                <p class="text-light fw-bold ms-5" id="roboto"><%= cont.getDescripcion()%></p>
            </div>
            <hr class="border-light border">
            <div class="container-fluid p-0 mt-2">
                <h2 class="m-1 fw-bold" id="ABP">Visualización</h2>
                <div class="container-fluid d-flex mt-2 mb-4">
                    <form action="reproductor.jsp">
                        <button type="submit" class="btn bg-dark fw-bold text-light p-2 m-2" id="repro"><i class="bi bi-play-fill"></i> Reproducir ahora</button>
                    </form>
                    <form action="reproductor.jsp">
                        <button type="submit" class="btn btn-warning fw-bold p-2 m-2" id="repro"><i class="bi bi-people-fill"></i> Ver con amigos</button>
                    </form>
                </div>  
            </div>
            <hr class="border-light border">
            <div class="container-fluid p-0 mt-2">
                <h2 class="m-1 fw-bold" id="ABP">Posible Favorito?</h2>
                <div class="container-fluid mt-2 mb-4">
                    <% if (favorito > 0){%>
                    <form action="Procesos/peliculas_series/delfav.jsp">
                        <input type="hidden" name="id_usuario" value="<%= usuario%>">
                        <input type="hidden" name="id_pelicula" value="<%= id%>">
                        <button type="submit" class="btn btn-danger ms-1 p-2 fw-bold" id="repro"><i class="bi bi-bookmark-plus"></i> Remover</button>
                    </form>
                    <%} else {%>
                    <form action="Procesos/peliculas_series/fav.jsp">
                        <input type="hidden" name="id_usuario" value="<%= usuario%>">
                        <input type="hidden" name="id_pelicula" value="<%= id%>">
                        <button type="submit" class="btn btn-success ms-1 p-2 fw-bold" id="repro"><i class="bi bi-bookmark-plus-fill"></i> Añadir</button>
                    </form>
                    <%}%>
                </div>  
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
