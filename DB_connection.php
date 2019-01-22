<?php

$host = 'smrita.mysql.database.azure.com';
$username = 'smrita@smrita';
$password = 'Sm9803013681';
$db_name = 'dacc';

//Establishes the connection
$conn = mysqli_init();
mysqli_real_connect($conn, $host, $username, $password, $db_name);

?>
