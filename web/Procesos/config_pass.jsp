<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosUsuario" %>
<%@page import="Entidad.Usuarios" %>
<%@page import="Entidad.Personas" %>

<%
    try{
        String nueva_contrasena = request.getParameter("new_user_pass");

        Usuarios usuario = new Usuarios();
        usuario.setPassword(nueva_contrasena);
        Personas persona = new Personas();
        persona.setId((int)session.getAttribute("id_usuario"));

        ProcesosUsuario usuarioDb = new ProcesosUsuario();
        int actualizar_contrasena = usuarioDb.CambiarContrasena(usuario, persona);

        if(actualizar_contrasena > 0){
            JOptionPane.showMessageDialog(null, "La contrasena ha sido actualizada");
            session.removeAttribute("id_usuario");
            response.sendRedirect("../iniciar_sesion.jsp");
            return;
        }else{
            JOptionPane.showMessageDialog(null, "Ocurrio un Error");
        }
    }catch(Exception e){}
    response.sendRedirect("../configurar_usuario.jsp");
%>