<?php

include('db.php');

$usuario=$_POST['usuario'];
$contraseña=$_POST['password'];




$consulta="SELECT*FROM login where usuario='$usuario' and password='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("location:home.php");
}else{
    
    
    include("index.html");
    ?>
    <h1 class="bad">Error en la autenticacion</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);

?>