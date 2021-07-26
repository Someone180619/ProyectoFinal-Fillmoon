<%@page import="Ayudas.Errores" %>
<%@include file = "header.jsp" %>
 

<main class="form-signin text-center container w-25" id="ISC">
    <form action = "Procesos/login_mcn.jsp" method="post">
        <%int codigo_error = (int)session.getAttribute("error");
            if (codigo_error == 1){%>
            <div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Error!</h4>
                <p> <%= new Errores(codigo_error).ErrorMessage() %> </p>
                <hr>
        <%}%>
        <p class="h1 fw-bold" id="logo">Fillmoon</p>
        <div class="form-floating">
            <input type="text" class="form-control rounded-0" id="floatingInput" placeholder="name@example.com" name="user_name">
            <label for="floatingInput">Usuario</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control rounded-0" id="floatingPassword" placeholder="Password" name="user_pass">
            <label for="floatingPassword">Contraseña</label>
        </div>

        <div class="checkbox mb-3">
        </div>
        <button class="w-100 btn btn-lg btn-light" type="submit" id="ISB">Iniciar Sesión</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
</main>
