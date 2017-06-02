<!DOCTYPE html>
<html>

    <head>
        <title>Nuevo Estudiante</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

    <body>
        <div class="panel panel-default">

            <div class="panel-heading">

                <h3 class="panel-title">Nuevo Estudiante</h3>

            </div>

            <div class="panel-body" style="text-align: center">

                <form action="/crear" method="post">
                    <div class="row">
                        <div class="form-group">
                            <div class="row">
                                <label >Matricula: </label>
                                <input name="matricula" type="text" class="form-control" style="width: 200px; margin: auto; display: block" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label>Nombre: </label>
                            <input name="nombre" type="text" class="form-control" style="width: 200px;  margin: auto; display: block"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Apellido: </label>
                        <input name="apellido" type="text" class="form-control" style="width: 200px; margin: auto; display: block"/>
                    </div>
                    <div class="form-group">
                        <label>Telefono: </label>
                        <input name="telefono" type="text" class="form-control" style="width: 200px; margin: auto; display: block"/>
                    </div>
                    <button name="Enviar" type="submit" >Agregar</button>
                </form>

            </div>

        </div>
    </body>

</html>