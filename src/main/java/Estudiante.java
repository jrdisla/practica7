import java.util.List;

/**
 * Created by darle on 5/31/2017.
 */
public class Estudiante {

    private int matricula;
    private String name;
    private String lastname;
    private String tel;

    public Estudiante(int matricula, String name, String lastname, String tel) {
        this.matricula = matricula;
        this.name = name;
        this.lastname = lastname;
        this.tel = tel;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getMatricula() {

        return matricula;
    }

    public String getName() {
        return name;
    }

    public String getLastname() {
        return lastname;
    }

    public String getTel() {
        return tel;
    }
}
