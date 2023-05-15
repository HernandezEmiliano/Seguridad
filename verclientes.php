<?php
include 'templates/inicioadmin.php';

$conex = new mysqli("localhost:3307", "root", "", "salosnoc");
?>


<link rel="stylesheet" href="verclientes.css">

<div class="col-lg-8 table-responsive mb-2">
<div id="main-container">
<table>
    <thead>
        <tr>
            <td>Id</td>
            <td>Correo</td>
            
            
        </tr>
    </thead>
    <?php
    $sql = "SELECT * FROM login";
    $result = mysqli_query($conex, $sql);

    while ($mos = mysqli_fetch_array($result)) {
    ?>
        <tr>
            <td><?php echo $mos['id'] ?></td>
            <td><?php echo $mos['correo'] ?></td>
            
           
        </tr>

    <?php

    }
    ?>

</table>

</div>
</div>



<!-- Footer Start -->
<div class="container-fluid bg-dark text-secondary mt-5 pt-5">
    
    <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
        <div class="col-md-6 px-xl-0">
            <p class="mb-md-0 text-center text-md-left text-secondary">
                &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved. Designed
                by
                <a class="text-primary" href="https://htmlcodex.com">Hernandez 2022</a>
            </p>
        </div>
        <div class="col-md-6 px-xl-0 text-center text-md-right">
            <img class="img-fluid" src="img/payments.png" alt="">
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>

</html>