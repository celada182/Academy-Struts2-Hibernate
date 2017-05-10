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
				<h2>Editar Alumno</h2>
				<s:form action="modificar" method="POST">
					<input type="hidden" name="id"
						value="<s:property value="alumno.id"/>">
					<div class="form-group">
						<label id="nombre">Nombre</label> <input type="text" name="nombre"
							id="nombre" class="form-control" required
							value="<s:property value="alumno.nombre"/>">
					</div>
					<div class="form-group">
						<label id="apellido1">Primer Apellido</label> <input type="text"
							name="apellido1" id="apellido1" class="form-control" required
							value="<s:property value="alumno.apellido1"/>">
					</div>
					<div class="form-group">
						<label id="apellido2">Segundo Apellido</label> <input type="text"
							name="apellido2" id="apellido2" class="form-control" required
							value="<s:property value="alumno.apellido2"/>">
					</div>
					<div class="form-group">
						<label id="email">Email</label> <input type="email" name="email"
							id="email" class="form-control" required
							value="<s:property value="alumno.email"/>">
					</div>
					<input type="submit" class="btn btn-default" value="Modificar">
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>