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
					<li><a href="todos">Ver Cursos</a></li>
					<li><a href="nuevo">Añadir Curso</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a>Alumnos</a></li>
					<li><a href="../alumnos/todos">Ver Alumnos</a></li>
					<li><a href="../alumnos/nuevo">Añadir Alumno</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<h2>Edtar Curso</h2>
				<s:form action="modificar" method="POST">
					<input type="hidden" name="id"
						value="<s:property value="curso.id"/>">
					<div class="form-group">
						<label id="nombre">Nombre</label> <input type="text" name="nombre"
							id="nombre" class="form-control" required
							value="<s:property value="curso.nombre"/>">
					</div>
					<div class="form-group">
						<label id="fechainicio">Fecha Inicio</label> <input type="date"
							name="fechainicio" id="fechainicio" class="form-control" required
							value="<s:property value="curso.fechainicio"/>">
					</div>
					<div class="form-group">
						<label id="fechafinal">Fecha Final</label> <input type="date"
							name="fechafinal" id="fechafinal" class="form-control" required
							value="<s:property value="curso.fechafinal"/>">
					</div>
					<div class="form-group">
						<label id="plazas">Plazas</label> <input type="number"
							name="plazas" id="plazas" class="form-control" required min="0"
							value="<s:property value="curso.plazas"/>">
					</div>
					<input type="submit" class="btn btn-default" value="Modificar">
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>