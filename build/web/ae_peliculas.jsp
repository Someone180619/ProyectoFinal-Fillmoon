<%@include file="header.jsp"%>


<form action="Procesos/peliculas_series/a_peliculas.jsp" class="container mt-2">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Título</label>
    <input name="nombre_pelicula" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">Ingrese el título de la película</div>
  </div>
 <select class="form-select" aria-label="Default select example" name="id_categoria">
  <option selected>Open this select menu</option>
  <option value="1" >Acción</option>
  <option value="2">Romance</option>
  <option value="3">Comedia</option>
  <option value="4">Terror</option>
  <option value="5">Musicales</option>
  <option value="6">Misterio</option>
</select>
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Poster</label>
    <input name="poster" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">Ingrese la dirección URL</div>
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Backdrop</label>
    <input name="backdrop" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">Ingrese la dirección URL</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Año de estreno</label>
    <input name="estreno" type="text" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Descripción</label>
  <textarea name="descripcion" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
 </div>
  <button type="submit" class="btn btn-dark">Subir</button>
</form>

<%@include file="footer.jsp" %>
