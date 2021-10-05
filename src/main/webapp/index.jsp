<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		 <link href="css/estilos.css" rel="stylesheet" type="text/css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
		<title>Modulo Login de usuarios</title>
	</head>
	<body>
		<div class="container col-lg-3">
			<form action="Principal.jsp"><!-- ojo tener en cuenta que esta accion sera el controlador -->
				<div class="form-group" text-center>
					<img src="img/foto.jpg" height="80" width="80"/>
					<p><strong>Bienvenidos al sistema de login</strong></p>
				</div>
 
				<div class="form-group">
					<label>Nombres:</label>
					<input class="form-control" type="text" name="txtnom" placeholder="Ingrese nombres">
				</div>
				<div class="form-group">
					<label>Email:</label>
					<input type="email" name="txtCorreo" placeholder="example@gmail.com" class="form-control">
				</div>
				<div>
					<input class="btn btn-danger btn-block"type="submit" name="accion" value="Ingresar">
				</div>
			</form>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	</body>
</html>
