<%@include file = "header.jsp"%>
<div class="m-0 container mt-4">
    <form action="Procesos/registro_mcn.jsp"method="post">
        <div class="m-0 label-group row-cols-6 justify-content-center">
            <h2>Registrarse</h2>
            <label>Nombre</label>
            <input type="text" placeholder="Nombre" name="nombre" class="form-control">
            <label>Apellido</label>
            <input type="text" placeholder="Apellido" name="apellido" class="form-control">
            <label>Correo</label>
            <input type="email" placeholder="ejemplo@gmail.com" name="correo" class="form-control">
            <label>Usuario</label>
            <input type="text" placeholder="Ingrese su nombre de usuario" name = "usuario" class="form-control">
            <label>Contrasena</label>
            <input type="password" placeholder="Ingrese su contrasena" name= "pass" class="form-control">
        </div> 
        <div class="mb-0 label-group justify-content-evenly">
            <button type="submit" class="btn btn-primary mb-4 rounded-1">Enviar Datos</button>
        </div>
    </form>
</div>
<%@include file = "footer.jsp"%>