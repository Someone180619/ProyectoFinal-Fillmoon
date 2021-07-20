<%@page import="Ayudas.Errores" %>
<%@include file = "header.jsp" %>

<div class="login-container mt-5">
    <form action = "Procesos/login_mcn.jsp" method="post">
        
        <% int codigo_error = (int)session.getAttribute("error");
            if (codigo_error == 1){%>
            <div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Ups!</h4>
                <p> <%= new Errores(codigo_error).ErrorMessage() %> </p>
                <hr>
            <%}%>
            
        <h2>Iniciar Sesion</h2>
        <div class="label-group">
           <label>Usuario</label>
            <input type="text" placeholder="nombre de usuario" name = "user_name">
            <label for="">Contrasena</label>
            <input type="password" placeholder="contrasena" name = "user_pass">
        </div>
        <div class = "row">
            <button type="submit" class="btn btn-success btn-block mt-4 p-3">Iniciar Sesion</button>
        </div>
        <a href="" id="exit"><i class="fas fa-times"></i></a>
    </form>
</div>
<%@include file = "footer.jsp" %>

