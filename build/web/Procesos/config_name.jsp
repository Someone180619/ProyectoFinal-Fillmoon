<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosUsuario" %>
<%@page import="Entidad.Usuarios" %>
<%@page import="Entidad.Personas" %>

<%
    try{
        String nuevo_nombre = request.getParameter("new_user_name");

        Usuarios usuario = new Usuarios();
        usuario.setUsername(nuevo_nombre);
        Personas persona = new Personas();
        persona.setId((int)session.getAttribute("id_usuario"));

        ProcesosUsuario usuarioDb = new ProcesosUsuario();
        int actualizar_imagen = usuarioDb.CambiarNombreUsuario(usuario, persona);

        if(actualizar_imagen > 0){
            JOptionPane.showMessageDialog(null, "El nombre de usuario ha cambiado");
            session.removeAttribute("id_usuario");
            session.removeAttribute("profile_img");
            response.sendRedirect("../iniciar_sesion.jsp");
            return;
        }else{
            JOptionPane.showMessageDialog(null, "Ocurrio un Error");
        }
    }catch(Exception e){}
    response.sendRedirect("../configurar_usuario.jsp");
%>
