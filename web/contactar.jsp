<%@include file="header.jsp"%>

<div class="container row mt-5 mb-5">
    <div class="col-6">
        <h2 class="fw-bold text-light" id="one">Contáctenos</h2>
        <ul class="nav flex-column ms-3 p-3">
            <li class="nav-item"><p class="text-light"><i class="bi bi-envelope" id="icons"></i> consultas@correo.com</p></li>
            <li class="nav-item"><p class="text-light"><i class="bi bi-geo-alt-fill" id="icons"></i> Panamá, Mi casa</p></li>
            <li class="nav-item"><p class="text-light"><i class="bi bi-telephone-fill" id="icons"></i> (+507) 3452-0134</p></li>
            <li class="nav-item"><p class="text-light"><i class="bi bi-whatsapp" id="icons"></i> (+507) 1234-5678</p></li>
        </ul>
        <h2 class="mt-3 fw-bold text-light" id="one">Síganos</h2>
        <section class="fs-3 ms-2">
            <a href="#" class="p-2 text-light"><i class="bi bi-facebook" id="icons"></i></a>
            <a href="#" class="p-2 text-light"><i class="bi bi-twitter" id="icons"></i></a>
            <a href="#" class="p-2 text-light"><i class="bi bi-instagram" id="icons"></i></a>
            <a href="#" class="p-2 text-light"><i class="bi bi-discord" id="icons"></i></a>
            <a href="#" class="p-2 text-light"><i class="bi bi-reddit" id="icons"></i></a>
        </section>
    </div>
    <div class="col-6">
        <form action="Procesos/almacenar_correspondencia.jsp">
            <div class="mb-3">
                <label class="form-label fw-bold text-light" id="one">Nombre</label>
                <input placeholder="puede ser distinto al del sistema" name="nombre" type="text" class="form-control" required="true">
            </div>
            <div class="mb-3">
                <label class="form-label fw-bold text-light" id="one">Correo</label>
                <input placeholder="puede ser distinto al del sistema" name="correo" type="email" class="form-control" required="true">
            </div>
            <div class="mb-3">
                <label class="form-label fw-bold text-light" id="one">Asunto</label>
                <input placeholder="indique el asunto" name= "asunto" type="text" class="form-control"  required="true">
            </div>
            <div class="mb-3">
                <label class="form-label fw-bold text-light" id="one">Contenido</label>
                <textarea name="contenido" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="col-auto">
                <button type="button" class="btn btn-dark mb-3 fw-bold" data-bs-toggle="modal" data-bs-target="#activador" id="one">Enviar</button>
            </div>
            
            <!--Modal-->
            
            <div class="modal fade" id="activador" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Enviar información</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Esta seguro, ¿Desea enviar el contenido redactado?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Continuar</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<section class="text-center text-warning">
    <p>No utilizar esta sección del sitio para distribuir información irrelevante.</p>
</section>

<%@include file="footer.jsp" %>