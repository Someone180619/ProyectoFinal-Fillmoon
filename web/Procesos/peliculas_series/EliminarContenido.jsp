<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPeliculasSeries" %>
<%
    int id_contenido = Integer.parseInt(request.getParameter("id"));
    ProcesosPeliculasSeries pps = new ProcesosPeliculasSeries();
    
    int validador = pps.EliminarContenido(id_contenido);
    
    if(validador > 0){
        response.sendRedirect("../../crud_sistema.jsp");
    }
    else{
        JOptionPane.showMessageDialog(null, "Error");
    }
%>
