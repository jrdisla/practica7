import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static spark.Spark.get;
import static spark.Spark.port;
import static spark.Spark.post;

/**
 * Created by darle on 5/31/2017.
 */
public class Main {

    static List<Estudiante> lista = new ArrayList<Estudiante>();

    public static void main(String[] args) {

        port(getHerokuAssignedPort());

        Configuration configuration=new Configuration();
        configuration.setClassForTemplateLoading(Main.class, "/Plantillas");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);




         Estudiante es = new Estudiante();


        es.setEstudiantes(lista);



        get("/Estudiantes", (request, response) -> {


            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiantes", es.getEstudiantes());

            //enviando los parametros a la vista.
            return new ModelAndView(attributes, "Estudiante.ftl");
        }, freeMarkerEngine);

        get("/Nuevo", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "Crear.ftl");
        }, freeMarkerEngine);



        get("/eliminar/:mat", (request, response) -> {


            int id = Integer.parseInt(request.params("mat"));

            for(int i = 0; i < lista.size(); i++)
            {
                if(lista.get(i).getMatricula() == id)
                {
                    lista.remove(i);
                }
            }

            Map<String, Object> attributes = new HashMap<>();

            attributes.put("estudiantes", lista);
            return new ModelAndView(attributes, "Estudiante.ftl");
        }, freeMarkerEngine);


        get("/Modificar/:mat1", (request, response) -> {

            Estudiante student1 = lista.get(buscar(Integer.parseInt(request.params("mat1"))));

            Map<String, Object> attributes = new HashMap<>();

            attributes.put("estudiante", student1);
            return new ModelAndView(attributes, "Modificar.ftl");
        }, freeMarkerEngine);



        get("/visualizar/:mat", (request, response) -> {


            Estudiante student = lista.get(buscar(Integer.parseInt(request.params("mat"))));

            Map<String, Object> attributes = new HashMap<>();

            attributes.put("estudiante", student);
            return new ModelAndView(attributes, "Visualizar.ftl");
        }, freeMarkerEngine);



        post("/crear", (request, response) -> {

            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");

            Estudiante estudiante = new Estudiante(matricula, nombre, apellido, telefono);

            lista.add(estudiante);

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiantes", lista);


            return new ModelAndView(attributes, "Estudiante.ftl");
        }, freeMarkerEngine);





        post("/modificando", (request, response) -> {

            //int matriculaOrg = Integer.parseInt(request.params("matr"));
            int matriculamod = Integer.parseInt(request.queryParams("matriculamod"));
            String nombremod = request.queryParams("nombremod");
            String apellidomod = request.queryParams("apellidomod");
            String telefonomod = request.queryParams("telefonomod");


            for(int i = 0; i < lista.size(); i++)
            {

                if(matriculamod == lista.get(i).getMatricula())
                {

                    lista.get(i).setNombre(nombremod);
                    lista.get(i).setApellido(apellidomod);
                    lista.get(i).setTelefono(telefonomod);
                }
            }

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiantes", lista);
            return new ModelAndView(attributes, "Estudiante.ftl");
        }, freeMarkerEngine);

    }


    static int getHerokuAssignedPort() {
        ProcessBuilder processBuilder = new ProcessBuilder();
        if (processBuilder.environment().get("PORT") != null) {
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567; //return default port if heroku-port isn't set (i.e. on localhost)
    }

    static int buscar (int mat)
    {
        int index = 0;
        for (Estudiante x : lista)
        {
            if (x.getMatricula() == mat)
            {
                return index;
            }
            else{
                index++;
            }
        }

        return -1;


    }


}
