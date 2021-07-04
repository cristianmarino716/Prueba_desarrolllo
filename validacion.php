<?php
include ("conexion.php"); 
$con=conectar();

$materia=$_POST['materia'];
$totalcreditos=0;
for ($i=0;$i<count($materia);$i++) {     
$numero=$materia[$i];

if($materia[$i] <> 0){
$conteo_creditos=$con->query("select * from materia where numero_creditos=$materia[$i]");  


  while($userd = mysqli_fetch_array($conteo_creditos)){
    $creditos=$userd['numero_creditos'];
   
    $totalcreditos += $userd['numero_creditos'];
    } 
}

}
echo $totalcreditos;
?>
  


