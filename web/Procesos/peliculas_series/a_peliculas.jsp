<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="Entidad.Peliculas"%>

<%
    String titulo = request.getParameter("nombre_pelicula");
    int categoria = Integer.parseInt(request.getParameter("id_categoria"));
    String poster = request.getParameter("poster");
    String backdrop = request.getParameter("backdrop");
    String estreno = request.getParameter("estreno");
    String descripcion = request.getParameter("descripcion");

    Peliculas pelicula = new Peliculas();
    pelicula.setNombre(titulo);
    pelicula.setCategoria_id(categoria);
    pelicula.setPosters(poster);
    pelicula.setBackdrops(backdrop);
    pelicula.setEstreno(estreno);
    pelicula.setDescripcion(descripcion);
    
    ProcesosPeliculasSeries peliseriesDb = new ProcesosPeliculasSeries();

    int resultado = peliseriesDb.AgregarPelicula(pelicula);
    if (resultado >0){
        response.sendRedirect("../../ae_peliculas.jsp");
    }
%>