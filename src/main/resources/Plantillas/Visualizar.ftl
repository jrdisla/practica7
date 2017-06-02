<!DOCTYPE html>
<html>

<head>
    <title>Datos del estudiante</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="panel panel-default">

    <div class="panel-heading" style="clear: both; height: 40px">

        <h3 class="panel-title" style="float: left">Datos del estudiante</h3>
        <a href="/Estudiantes" style="float: right">Ver todos</a>

    </div>

    <div class="panel-body" style="text-align: center">

        <form>
            <div class="row">
                <div class="form-group">
                    <label>Matricula: </label>
                    <input disabled name="matriculamod" type="text" class="form-control" value="${estudiante.getMatricula()?string["0"]}" style="width: 200px; margin: auto; display: block"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label>Nombre: </label>
                    <input disabled name="nombremod" type="text" class="form-control" value="${estudiante.getNombre()}" style="width: 200px; margin: auto; display: block"/>
                </div>
            </div>
            <div class="form-group">
                <label>Apellido: </label>
                <input disabled name="apellidomod" type="text" class="form-control" value="${estudiante.getApellido()}" style="width: 200px; margin: auto; display: block"/>
            </div>
            <div class="form-group">
                <label>Telefono: </label>
                <input disabled name="telefonomod" type="text" class="form-control" value="${estudiante.getTelefono()}" style="width: 200px; margin: auto; display: block"/>
            </div>
            <button type="submit" onclick="document.location.href='/Modificar/${estudiante.getMatricula()?string["0"]}'">Modificar</button>
            <button type="submit" onclick="document.location='/eliminar/${estudiante.getMatricula()?string["0"]}'">Eliminar</button>
        </form>

    </div>
</div>
</body>

</html>