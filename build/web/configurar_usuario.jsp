<%@include file="header.jsp"%>

<!-- Configuración del usuario -->

<div class="container m-5">
    <h2 class="fw-bold text-center text-light" id="one">Configuración de la cuenta</h2>
</div>
<div class="container m-4 row">
    <section class="border border-1 border-light col-8">
        <label class="form-label ms-3 mt-3 fw-bold text-light" id="one">Actualizar foto de perfíl</label>
        <form action="Procesos/config_img.jsp">
            <div class="m-3 d-flex">
                <input name="new_user_profile" type="text" class="form-control" placeholder="Dirección url">
                <button type="submit" class="btn btn-dark">Actualizar</button>
            </div>
            <section class="d-flex m-2">
                <p class="text-danger fw-bold">Importante:</p>
                <p class="text-light">Agregue la dirección URL donde se encuentre alojada su imagen y luego presiona el botón "Actualizar".</p>
            </section>
        </form>
        <label class="form-label ms-3 mt-3 fw-bold text-light" id="one">Nombre del usuario</label>
        <form action="Procesos/config_name.jsp">
            <div class="m-3 d-flex">
                <input name="new_user_name" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nuevo nombre">
                <button type="submit" class="btn btn-dark">Cambiar</button>
            </div>
            <section class="d-flex m-2">
                <p class="text-danger fw-bold">Importante:</p>
                <p class="text-light">Para cambiar su nombre, solo necesita introducirlo en el anterior input y luego presionar el boton "Cambiar".</p>
            </section>  
        </form>
        <label class="form-label ms-3 mt-3 fw-bold text-light" id="one">Nueva Contraseña</label>
        <form action="Procesos/config_pass.jsp">
            <div class="m-3 d-flex">
                <input name="new_user_pass" type="password" class="form-control" id="exampleFormControlInput1" placeholder="Nuevo nombre">
                <button type="submit" class="btn btn-dark">Cambiar</button>
            </div>
            <section class="d-flex m-2">
                <p class="text-danger fw-bold">Importante:</p>
                <p class="text-light">Para cambiar su contraseña, solo necesita introducirlo en el anterior input y luego presionar el boton "Cambiar".</p>
            </section>  
        </form>
    </section>
    <section class="col-4">
        <img src="<%= session.getAttribute("profile_img")%>" alt="" width="150" height="150" id="profile-img" class="img-responsive rounded-3 m-2">
        <label class="m-3"><p class="fw-bold" id="icons_text">Usuario:</p><p class="text-center text-light">Bienvenido, <%= session.getAttribute("usuario")%>!</p></label>
        <button class="btn btn-danger ms-1" data-bs-toggle="modal" data-bs-target="#activador"><i class="bi bi-trash-fill"></i> Eliminar Cuenta</button>
        <!-- Modal -->
        <div class="modal fade" id="activador" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="">Eliminar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Seguro desea eliminar su cuenta de usuario Fillmoon?
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" data-bs-dismiss="modal">Cancelar</button>
                        <a href="Procesos/peliculas_series/EliminarUsuario.jsp?id=<%= session.getAttribute("id_usuario")%>" class="btn btn-danger">Eliminar</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<section class="mt-4 d-flex justify-content-center">
    <h2 class="fw-bold text-warning fs-5">Aviso:</h2>
    <p class="fs-6 text-light">No es necesario hacer el cambio de foto y usuario a la vez, ambos procesos trabajan independientemente uno del otro.</p>
</section>

<%@include file="footer.jsp" %>