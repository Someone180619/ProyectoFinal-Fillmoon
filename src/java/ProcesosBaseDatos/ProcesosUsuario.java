
package ProcesosBaseDatos;

import Entidad.Usuarios;
import Entidad.Personas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class ProcesosUsuario {
    Connection _cn;
    
    public ProcesosUsuario(){
        _cn = new Conexion().OpenDb();
    }
    
    public int GuardarUsuario (Usuarios usuario, String correo){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String query_id = "SELECT id FROM personas WHERE correo = '"+correo+"'";
            int id_persona = 0;
            
            ResultSet result = smtm.executeQuery(query_id);
            while (result.next()){
                id_persona = result.getInt("id");
            }
            
            String query = "INSERT INTO usuarios (persona_id, usuario, contrasena) VALUES ('"+id_persona+"', '"+usuario.getUsername()+"', '"+usuario.getPassword()+"')";

            resultado = smtm.executeUpdate(query);
            smtm.close();
            
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
    
    public Personas ValidarLogin (Usuarios usuario){
        try{
            Statement stmt = _cn.createStatement();
            String query = "CALL check_user ('"+usuario.getUsername()+"', '"+usuario.getPassword()+"')";
            ResultSet result = stmt.executeQuery(query);
            while (result.next()){
                Personas persona = new Personas();
                persona.setNombre(result.getString("nombre"));
                persona.setApellido(result.getString("apellido"));
                persona.setEmail(result.getString("correo"));
                persona.setId(result.getInt("id"));
                persona.setProfile_img(result.getString("profile_img"));
                return persona;
            }
            result.close();
            stmt.close();
        }catch(Exception e){
            
        }
        return null;
    }
    
    public int CambiarNombreUsuario(Usuarios usuario, Personas persona){
        int resultado = 0;
        try{
            Statement smtm = _cn.createStatement();
            String query = "CALL Actualizar_nombre ("+persona.getId()+", '"+usuario.getUsername()+"')";
            
            resultado = smtm.executeUpdate(query);
             return resultado;
        }catch(Exception e){}
        return resultado; 
    }
    
    public int CambiarContrasena(Usuarios usuario, Personas persona){
        int resultado = 0;
        try{
            Statement smtm = _cn.createStatement();
            String query = "CALL Actualizar_contrasena ("+persona.getId()+", '"+usuario.getPassword()+"')";
            
            resultado = smtm.executeUpdate(query);
             return resultado;
        }catch(Exception e){}
        return resultado; 
    }
}
