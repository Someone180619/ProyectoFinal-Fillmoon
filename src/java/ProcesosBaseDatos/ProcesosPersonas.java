package ProcesosBaseDatos;


import Entidad.Personas;
import Entidad.Correo;
import java.sql.Connection;
import java.sql.Statement;
import javax.swing.JOptionPane;

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
    
    public int ActualizarImagen(Personas persona){
        int resultado = 0;
        try{
            Statement smtm = _cn.createStatement();
            String query = "CALL Actualizar_img ("+persona.getId()+", '"+persona.getProfile_img()+"')";
            
            resultado = smtm.executeUpdate(query);
            JOptionPane.showMessageDialog(null, resultado);
             return resultado;
        }catch(Exception e){}
        return resultado;
    }
    
    public int AgregarCorrespondencia (Correo correo){
        int resultado = 0;
        
        try{
            Statement smtm = _cn.createStatement();
            String query = "INSERT INTO correspondencia (persona_id, nombre, correo, asunto, contenido) VALUES ("+correo.getId()+", '"+correo.getNombre()+"', '"+correo.getEmail()+"', '"+correo.getAsunto()+"', '"+correo.getContenido()+"')";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            JOptionPane.showMessageDialog(null, resultado);
        }catch(Exception e){
            int x = 1;
        }
        
        return resultado;
    }
}
