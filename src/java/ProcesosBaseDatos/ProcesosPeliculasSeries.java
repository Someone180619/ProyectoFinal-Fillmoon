
package ProcesosBaseDatos;

import Entidad.Peliculas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class ProcesosPeliculasSeries {
    Connection _cn;
    
    public ProcesosPeliculasSeries(){
        _cn = new Conexion().OpenDb();
    }
    
    public int AgregarPelicula(Peliculas pelicula){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String query = "Call AgregarPelicula('"+pelicula.getNombre()+"', "+pelicula.getCategoria_id()+", '"+pelicula.getPosters()+"', '"+pelicula.getBackdrops()+"', '"+pelicula.getEstreno()+"', '"+pelicula.getDescripcion()+"', "+pelicula.getSeccion()+")";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
    
    public List<Peliculas> LlamarPeliculas (int id,int seccion){
        try{
            Statement smtm = _cn.createStatement();
            List<Peliculas> peliculas = new ArrayList<>();
            
            String query = "CALL LlamarPeliculas("+id+", "+seccion+")";
            
            ResultSet result = smtm.executeQuery(query);

            while (result.next()){
                Peliculas peli = new Peliculas ();
                peli.setId(result.getInt("id"));
                peli.setNombre(result.getString("nombre"));
                peli.setPosters(result.getString("posters"));
                peli.setBackdrops(result.getString("backdrops"));
                peli.setEstreno(result.getString("estreno"));
                peli.setDescripcion(result.getString("descripcion"));
                peliculas.add(peli);
            }
            result.close();
            smtm.close();
            
            return peliculas;
            
        }catch(Exception e){
            int x = 5;
        }
        return null;
    }
    
    public List<Peliculas> FiltrarCategoria (int filtro, int seccion){
        try{
            Statement smtm = _cn.createStatement();
            List<Peliculas> peliculas = new ArrayList<>();
            
            String query = "CALL FiltrarCategoria("+filtro+", "+seccion+")";
            
            ResultSet result = smtm.executeQuery(query);

            while (result.next()){
                Peliculas peli = new Peliculas ();
                peli.setId(result.getInt("id"));
                peli.setNombre(result.getString("nombre"));
                peli.setPosters(result.getString("posters"));
                peli.setEstreno(result.getString("estreno"));
                peli.setCategoria(result.getString("categoria"));
                peliculas.add(peli);
            }
            
            result.close();
            smtm.close();
            JOptionPane.showMessageDialog(null, peliculas);
            return peliculas;
            
        }catch(Exception e){
            int x = 5;
        }
        return null;
    }
    
    public Peliculas ContenidoSeleccionado(int id_pelicula){
        
        try{
            Statement smtm = _cn.createStatement();
            String query = "CALL ObtenerContenido ("+id_pelicula+")";
            ResultSet result = smtm.executeQuery(query);
            
            while (result.next()){
                Peliculas contenido = new Peliculas ();
                contenido.setId(result.getInt("id"));
                contenido.setNombre(result.getString("nombre"));
                contenido.setBackdrops(result.getString("backdrops"));
                contenido.setPosters(result.getString("posters"));
                contenido.setDescripcion(result.getString("descripcion"));
                contenido.setEstreno(result.getString("estreno"));
                return contenido;
            }
        }catch(Exception e){
            
        }
        return null;
    }
    
        public int AgregarFavoritos(int usuario, int pelicula){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String queryConsulta = "SELECT nombre, posters, estreno, seccion FROM peliculas WHERE id = "+pelicula+"";
            ResultSet result = smtm.executeQuery(queryConsulta);
            String nombre = "", posters= "", estreno =" ";
            int seccion =0;
            while (result.next()){
                nombre=result.getString("nombre");
                posters=result.getString("posters");
                estreno=result.getString("estreno");
                seccion=result.getInt("seccion");
            }
            String query = "Call AgregarFavoritos("+usuario+", "+pelicula+", '"+nombre+"', '"+posters+"', '"+estreno+"', "+seccion+")";
            resultado = smtm.executeUpdate(query);
            result.close();
            smtm.close();
            return resultado;
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
        
    public int ValidadFavorito(int usuario, int contenido){
        int comprobador = 0;
        try{
            Statement smtm = _cn.createStatement();
            String query = "CALL FavoritoUsuario ("+usuario+", "+contenido+")";
            ResultSet result = smtm.executeQuery(query);
            
            while (result.next()){
                comprobador += 1;
            }
            result.close();
            smtm.close();
            return comprobador;
        }catch(Exception e){
            
        }
        return comprobador;
    }
    
    public List<Peliculas> LlamarFavoritos (int id){
        try{
            
            Statement smtm = _cn.createStatement();
            List<Peliculas> peliculas = new ArrayList<>();
            
            String query = "CALL LlamarFavoritos("+id+")";
            
            ResultSet result = smtm.executeQuery(query);

            while (result.next()){
                Peliculas fav = new Peliculas();
                fav.setId(result.getInt("id_pelicula"));
                fav.setNombre(result.getString("nombre"));
                fav.setEstreno(result.getString("estreno"));
                fav.setPosters(result.getString("poster"));
                peliculas.add(fav);
            }
            result.close();
            smtm.close();
            return peliculas;  
        }catch(Exception e){
            int x = 5;
        }
        return null;
    }
    
        public List<Peliculas> FiltrarFavoritos (int id_usuario, int seccion){
        try{
            Statement smtm = _cn.createStatement();
            List<Peliculas> contenido = new ArrayList<>();
            
            String query = "CALL FiltrarFavoritos("+id_usuario+", "+seccion+")";
            
            ResultSet result = smtm.executeQuery(query);

            while (result.next()){
                Peliculas fav = new Peliculas();
                fav.setId(result.getInt("id_pelicula"));
                fav.setNombre(result.getString("nombre"));
                fav.setEstreno(result.getString("estreno"));
                fav.setPosters(result.getString("poster"));
                contenido.add(fav);
            }
            result.close();
            smtm.close();
            return contenido;  
        }catch(Exception e){
            int x = 5;
        }
        return null;
    }
        
    public int EditarContenido(int opcion, int id, String contenido){
        int validador = 0, parse = 0;
        String query = "";
        
        try{
            Statement smtm = _cn.createStatement();
            
            switch (opcion){
                case 1:
                    query = "CALL ActualizarNombreContenido("+id+", '"+contenido+"')";
                    break;
                case 2:
                    query = "CALL ActualizarPosterContenido("+id+", '"+contenido+"')";
                    break;
                case 3:
                    query = "CALL ActualizarBackdropContenido("+id+", '"+contenido+"')";
                    break;
                case 4:
                    parse = Integer.parseInt(contenido);
                    query = "CALL ActualizarSeccionContenido("+id+", "+parse+")";
                    break;
                case 5:
                    query = "CALL ActualizarEstrenoContenido("+id+", '"+contenido+"')";
                    break;
                case 6:
                    parse = Integer.parseInt(contenido);
                    query = "CALL ActualizarCategoriaContenido("+id+", '"+parse+"')";
                    break;
                case 7:
                    query = "CALL ActualizarDescripcionContenido("+id+", '"+contenido+"')";
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Error");       
            }
            validador = smtm.executeUpdate(query);;
            smtm.close();
            return validador;
        }catch(Exception e){
            
        }
        return validador;
    }
    
    public int EliminarContenido(int id_contenido){
        int validador = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            
            String query = "DELETE FROM peliculas WHERE id = "+id_contenido+"";
            validador = smtm.executeUpdate(query);;
            smtm.close();
            return validador;
            
        }catch(Exception e){
            
        }
        return validador;
    }
    
    public Peliculas BuscarContenido(String nombre_contenido){
        JOptionPane.showMessageDialog(null, nombre_contenido);
        try{
            Statement smtm = _cn.createStatement();
            
            String query = "CALL BuscarContenido('"+nombre_contenido+"')";
            ResultSet result = smtm.executeQuery(query);
            
            while (result.next()){
                Peliculas cont = new Peliculas ();
                cont.setId(result.getInt("id"));
                cont.setNombre(result.getString("nombre"));
                cont.setCategoria(result.getString("categoria"));
                cont.setPosters(result.getString("posters"));
                cont.setDescripcion(result.getString("descripcion"));
                cont.setEstreno(result.getString("estreno"));
                JOptionPane.showMessageDialog(null, result.getString("nombre"));
                return cont;
            }
            result.close();
            smtm.close();          
        }catch(Exception e){
            
        }
        return null;
    }
    
        public int EliminarFavorito(int usuario, int pelicula){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String query = "Call EliminarFavorito("+usuario+", "+pelicula+")";
            resultado = smtm.executeUpdate(query);
            return resultado;
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
}
