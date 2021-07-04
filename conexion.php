<?php
function conectar(){

$user="root";
$pass="";
$server="localhost";
$db="departamento";
$con=mysqli_connect($server, $user, $pass, $db);

return $con;
}



?>