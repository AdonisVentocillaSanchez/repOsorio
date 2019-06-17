

    <!DOCTYPE html>
  <html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
  </head>
  <body>
<div class="login-page">
  <div class="form">

    <form class="login-form" action="conexion.php" method="post">
      <input type="text" name="user" placeholder="username"/>
      <input type="password" name="clave" placeholder="password"/>
      <button type="submit" name="instruccion" value="entrar">login</button>
      <?php
       if(isset($_GET["fallo"]) && $_GET["fallo"] == 'true')
       {
          echo "<div style='color:red'>Usuario o contraseña invalido </div>";
       }
     ?>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
 </body>
  </html>

