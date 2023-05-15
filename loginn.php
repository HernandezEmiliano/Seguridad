<?php

include('conec.php');



$correo = $_POST["txtcorreo"];
$pass 	= $_POST["txtpassword"];


//Para iniciar sesión

$queryusuario = mysqli_query($conn,"SELECT * FROM login WHERE correo ='$correo' and pass = '$pass' and usu = 'Admin'");
$nr 		= mysqli_num_rows($queryusuario);  
$queryusuario2 = mysqli_query($conn,"SELECT * FROM login WHERE correo ='$correo' and pass = '$pass'");
$nr2 		= mysqli_num_rows($queryusuario2);
if ($nr == 1)  
	{ 
	echo	"<script> alert('Bienvenido Administrador');window.location= 'administrador.php' </script>";
	
}
else
	{
		if($nr2 == 1)
	echo "<script> alert('Bienvenido Cliente: $correo');window.location= 'usuario.php' </script>";

	else{
		
	echo "<script> alert('Correo o contraseña incorrecta');window.location= 'login.html' </script>";
	}
}



	


?>