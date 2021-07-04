<?php

$uno=$_POST['primero'];
$dos=$_POST['segundo'];
$tres=$_POST['tercero'];
$cuatro=$_POST['cuarto'];
$cinco=$_POST['quinto'];
$seis=$_POST['sexto'];
$siete=$_POST['septimo'];
$ocho=$_POST['octavo'];
$nueve=$_POST['noveno'];
$diez=$_POST['decimo'];
 

 $lista= array($uno, $dos, $tres, $cuatro, $cinco, $seis, $siete, $ocho, $nueve, $diez);

$cuentauno=0;
$cuentados=0;
$cuentatres=0;
$cuentacuatro=0;
$cuentacinco=0;
for ($x=0;$x<count($lista); $x++){
  
       if ($lista[$x] == 1) {
              $cuentauno += 1;
      
       }

        if ($lista[$x] == 2) {
              $cuentados += 1;
      
       }
      
       if ($lista[$x] == 3) {
              $cuentatres += 1;
      
       }
       if ($lista[$x] == 4) {
              $cuentacuatro += 1;
      
       }
       if ($lista[$x] == 5) {
              $cuentacinco += 1;
      
       }
}

echo "1: ";
for ($i=0; $i<$cuentauno; $i++){
echo "*";
   }
?> <br> <?php
echo "2: ";
for ($j=0; $j<$cuentados; $j++){
echo "*";
   }
?> <br> <?php
echo "3: ";
for ($k=0; $k<$cuentatres; $k++){
echo "*";
   }
?> <br> <?php
echo "4: ";
for ($l=0; $l<$cuentacuatro; $l++){
echo "*";
   }   
?> <br> <?php   
echo "5: ";
for ($m=0; $m<$cuentacinco; $m++){
echo "*";
   } 
   
?>