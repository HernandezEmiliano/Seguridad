<?php

include('conec.php');

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
?>