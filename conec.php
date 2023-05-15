<?php
$conn = new mysqli("localhost:3307","root","","salosnoc");
	
	if($conn->connect_errno)
	{
		echo "No hay conexión: (" . $conn->connect_errno . ") " . $conn->connect_error;
	}
?>