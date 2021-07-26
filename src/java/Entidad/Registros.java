/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author Oriel Delgado
 */
public class Registros {
    private int Persona_id;
    private String Titulo;
    private int Seccion_id;
    private int Titulo_id;
    private int Categoria_id;
    private String Nombre_categoria;
    private String Fecha_modificacion;

    public String getFecha_modificacion() {
        return Fecha_modificacion;
    }

    public void setFecha_modificacion(String Fecha_modificacion) {
        this.Fecha_modificacion = Fecha_modificacion;
    }
    

    public String getNombre_categoria() {
        return Nombre_categoria;
    }

    public void setNombre_categoria(String Nombre_categoria) {
        this.Nombre_categoria = Nombre_categoria;
    }

    
    public int getTitulo_id() {
        return Titulo_id;
    }

    public void setTitulo_id(int Titulo_id) {
        this.Titulo_id = Titulo_id;
    }

    public int getCategoria_id() {
        return Categoria_id;
    }

    public void setCategoria_id(int Categoria_id) {
        this.Categoria_id = Categoria_id;
    }
    
    public int getPersona_id() {
        return Persona_id;
    }

    public void setPersona_id(int Persona_id) {
        this.Persona_id = Persona_id;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public int getSeccion_id() {
        return Seccion_id;
    }

    public void setSeccion_id(int Seccion_id) {
        this.Seccion_id = Seccion_id;
    }
    
    
}
