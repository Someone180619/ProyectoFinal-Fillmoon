<%@include file="header.jsp"%>

    <div class="container row mt-5 mb-5">
        <div class="col-6">
            <h2 class="fw-bold">Contáctenos</h2>
                <ul class="nav flex-column ms-3 p-3">
                    <li class="nav-item"><p><i class="bi bi-envelope"></i> consultas@correo.com</p></li>
                    <li class="nav-item"><p><i class="bi bi-geo-alt-fill"></i> Panamá, Mi casa</p></li>
                    <li class="nav-item"><p><i class="bi bi-telephone-fill"></i> (+507) 3452-0134</p></li>
                    <li class="nav-item"><i class="bi bi-whatsapp"></i> (+507) 1234-5678</p></li>
                </ul>
            <h2 class="mt-3 fw-bold">Síganos</h2>
            <section class="fs-3 ms-2">
                <a href="#" class="p-2 text-dark"><i class="bi bi-facebook"></i></a>
                <a href="#" class="p-2 text-dark"><i class="bi bi-twitter"></i></a>
                <a href="#" class="p-2 text-dark"><i class="bi bi-instagram"></i></a>
                <a href="#" class="p-2 text-dark"><i class="bi bi-discord"></i></a>
                <a href="#" class="p-2 text-dark"><i class="bi bi-reddit"></i></a>
            </section>
        </div>
        <div class="col-6">
            <form action="Procesos/almacenar_correspondencia.jsp">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Nombre</label>
                    <input placeholder="puede ser distinto al del sistema" name="nombre" type="text" class="form-control" id="exampleFormControlInput1" required="true">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Correo</label>
                    <input placeholder="puede ser distinto al del sistema" name="correo" type="email" class="form-control" id="exampleFormControlInput1" required="true">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label fw-bold">Asunto</label>
                    <input placeholder="indique el asunto" name= "asunto" type="text" class="form-control" id="exampleFormControlInput1" required="true">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Contenido</label>
                    <textarea name="contenido" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-dark mb-3 fw-bold">Enviar</button>
                </div>
            </form>
        </div>
    </div>
    <section class="text-center text-warning">
        <p>No utilizar esta sección del sitio para distribuir información irrelevante.</p>
    </section>

<%@include file="footer.jsp" %>