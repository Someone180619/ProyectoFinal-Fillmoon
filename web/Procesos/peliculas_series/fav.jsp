<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>

<%
    int usuario = Integer.parseInt(request.getParameter("id_usuario"));
    int pelicula_id = Integer.parseInt(request.getParameter("id_pelicula"));
    ProcesosPeliculasSeries peliseriesDb = new ProcesosPeliculasSeries(); 
    int resultado = peliseriesDb.AgregarFavoritos(usuario, pelicula_id);
    JOptionPane.showMessageDialog(null, resultado);
    if(resultado>0){
        response.sendRedirect("../../visualizar_contenido.jsp?id=" + pelicula_id);
    }else{
        JOptionPane.showMessageDialog(null, "No se almaceno el favorito, entonces hay un error wey. Que hiciste mal");
    }
%>