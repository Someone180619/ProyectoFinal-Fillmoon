<%@include file = "header.jsp"%>
<div class="container mt-5 mb-5 border border-2 border-dark bg-light d-flex justify-content-center p-3" id="RUC" style="width: 38%; overflow: hidden;">
    <form action="Procesos/registro_mcn.jsp"method="post" class="row p-0">
            <div class="ms-0 mt-3 label-group col-12" id="one">
                <p class="fw-bold fs-4">Formulario de Registro</p>  
                <div class="mt-1" style="width: 100%;">
                    <label>Nombre</label>
                    <input type="text" placeholder="Ingrese su nombre" name="nombre" class="form-control">
                    <label>Apellido</label>
                    <input type="text" placeholder="Ingrese su apellido" name="apellido" class="form-control">
                    <label>Correo</label>
                    <input type="email" placeholder="correoejemplo@gmail.com" name="correo" class="form-control">
                    <label>Usuario</label>
                    <input type="text" placeholder="nombre de usuario" name = "usuario" class="form-control">
                    <label>Contraseña</label>
                    <input type="password" placeholder="Ingrese su contraseña" name= "pass" class="form-control">  
                </div>
            </div>
        <div class="mb-0 mt-3 col-12 p-0 d-flex ms-0">
            <button type="submit" class="btn btn-primary mb-2 p-3 fw-bold ms-3" id="RUB">Crear Cuenta</button>
        </div>
    </form>
</div>
<%@include file = "footer.jsp"%>