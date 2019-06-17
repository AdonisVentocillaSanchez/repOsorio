<?php 
session_start();









if (isset($_SESSION["nombre"])) {
    
} else {
    header('Location: login.php');
}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse" style="background-color: #F8C471; border-color: #F8C471;">
  <div class="container-fluid" style="background-color: #F8C471; border-color: #F8C471;">
    <div class="navbar-header" style="background-color: #F8C471; border-color: #F8C471;">
      <a class="navbar-brand" style="color: #FFFF" href="dashboard.php">Sistema de Gestion de Investigaciones</a>
    </div>
    <ul class="nav navbar-nav" >
      <li class="active" style="background-color: #FFFF"  ><a href="dashboard.php">Inicio</a></li>
      <li><a href="Regproy.php" style="color:  #FFFF" >Crear proyecto</a></li>
      <li style="padding-left: 800px"><a href="salir.php" style="color:  #FFFF" >Cerrar la sesión</a></li>
    </ul>
  </div>
</nav>

</body>
</html>
<?
 ?>