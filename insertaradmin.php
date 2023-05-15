<?php
include("conexionadmin.php");
$con=conectar();

$id=$_POST['id'];
$correo=$_POST['correo'];
$pass=$_POST['pass'];
$usu=$_POST['usu'];



$sql="INSERT INTO login  VALUES (NULL, '$correo', '$pass', '$usu')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: principaladmin.php");
    
}else {
    echo("error");
}
?>