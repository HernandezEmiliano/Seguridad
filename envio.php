<?php
//registrar
$conexion=mysqli_connect("localhost:3307","root","","salosnoc");




$nomb = $_POST["nombre"];
$apell = $_POST["apellidos"];
$ciu = $_POST["ciudad"];
$est = $_POST["estado"];
$tel = $_POST["telefono"];
$dir = $_POST["direccion"];
$postal = $_POST["cod_postal"];
$corr 	= $_POST["correo"];


$consulta = "INSERT INTO `envio` VALUES (NULL, '$nomb','$apell','$ciu','$est',$tel,'$dir',$postal,'$corr')";
	
$res=mysqli_query($conexion,$consulta);    

if($res){
    echo "<script> alert('Datos Registrados');window.location= 'pagar.php' </script>";
}

?>


