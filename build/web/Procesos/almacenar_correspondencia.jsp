<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPersonas"%>
<%@page import="Entidad.Personas" %>
<%@page import ="Entidad.Correo" %>

<%
    try{
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("correo");
        String asunto = request.getParameter("asunto");
        String contenido = request.getParameter("contenido");
        
        ProcesosPersonas personasDb = new ProcesosPersonas();
        
        Correo correo = new Correo();
        
        correo.setNombre(nombre);
        correo.setEmail(email);
        correo.setAsunto(asunto);
        correo.setContenido(contenido);
        correo.setId((int)session.getAttribute("id_usuario"));
        
        int guardarCorreo = personasDb.AgregarCorrespondencia(correo);
        if (guardarCorreo > 0){
            response.sendRedirect("../principal.jsp");
            return;
        }else{
            JOptionPane.showMessageDialog(null, "Ocurrion un error");
        }
    }catch(Exception e){}
    response.sendRedirect("../contactar.jsp");

%>