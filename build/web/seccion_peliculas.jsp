<%@page import="Entidad.Peliculas"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp"%>

<%
    int id = (int)session.getAttribute("id_usuario");
    ProcesosPeliculasSeries pps = new ProcesosPeliculasSeries();
    List <Peliculas> peliculas = pps.LlamarPeliculas(id);
%>

    <div class="container-fluid mt-2 mb-1">
        <ul class="nav">
            <li class="nav-item me-auto p-2 bd-highlight">
                <p class="fs-6">Películas agregadas recientemente</p>
            </li>
            <li class="nav-item mx-5 p-0">
                <form class="d-flex" action="categoria_peliculas.jsp">
                    <select name="filtro" class="form-select mx-1" aria-label="Default select example">
                        <option value="1">Acción</option>
                        <option value="2">Romance</option>
                        <option value="3">Comedia</option>
                        <option value="4">Terror</option>
                        <option value="5">Musicales</option>
                        <option value="6">Misterio</option>
                      </select>
                    <button class="btn btn-dark" type="submit"><i class="bi bi-funnel-fill"></i></button>
                </form>
            </li>
        </ul> 
    </div>

    <div class="container"><!--Aquí se generarán todas las películas y con las posteriores implementaciones se filtrarán en otra sección de la página-->
        <div class="row d-flex justify-content-start">
            <%for (Peliculas pelicula: peliculas){%>
                <div class="col-2 border border-3 mb-2 mx-3 bg-dark rounded-3 mt-0">
                    <div class="container d-flex justify-content-end px-0 mt-1 mb-1 ms-1">
                        <a href=""class="nav-link text-end fw-bold p-0 text-light" style="font-size: 100%;"><i class="bi bi-gear-fill"></i></i></a> 
                    </div>
                    <div class="mb-0">
                        <a href="#"><img class="mx-auto d-block img-fluid p-0" width="220" height="320" src="<%= pelicula.getPosters() %>" alt=""></a>
                    </div>
                    <div class="text-start text-light">
                        <p class="fw-bold pb-0 mb-0" style="font-size: 80%;"><%= pelicula.getNombre() %></p>
                        <p class="pt-0 mt-0 mb-1" style="font-size: 75%;"><%= pelicula.getEstreno() %></p>
                    </div>
                </div>
            <%}%>
        </div>
    </div>



<%@ include file="footer.jsp"%>