<%@page import="java.util.List" %>
<%@page import="Entidad.Registros" %>
<%@page import="ProcesosBaseDatos.ProcesosRegistros" %>
<%@include file="header.jsp" %>

<%
    ProcesosRegistros log = new ProcesosRegistros();
    List <Registros> registros = log.ActualizarRegistro();
%>
<div class="container-fluid bg-gradient">
    <div class="container p-2">
        <form action="ae_peliculas.jsp">
            <button type="submit" class="btn btn-dark" id="ABP">ADD CONTENT</button>
        </form>  
    </div>
    <div class="container mb-3">
        <%if (registros.size() != 0) {%>
        <table class="table table-dark table-striped table-bordered border-light">
            <thead>
                <tr>
                    <th scope="col" class="text-center" id="ABP">Cod Usuario</th>
                    <th scope="col" class="text-center" id="ABP">Cod Título</th>
                    <th scope="col" class="text-center" id="ABP">Fecha de Creación</th>
                    <th scope="col" class="text-center" id="ABP">Visualizar</th>
                    <th scope="col" class="text-center" id="ABP">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%for (Registros reg : registros) {%>
                <tr>
                    <th scope="row" class="text-center"><%= reg.getPersona_id()%></th>
                    <td class="text-center"><%= reg.getTitulo_id()%></td>
                    <td class="text-center"><%= reg.getFecha_modificacion()%></td>
                    <td>
                        <div class="ms-3 text-center">
                            <a href="visualizar_contenido.jsp?id=<%= reg.getTitulo_id()%>" class="nav-item btn btn-light"><i class="bi bi-display"></i></a>
                        </div>  
                    </td> 
                    <td>
                        <div class="d-flex justify-content-center">
                            <a href="EditarContenido.jsp?id=<%= reg.getTitulo_id()%>" class="btn btn-light"><i class="bi bi-pencil-fill"></i></a>
                            <a href="Procesos/peliculas_series/EliminarContenido.jsp?id=<%= reg.getTitulo_id()%>" class="btn btn-light"><i class="bi bi-trash-fill"></i></a>
                        </div>  
                    </td> 
                </tr>
                <%}%>
            </tbody>
        </table>
        <%}%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>