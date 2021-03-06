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
				<br> <br> <br>
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
				<h2>Lista Alumnos</h2>
				<table class="table table-striped text-center">
					<tr>
						<th class="text-center">Nombre</th>
						<th class="text-center">Apellidos</th>
						<th class="text-center">Email</th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
					<s:iterator value="alumnos" id="alumno">
						<tr>
							<td><s:property value="nombre" /></td>
							<td><s:property value="apellido1" /> <s:property
									value="apellido2" /></td>
							<td><s:property value="email" /></td>
							<td><a href="elegir?id=<s:property value="id"/>"><span
									class="glyphicon glyphicon-copy" aria-hidden="true"></span>
									Elegir Curso</a></td>
							<td><a href="cursos?id=<s:property value="id"/>"><span
									class="glyphicon glyphicon-education" aria-hidden="true"></span>
									Cursos</a></td>
							<td><a href="editar?id=<s:property value="id"/>"><span
									class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
							<td><a href="eliminar?id=<s:property value="id"/>"><span
									class="glyphicon glyphicon-trash" style="color: crimson"
									aria-hidden="true"></span></a></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
</body>
</html>