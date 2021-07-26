<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>

<%
    int opcion = Integer.parseInt(request.getParameter("opt"));
    String contenido = request.getParameter("upt");
    int id_titulo = Integer.parseInt(request.getParameter("id"));

    ProcesosPeliculasSeries editDb = new ProcesosPeliculasSeries();
    int validador = editDb.EditarContenido(opcion, id_titulo, contenido);

    if (validador > 0){
        response.sendRedirect("../../EditarContenido.jsp?id="+id_titulo);
    }
    else{
        JOptionPane.showMessageDialog(null, "Error");
    }
%>