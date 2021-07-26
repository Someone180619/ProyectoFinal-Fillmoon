<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPersonas" %>

<%
    int user = Integer.parseInt(request.getParameter("id"));
    ProcesosPersonas pp = new ProcesosPersonas();
    
    int delete = pp.EliminarPersona(user);
    
    if (delete>0){
        response.sendRedirect("../../principal.jsp");
    }
    else{
        JOptionPane.showMessageDialog(null, "Error");
    }

%>