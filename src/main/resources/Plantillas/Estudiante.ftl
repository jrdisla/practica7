<!DOCTYPE html>
<html>

    <head>
        <title>Segunda Práctica</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    </head>

    <body>


    <div class="panel panel-default">

        <div class="panel-heading" style="clear: both; height: 40px">

            <h3 class="panel-title" style="float: left">Lista de estudiantes</h3>
            <a href="/Nuevo" style="float: right">Nuevo Estudiante</a>

        </div>

        <div class="panel-body">

            <table class="table table-bordered">
                <tr>
                    <th class="text-center">Matricula</th>
                    <th class="text-center">Nombre</th>
                    <th class="text-center">Apellido</th>
                    <th class="text-center">Telefono</th>
                    <th class="text-center">Visualizar</th>
                    <th class="text-center">Modificar</th>
                    <th class="text-center">Eliminar</th>
                </tr>
                <#list estudiantes as est>
                <tr>
                    <td class="text-center">${est.getMatricula()?string["0"]}</td>
                    <td class="text-center">${est.getNombre()}</td>
                    <td class="text-center">${est.getApellido()}</td>
                    <td class="text-center">${est.getTelefono()}</td>
                    <td><button style="margin: auto; display: block" class="btn btn-default btn-sm" onclick="document.location='/visualizar/${est.getMatricula()?string["0"]}'"><span class="glyphicon glyphicon-user"></span> </button></td>
                    <td><button style="margin: auto; display: block" class="btn btn-default btn-sm" onclick="document.location='/Modificar/${est.getMatricula()?string["0"]}'"><span class="glyphicon glyphicon-pencil"></span></button></td>
                    <td><button style="margin: auto; display: block" class="btn btn-default btn-sm" onclick="document.location='/eliminar/${est.getMatricula()?string["0"]}'"><span class="glyphicon glyphicon-remove"></span> </button></td>
                </tr>
                </#list>

         </table>
        </div>

    </div>



    </body>
</html>