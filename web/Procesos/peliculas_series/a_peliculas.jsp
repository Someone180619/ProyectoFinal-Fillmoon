<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries"%>
<%@page import="ProcesosBaseDatos.ProcesosRegistros" %>
<%@page import="Entidad.Peliculas"%>
<%@page import="Entidad.Registros"%>

<%
    String titulo = request.getParameter("nombre_pelicula");
    int categoria = Integer.parseInt(request.getParameter("id_categoria"));
    String poster = request.getParameter("poster");
    String backdrop = request.getParameter("backdrop");
    String estreno = request.getParameter("estreno");
    String descripcion = request.getParameter("descripcion");
    int seccion = Integer.parseInt(request.getParameter("id_seccion")); 
    int usuario = Integer.parseInt(request.getParameter("id_persona"));
    
    Peliculas pelicula = new Peliculas();
    Registros reg = new Registros();
    
    pelicula.setNombre(titulo);
    pelicula.setCategoria_id(categoria);
    pelicula.setPosters(poster);
    pelicula.setBackdrops(backdrop);
    pelicula.setEstreno(estreno);
    pelicula.setDescripcion(descripcion);
    pelicula.setSeccion(seccion);
    reg.setPersona_id(usuario);
    reg.setTitulo(titulo);
    reg.setSeccion_id(seccion);
    reg.setCategoria_id(categoria);

    ProcesosPeliculasSeries peliseriesDb = new ProcesosPeliculasSeries();
    ProcesosRegistros logDb = new ProcesosRegistros();
    
    int resultado = peliseriesDb.AgregarPelicula(pelicula);
    if (resultado >0){
        int log = logDb.AgregarRegistro(reg);
        if(log>0){
            JOptionPane.showMessageDialog(null, "Registro completado");
            response.sendRedirect("../../ae_peliculas.jsp");
        }
    }
%>