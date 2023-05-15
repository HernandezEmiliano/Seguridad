
<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/inicio.php';
?>

<?php
if(!empty($_SESSION['CARRITO'])) {

?>

<?php $total=0;?>
        <?php foreach($_SESSION['CARRITO'] as $indice=>$producto) { ?>


            
            <?php $total=$total+($producto ['PRECIO']*$producto ['CANTIDAD']);?>
        <?php }?>
            



        <?php }else {?>

<div class="alert alert-success" role="alert">
    no hay productos en el carrito
</div>
<?php }?>

<?php
include('conec.php');

$corr = $_POST['correo'];

$queryusuario 	= mysqli_query($conn,"SELECT * FROM envio WHERE correo = '$corr'");
$nr 			= mysqli_num_rows($queryusuario); 


if ($nr == 1)
{
$mostrar		= mysqli_fetch_array($queryusuario); 
$enviarcompra 	= $mostrar['direccion'];
$enviarcompra2 	= $mostrar['telefono'];


$paracorreo 		= $corr;
$titulo				= "Gracias por tu compra en SALOSNOC";
$mensaje			= "Has comprado un: ".$producto ['NOMBRE']."\n\nCon un precio de : "."$".$total."\n\nTu compra llegara en esta direccion: " .$enviarcompra."\n\nNos pondremos en contacto contigo a traves de este telefono: ".$enviarcompra2;
$tucorreo			= "From: guez.emilio92@gmail.com";

if(mail($paracorreo,$titulo,$mensaje,$tucorreo))
{
	echo "<script> alert('Informacion enviada');window.location= 'pagofinal.php' </script>";
}else
{
	echo "<script> alert('Error');window.location= 'index.php' </script>";
}
}
else
{
	echo "<script> alert('Gracias por la compra');window.location= 'index.php' </script>";
}



?>






