import java.util.List;

/**
 * Created by darle on 5/31/2017.
 */
public class Estudiante {

    private String nombre;
    private int matricula;
    private String apellido;
    private String telefono;

    private List<Estudiante> estudiantes;

    public Estudiante(int matricula, String nombre , String apellido, String telefono) {
        this.nombre = nombre;
        this.matricula = matricula;
        this.apellido = apellido;
        this.telefono = telefono;
    }

    public Estudiante() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }


    public List<Estudiante> getEstudiantes() {
        return estudiantes;
    }

    public void setEstudiantes(List<Estudiante> estudiantes) {
        this.estudiantes = estudiantes;
    }
}
