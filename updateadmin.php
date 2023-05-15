<?php

include("conexionadmin.php");
$con=conectar();

$id=$_POST['id'];
$correo=$_POST['correo'];
$pass=$_POST['pass'];
$usu=$_POST['usu'];

$sql="UPDATE login SET  correo='$correo',pass='$pass',usu='$usu' WHERE id='$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: principaladmin.php");
    }
?>