<%@page import="javax.swing.JOptionPane"%>
<%@page import="ProcesosBaseDatos.ProcesosPersonas" %>
<%@page import="Entidad.Personas" %>

<%
    try{
        String nueva_imagen = request.getParameter("new_user_profile");

        Personas persona = new Personas();
        persona.setProfile_img(nueva_imagen);
        persona.setId((int)session.getAttribute("id_usuario"));

        ProcesosPersonas personaDb = new ProcesosPersonas();
        int actualizar_imagen = personaDb.ActualizarImagen(persona);

        if(actualizar_imagen > 0){
            JOptionPane.showMessageDialog(null, "La imagen fue actualizada con exito");
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
