 <?php 



 	$user=htmlentities(addslashes($_POST["user"]));
 	$clave=htmlentities(addslashes($_POST["clave"]));
 	$instruccion=htmlentities(addslashes($_POST["instruccion"]));
#-----------------------------------------------------------------------
 	$titulo=htmlentities(addslashes($_POST["titulo"]));
 	$descripcion=htmlentities(addslashes($_POST["descripcion"]));
 	$fecha_ini=htmlentities(addslashes($_POST["fecha_ini"]));
 	$fecha_fin=htmlentities(addslashes($_POST["fecha_fin"]));
 	$presupuesto=htmlentities(addslashes($_POST["presupuesto"]));
 	$Instituciones_id=htmlentities(addslashes($_POST["Instituciones_id"]));
 	$obj_general=htmlentities(addslashes($_POST["obj_general"]));
 	$obj_especificos=htmlentities(addslashes($_POST["obj_especificos"]));
 	$Grupo_Inv_id=htmlentities(addslashes($_POST["Grupo_Inv_id"]));
 	$Linea_Inv_id=htmlentities(addslashes($_POST["Linea_Inv_id"]));
#-------------------------------------------------------------------------
 	$usuario=htmlentities(addslashes($_POST["usuario"]));
 	$clave=htmlentities(addslashes($_POST["clave"]));
 	$tipousu=htmlentities(addslashes($_POST["tipousu"]));
 	$personaid=htmlentities(addslashes($_POST["personaid"]));
 	$estado=htmlentities(addslashes($_POST["estado"]));
 	$nombres=htmlentities(addslashes($_POST["nombres"]));
 	$apellidos=htmlentities(addslashes($_POST["apellidos"]));
 	$fechanaci=htmlentities(addslashes($_POST["fechanaci"]));
 	$correo=htmlentities(addslashes($_POST["correo"]));
 	$telefono=htmlentities(addslashes($_POST["telefono"]));

	try {
		$conexion=new PDO("mysql:host=178.32.158.243; dbname=repositoriobd", "programadores","j474o140F1TzfhMa");
		$conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		if ($instruccion=="entrar") {
			$consulta="SELECT * FROM `usuarios` WHERE usuario='$user' and clave='$clave' and estado='activo'";
			$resultado=$conexion->prepare($consulta);
			$resultado->execute();
			
			$numero_registro=$resultado->rowCount();
			
			if ($numero_registro!=0) {
				#vuelvo  a ejercutar la sentencia para obtener que tipo de usuario es
				$resultado->execute(array());
				$registro=$resultado->fetch(PDO::FETCH_NUM, PDO::FETCH_ORI_NEXT) ;
				switch ($registro[3]) {
					case '1':
						header('Location: dashboard.php');
						session_start();
						$user=htmlentities(addslashes($_POST["user"]));
						$_SESSION["nombre"] =$user;
						break;
					case '2':
						echo "soy director ... pantalla en desarrollo";
						break;
					
					default:
						# code...
						break;
				}
			}else{
				 header("location: login.php?fallo=true");
			}
		

				
			
			}



		if ($instruccion=="registrarper") {
			$consulta="INSERT INTO `personas` (`id`, `nombres`, `apellidos`, `fecha_nac`, `correo`, `telefono`) VALUES (NULL, '$nombres', '$apellidos', '$fechanaci', '$correo', '$telefono');INSERT INTO `usuarios`(`id`, `usuario`, `clave`, `tipo_usuario_id`, `personas_id`, `estado`) VALUES (NULL,'$usuario','$clave',1,5,'$estado');";

			$resultado=$conexion->prepare($consulta);

			$resultado->execute();
			header('Location: RegPer.php');
		}
		
		
	} catch (Exception $e) {
		die("Error: ".$e->GetMessage());
	}finally{
		$conexion=null;
		}
 ?>


