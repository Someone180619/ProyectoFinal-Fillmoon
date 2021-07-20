
package Ayudas;

/*
ERROR CODE LIST
0 => no error
1 => error de login,
2 => error de registro
3 => error de insertar datos
4 => error de actualizacion
5 => error de eliminacion
...
*/

public class Errores {
    private int error;
    
    public Errores (int error){
        this.error = error;
    }
    
    public String ErrorMessage(){
        switch (this.error){
            case 1:
                return "Datos no almacenados en el registro";
        }
        return "";
    }
}
