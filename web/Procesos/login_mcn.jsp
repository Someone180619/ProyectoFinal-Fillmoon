<%@page import="Entidad.Personas" %>
<%@page import="Entidad.Usuarios" %>
<%@page import="ProcesosBaseDatos.ProcesosUsuario" %>

<%
    try{
        String user = request.getParameter("user_name");
        String pass = request.getParameter("user_pass");
        
        Usuarios usuario = new Usuarios();
        usuario.setUsername(user);
        usuario.setPassword(pass);
        
        ProcesosUsuario usuariodb = new ProcesosUsuario();
        Personas persona = usuariodb.ValidarLogin(usuario);
        
        if (persona != null){
            session.setAttribute("id_usuario", persona.getId());
            session.setAttribute("nombre_usuario", persona.getNombre());
            session.setAttribute("apellido_usuario", persona.getApellido());
            session.setAttribute("correo_usuario", persona.getEmail());
            session.setAttribute("profile_img", persona.getProfile_img());
            session.setAttribute("usuario", usuario.getUsername());
            session.setAttribute("error", 0);
            response.sendRedirect("../principal.jsp");
        }else{
            session.setAttribute("error", 1);
            response.sendRedirect("../iniciar_sesion.jsp");
        }   

    }catch(Exception e){
        session.setAttribute("error", 1);
        response.sendRedirect("../iniciar_sesion.jsp");
    }

%>