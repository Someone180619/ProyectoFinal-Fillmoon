<%@page import="Entidad.Peliculas"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp"%>

<%
    int filtro = Integer.parseInt(request.getParameter("filtro"));
    ProcesosPeliculasSeries pps = new ProcesosPeliculasSeries();
    List <Peliculas> peliculas = pps.FiltrarCategoria(filtro);
%>

    <div class="container-fluid mt-2 mb-1">
        <ul class="nav">
            <li class="nav-item me-auto p-2 bd-highlight d-flex">
                <p class="fs-6">Categoría seleccionada: </p>
                <p class="fs-6 fw-bold">"
                <% for (int i = 0; i<1; i++){%>
                    <%= peliculas.get(i).getCategoria() %>
                <%}%>"
                </p>
            </li>
            <li class="nav-item mx-5 p-0">
                <form class="d-flex" action="seccion_peliculas.jsp">
                    <button class="btn btn-dark" type="submit"><i class="bi bi-back"></i></button>
                </form>
            </li>
        </ul> 
    </div>

    <div class="container"><!--Aquí se generarán todas las películas pertenecientes a esta categoría-->
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
