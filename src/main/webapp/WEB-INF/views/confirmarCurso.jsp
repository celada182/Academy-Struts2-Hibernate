<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<div class="row">
			<div class="col-md-2">
				<br>
				<br>
				<br>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a>Cursos</a></li>
					<li><a href="../cursos/todos">Ver Cursos</a></li>
					<li><a href="../cursos/nuevo">Añadir Curso</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a>Alumnos</a></li>
					<li><a href="todos">Ver Alumnos</a></li>
					<li><a href="nuevo">Añadir Alumno</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<h2>Confirmar Curso</h2>
				<hr>
				<h4>
					<s:property value="curso.nombre" />
				</h4>
				<p>
					Fecha Inicio:
					<s:property value="curso.fechainicio" />
				</p>
				<p>
					Fecha Final:
					<s:property value="curso.fechafinal" />
				</p>
				<p>
					Plazas libres:
					<s:property value="curso.plazas" />
				</p>
				<hr>
				<h4>Dato de Alumno</h4>
				<p>
					<s:property value="alumno.nombre" />
					<s:property value="alumno.apellido1" />
					<s:property value="alumno.apellido2" />
				</p>
				<a
					href="inscribir?curso_id=<s:property value="curso.id"/>&alumno_id=<s:property value="alumno.id"/>"><button
						class="btn btn-default">Confirmar</button></a> <a href="todos"><button
						class="btn btn-default">Cancelar</button></a>
			</div>
		</div>
	</div>
</body>
</html>