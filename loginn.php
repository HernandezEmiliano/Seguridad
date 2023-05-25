



<?php

include('conec.php');
/*  BORRAR EL COMENTADO PARA SOLUCIONAR PROBLEMA
$correo = $_POST["txtcorreo"];
$pass 	= $_POST["txtpassword"];

// Para iniciar sesión
$queryusuario = $conn->prepare("SELECT * FROM login WHERE correo = ? AND pass = ? AND usu = 'Admin'");
$queryusuario->bind_param("ss", $correo, $pass);
$queryusuario->execute();
$queryusuario->store_result();
$nr = $queryusuario->num_rows;

$queryusuario2 = $conn->prepare("SELECT * FROM login WHERE correo = ? AND pass = ?");
$queryusuario2->bind_param("ss", $correo, $pass);
$queryusuario2->execute();
$queryusuario2->store_result();
$nr2 = $queryusuario2->num_rows;

if ($nr == 1) {
    echo "<script> alert('Bienvenido Administrador');window.location= 'administrador.php' </script>";
} else {
    if ($nr2 == 1) {
        echo "<script> alert('Bienvenido Cliente: $correo');window.location= 'usuario.php' </script>";
    } else {
        echo "<script> alert('Correo o contraseña incorrecta');window.location= 'login.html' </script>";
    }
}

$queryusuario->close();
$queryusuario2->close();
*/


$correo = $_POST["txtcorreo"];
$pass 	= $_POST["txtpassword"];


//Para iniciar sesión

//BORRAR ESTO DESPUÉS DE DESCOMENTAR LO DE ARRIBA

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