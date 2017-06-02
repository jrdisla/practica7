<!DOCTYPE html>
<html>

<head>
    <title>Modificar Estudiante</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="panel panel-default">

        <div class="panel-heading">

            <h3 class="panel-title">Modificar Estudiante</h3>

        </div>

        <div class="panel-body" style="text-align: center">

            <form action="/modificando" method="post">
                <div class="row">
                    <div class="form-group">
                        <label>Matricula: </label>
                        <input name="matriculamod" type="text" class="form-control" value="${estudiante.getMatricula()?string["0"]}" style="width: 200px; margin: auto; display: block"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label>Nombre: </label>
                        <input name="nombremod" type="text" class="form-control" value="${estudiante.getNombre()}" style="width: 200px; margin: auto; display: block"/>
                    </div>
                </div>
                <div class="form-group">
                    <label>Apellido: </label>
                    <input name="apellidomod" type="text" class="form-control" value="${estudiante.getApellido()}" style="width: 200px; margin: auto; display: block"/>
                </div>
                <div class="form-group">
                    <label>Telefono: </label>
                    <input name="telefonomod" type="text" class="form-control" value="${estudiante.getTelefono()}" style="width: 200px; margin: auto; display: block"/>
                </div>
                <button name="Modif" type="submit" >Actualizar</button>
             </form>

        </div>
    </div>
</body>

</html>