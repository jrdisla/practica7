import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.Spark;
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

        Spark.port(getHerokuAssignedPort());

        Spark.staticFileLocation("/public");



        new ManejadorPlantilla().startApp();

    }

    static int getHerokuAssignedPort() {
        ProcessBuilder processBuilder = new ProcessBuilder();
        if (processBuilder.environment().get("PORT") != null) {
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567; //return default port if heroku-port isn't set (i.e. on localhost)
    }




}
