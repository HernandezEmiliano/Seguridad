<?php
function conectar(){
    $host="localhost:8889";
    $user="root";
    $pass="root";

    $bd="salosnoc";

    $con=mysqli_connect($host,$user,$pass);

    mysqli_select_db($con,$bd);

    return $con;
}
?>