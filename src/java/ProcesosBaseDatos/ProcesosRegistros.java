
package ProcesosBaseDatos;

import Entidad.Registros;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ProcesosRegistros {
    
    Connection _cn;
    
    public ProcesosRegistros(){
        _cn = new Conexion().OpenDb();
    }
    
    public int AgregarRegistro(Registros reg){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String queryid = "SELECT id FROM peliculas WHERE nombre = '"+reg.getTitulo()+"'";
            int id_contenido = 0;
            
            ResultSet result = smtm.executeQuery(queryid);
            while(result.next()){
                id_contenido = result.getInt("id");
            }
            String query = "CALL CrearRegistros ("+id_contenido+", "+reg.getPersona_id()+", '"+reg.getTitulo()+"', "+reg.getCategoria_id()+", "+reg.getSeccion_id()+")";
            resultado = smtm.executeUpdate(query);
            smtm.close();
        }catch(Exception e){
             int x = 1;
        }
        return resultado;
    }
    
    public List<Registros> ActualizarRegistro (){
        
        try{
            Statement smtm = _cn.createStatement();
            List<Registros> log = new ArrayList<>();
            
            String query = "CALL UpdateLog ()";
            
            ResultSet result =smtm.executeQuery(query);
            
            while (result.next()){
                Registros reg = new Registros();
                reg.setTitulo_id(result.getInt("titulo_id"));
                reg.setPersona_id(result.getInt("usuario_id"));
                reg.setNombre_categoria(result.getString("categoria"));
                reg.setFecha_modificacion(result.getString("modificacion"));
                reg.setTitulo(result.getString("titulo"));
                log.add(reg);
            }
            
            result.close();
            smtm.close();
            return log;
            
        }catch(Exception e){
            int x = 5;
        }
        return null;
    }
}