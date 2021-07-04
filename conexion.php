<?php
function conectar(){

$user="root";
$pass="";
$server="localhost";
$db="horario";
$con=mysqli_connect($server, $user, $pass, $db);

return $con;
}



?>