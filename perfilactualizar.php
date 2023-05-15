<?php

include("conexionadmin.php");
    $con=conectar();

$correo=$_POST['correo'];
$pass=$_POST['pass'];
$usu=$_POST['usu'];

$sql="UPDATE login SET  pass='$pass',usu='$usu' WHERE correo='$correo'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: principaladmin.php");
    }
?>