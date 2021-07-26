<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>

<%
    int usuario = Integer.parseInt(request.getParameter("id_usuario"));
    int pelicula_id = Integer.parseInt(request.getParameter("id_pelicula"));
    ProcesosPeliculasSeries peliseriesDb = new ProcesosPeliculasSeries(); 
    int resultado = peliseriesDb.EliminarFavorito(usuario, pelicula_id);
    if(resultado>0){
        JOptionPane.showMessageDialog(null, "Se elimino el dato de favoritos");
        response.sendRedirect("../../visualizar_contenido.jsp?id=" + pelicula_id);
    }else{
        JOptionPane.showMessageDialog(null, "No se elimino el dato");
    }
%>
