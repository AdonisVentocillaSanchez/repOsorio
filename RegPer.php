<?php 
include("cabeza.php");
session_start();

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Vertical (basic) form</h2>
  <form action="conexion.php" method="post">
    <div class="form-group">
      <label for="email">usuario:</label>
      <input type="text" class="form-control" id="usuario" placeholder="Enter usuario" name="usuario">
    </div>
    <div class="form-group">
      <label for="email">clave:</label>
      <input type="password" class="form-control" id="email" placeholder="Enter clave" name="clave">
    </div>
    <div class="form-group">
      <label for="email">tipo de usuario id:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter tipo de usuario id" name="tipousu">
    </div>
    <div class="form-group">
      <label for="email">persona id:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter personaid" name="personaid">
    </div>
    <div class="form-group">
      <label for="email">Estado:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Estado" name="estado">
    </div>
    <div class="form-group">
      <label for="email">Nombres:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Nombres" name="nombres">
    </div>
    <div class="form-group">
      <label for="text">Apellido:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter Apellido" name="apellidos">
    </div>
    <div class="form-group">
      <label for="pwd">fecha de nacimiento:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter fecha de nacimiento" name="fechanaci">
    </div>
    <div class="form-group">
      <label for="pwd">correo:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter correo" name="correo">
    </div>
    <div class="form-group">
      <label for="pwd">telefono</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter telefono" name="telefono">
    </div>

    <button type="submit" class="btn btn-default" name="instruccion" value="registrarper">Registrar</button>
  </form>
</div>

</body>
</html>
