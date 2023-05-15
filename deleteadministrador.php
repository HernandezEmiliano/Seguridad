<?php

include("conexionadmin.php");
$con=conectar();

$id=$_GET['id'];

$sql="DELETE FROM login  WHERE id='$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: principaladmin.php");
    }
?>