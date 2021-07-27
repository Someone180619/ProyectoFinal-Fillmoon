<%-- 
    Document   : registro_mcn
    Created on : Jul 11, 2021, 9:15:24 PM
    Author     : Oriel Delgado
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Entidad.Personas"%>
<%@page import="Entidad.Usuarios"%>
<%@page import="ProcesosBaseDatos.ProcesosPersonas"%>
<%@page import ="ProcesosBaseDatos.ProcesosUsuario"%>

<%
    try{
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("pass");
        
        ProcesosPersonas personasDb = new ProcesosPersonas();
        ProcesosUsuario usuarioDb = new ProcesosUsuario();
        
        Personas persona = new Personas();
        persona.setNombre(nombre);
        persona.setApellido(apellido);
        persona.setEmail(correo);

        Usuarios usuarios = new Usuarios();
        usuarios.setUsername(usuario);
        usuarios.setPassword(contrasena);
        
        
        int guardarPersona = personasDb.RegistrarPersona(persona);
        if (guardarPersona > 0){
            int guardarUsuario = usuarioDb.GuardarUsuario(usuarios, correo);
            if (guardarUsuario > 0){
                out.println("<h2>Usuario y persona Registrado correctamente</h2>");
                response.sendRedirect("../iniciar_sesion.jsp");
                return;
            }
            else{
                JOptionPane.showMessageDialog(null, "error con tabla");
            }
        }else{
            System.out.println("Ocurrio un error");
        }   
    }catch(Exception e){}
    response.sendRedirect("../registrar_usuario.jsp");

%>