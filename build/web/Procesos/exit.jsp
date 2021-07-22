<%
    session.removeAttribute("id_usuario");
    session.removeAttribute("nombre_usuario");
    session.removeAttribute("apellido_usuario");
    session.removeAttribute("correo_usuario");
    session.removeAttribute("profile_img");
    session.removeAttribute("usuario");
    
    response.sendRedirect("../iniciar_sesion.jsp");
%>
