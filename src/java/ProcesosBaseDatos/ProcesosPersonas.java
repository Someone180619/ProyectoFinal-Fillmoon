package ProcesosBaseDatos;

/**
 *
 * @author Oriel Delgado
 */

import Entidad.Personas;
import java.sql.Connection;
import java.sql.Statement;

public class ProcesosPersonas {
    
    Connection _cn;
    
    public ProcesosPersonas(){
        _cn = new Conexion().OpenDb();
    }
    
    public int RegistrarPersona (Personas persona){
        int resultado = 0;
        try{
            
            Statement smtm = _cn.createStatement();
            String query = "INSERT INTO personas (nombre, apellido, correo)";
            query += "VALUES('"+persona.getNombre()+"','"+persona.getApellido()+"', '"+persona.getEmail()+"')";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
            
        }catch(Exception e){}
        
        return resultado;
    }
}
