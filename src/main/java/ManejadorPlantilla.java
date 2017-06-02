import freemarker.template.Configuration;
import spark.template.freemarker.FreeMarkerEngine;


/**
 * Created by darle on 6/1/2017.
 */

public class ManejadorPlantilla {

    public void Start() {

        Configuration configuration = new Configuration();
        configuration.setClassForTemplateLoading(ManejadorPlantilla.class, "/Plantillas");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);




    }
}
