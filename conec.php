<?php
$conn = new mysqli("localhost:8889","root","root","salosnoc");
	
	if($conn->connect_errno)
	{
		echo "No hay conexión: (" . $conn->connect_errno . ") " . $conn->connect_error;
	}
?>