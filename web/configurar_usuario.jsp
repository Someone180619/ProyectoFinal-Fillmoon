<%@include file="header.jsp"%>

<!-- Configuración del usuario -->

    <div class="container m-5">
        <h2 class="fw-bold text-center">Configuración de la cuenta</h2>
    </div>
    <div class="container m-3 row">
        <section class="border border-2 border-dark col-8">
            <label for="exampleFormControlInput1" class="form-label ms-3 mt-3 fw-bold">Actualizar foto de perfíl</label>
            <form action="Procesos/config_img.jsp">
                <div class="m-3 d-flex">
                    <input name="new_user_profile" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Dirección url">
                    <button type="submit" class="btn btn-dark">Actualizar</button>
                </div>
                <section class="d-flex m-2">
                    <p class="text-danger fw-bold">Importante:</p>
                    <p>Agregue la dirección URL donde se encuentre alojada su imagen y luego presiona el botón "Actualizar".</p>
                </section>
            </form>
            <label for="exampleFormControlInput1" class="form-label ms-3 mt-3 fw-bold">Nombre del usuario</label>
            <form action="Procesos/config_name.jsp">
                <div class="m-3 d-flex">
                    <input name="new_user_name" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nuevo nombre">
                    <button type="submit" class="btn btn-dark">Cambiar</button>
                </div>
                <section class="d-flex m-2">
                    <p class="text-danger fw-bold">Importante:</p>
                    <p>Para cambiar su nombre, solo necesita introducirlo en el anterior input y luego presionar el boton "Cambiar".</p>
                </section>  
            </form>
            <label for="exampleFormControlInput1" class="form-label ms-3 mt-3 fw-bold">Nueva Contraseña</label>
            <form action="Procesos/config_pass.jsp">
                <div class="m-3 d-flex">
                    <input name="new_user_pass" type="password" class="form-control" id="exampleFormControlInput1" placeholder="Nuevo nombre">
                    <button type="submit" class="btn btn-dark">Cambiar</button>
                </div>
                <section class="d-flex m-2">
                    <p class="text-danger fw-bold">Importante:</p>
                    <p>Para cambiar su contraseña, solo necesita introducirlo en el anterior input y luego presionar el boton "Cambiar".</p>
                </section>  
            </form>
        </section>
        <section class="col-4">
            <img src="<%= session.getAttribute("profile_img") %>" alt="" width="150" height="150" id="profile-img" class="img-responsive rounded-3 m-2">
            <label class="m-3"><p class="fw-bold">Usuario:</p><p class="text-center">Bienvenido, <%= session.getAttribute("usuario") %>!</p></label>          
        </section>
        <form action="principal.jsp" class="ms-4 mt-5 mb-2">
            <div class="d-grid gap-2">
                <button class="btn btn-primary btn-dark" type="submit">Regresar al inicio</button>
            </div>
        </form>
    </div>
    <section class="m-2 d-flex justify-content-center">
        <h2 class="fw-bold text-warning fs-5">Aviso:</h2>
        <p class="fs-6">No es necesario hacer el cambio de foto y usuario a la vez, ambos procesos trabajan independientemente uno del otro.</p>
    </section>

<%@include file="footer.jsp" %>