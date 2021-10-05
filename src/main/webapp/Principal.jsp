<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>Principal</title>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
        <a style "color:white" class="navbar-toggler"><span class="navbar-toggler-icon"> </span></a>
        <div class="dropdown">
            <a style="color:white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesión</a>
            <div class="dropdown-menu text-center">
                <a><img src="img/foto.jpg" height="80" width="80"></a><br>
                <a>${nom}</a>
                <a>${correo}</a>
            <div class="dropdown-divider"></div>
                <a href="Controlador?accion=Salir" class="dropdown-item">Salir</a>
            </div>
        </div>
 
    </nav>
    <div class="container mt-4">
        <h1>Bienvenido al sistema..<strong>Usuario: ${nom}</strong></h1>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
 
</body>
</html>