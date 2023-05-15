<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/inicio.php';
include 'global/conexion.php';
?>

<?php 
if($_POST){
    $total=0;
    $SID=session_id();//devolver una clave de sesion
   
    foreach($_SESSION['CARRITO'] as $indice=>$producto){ //recolectar la informacion y almacenar en el total

        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']); //almacenar total
    }

    $sentencia=$pdo->prepare("INSERT INTO `tblventas` 
    (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`)
     VALUES (NULL, :ClaveTransaccion , '', NOW() , '', :Total, 'pendiente');");
     
     $sentencia->bindParam(":ClaveTransaccion",$SID);
     
     $sentencia->bindParam(":Total" ,$total);
     $sentencia->execute();
     $idVenta=$pdo->lastInsertId();


     foreach($_SESSION['CARRITO'] as $indice=>$producto){ 

        $sentencia=$pdo->prepare("INSERT INTO `tbldetalleventa`
         (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) 
        VALUES (NULL, :IDVENTA, :IDPRODUCTO, :PRECIOUNITARIO, :CANTIDAD, '0');");

        $sentencia->bindParam(":IDVENTA",$idVenta);
        $sentencia->bindParam(":IDPRODUCTO",$producto['ID']);
        $sentencia->bindParam(":PRECIOUNITARIO" ,$producto['PRECIO']);
        $sentencia->bindParam(":CANTIDAD" ,$producto['CANTIDAD']);
        $sentencia->execute();

     }
   // echo "<h3>".$total."</h3>";
}
?>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagar la cantidad de:
    <h4><?php echo number_format($total,2); ?></h4>
    
    </p>
    <p>
        <strong>(En caso de aclaraciones comunicarte a: guez.emilio92@gmail.com)</strong>
    </p>
</div>




<div class="container-fluid">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Datos de Envio</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form bg-light p-30">
                    <div ></div>
                    <form  novalidate="novalidate" method="POST" action="envio.php" >
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Nombre" name="nombre"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Apellidos" name="apellidos"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Ciudad" name="ciudad"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Estado" name="estado"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="numeric" class="form-control" id="name" placeholder="Telefono" name="telefono"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Direccion" name="direccion"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Codigo Postal" name="cod_postal"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Correo Electronico" name="correo"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" >Registrar datos para recibir compra</button>
                        </div>
                    </form>
                </div>
            </div>
           
        </div>
    </div>
    <!-- Contact End -->


    <div class="container-fluid">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Informacion de mi compra</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form bg-light p-30">
                    <div ></div>
                    <form  novalidate="novalidate" method="POST" action="pagofinal.php" >
                    <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Correo Electronico" name="correo"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" >Enviar informacion</button>
                        </div>
                    </form>
                </div>
            </div>
           
        </div>
    </div>



    <div id="paypal-button-container" class="text-center"></div>
<center>
<!-- Set up a container element for the button -->
<div id="paypal-button-container"></div>

<!-- Include the PayPal JavaScript SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>

<script>
    // Render the PayPal button into #paypal-button-container
    paypal.Buttons({

        // Set up the transaction
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '88.44'
                    }
                }]
            });
        },

        // Finalize the transaction
        onApprove: function(data, actions) {
            return actions.order.capture().then(function(orderData) {
                // Successful capture! For demo purposes:
                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                var transaction = orderData.purchase_units[0].payments.captures[0];
                alert('Transaction '+ transaction.status + ': ' + transaction.id + '\n\nSee console for all available details');

                // Replace the above to show a success message within this page, e.g.
                // const element = document.getElementById('paypal-button-container');
                // element.innerHTML = '';
                // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                // Or go to another URL:  actions.redirect('thank_you.html');
            });
        }


    }).render('#paypal-button-container');
</script>

<?php
include 'templates/pie.php';
?>