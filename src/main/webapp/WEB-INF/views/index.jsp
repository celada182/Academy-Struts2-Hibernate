<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Academia</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<div class="row text-center">
			<br>
			<div class="col-md-6 text-center">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a>Cursos</a></li>
					<li><a href="cursos/todos">Ver Cursos</a></li>
					<li><a href="cursos/nuevo">Añadir Curso</a></li>
				</ul>
			</div>
			<div class="col-md-6 text-center">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a>Alumnos</a></li>
					<li><a href="alumnos/todos">Ver Alumnos</a></li>
					<li><a href="alumnos/nuevo">Añadir Alumno</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>