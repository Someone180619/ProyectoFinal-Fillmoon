
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
            String query = "Call AgregarPelicula('"+pelicula.getNombre()+"', "+pelicula.getCategoria_id()+", '"+pelicula.getPosters()+"', '"+pelicula.getBackdrops()+"', '"+pelicula.getEstreno()+"', '"+pelicula.getDescripcion()+"')";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
    
    public List<Peliculas> LlamarPeliculas (int id){
        try{
            Statement smtm = _cn.createStatement();
            List<Peliculas> peliculas = new ArrayList<>();
            
            String query = "CALL LlamarPeliculas('"+id+"')";
            
            ResultSet result = smtm.executeQuery(query);

            while (result.next()){
                Peliculas peli = new Peliculas ();
                peli.setId(result.getInt("id"));
                peli.setNombre(result.getString("nombre"));
                peli.setPosters(result.getString("posters"));
                peli.setBackdrops(result.getString("backdrops"));
                peli.setEstreno(result.getString("estreno"));
                peli.setDescripcion(result.getString("descripcion"));
                peli.setCategoria(result.getString("categoria"));
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
    
    public List<Peliculas> FiltrarCategoria (int filtro){
        try{
            Statement smtm = _cn.createStatement();
            List<Peliculas> peliculas = new ArrayList<>();
            
            String query = "CALL FiltrarCategoria('"+filtro+"')";
            
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
}
