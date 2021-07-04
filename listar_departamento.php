<?php
include ("conexion.php"); 
$con=conectar();

//$cedula=$_POST['cedula'];
$datos=$con->query("select * from unic_department ");
$cantidad=$datos->num_rows;

echo $cantidad;


/*$id=$con ->query("select id from unic_department ");
$contador=0;
while($deid = mysqli_fetch_array($id)){
  $arreglo[$contador]= $deid['id'];
$contador += 1;
}

for ($i=0; $i < $contador; $i++) { 
  echo $arreglo[$i];
  $cant_estudiante=$con ->query("select * from unic_employec where department_id=$arreglo[$i] ");
if (mysql_num_rows($cant_estudiante)>1) {
  $final[$dosma]=$arreglo[$i];
$dosma += 1;
}
}*/




?>

<table border="1">
  <thead>
      <th>id</th>
      <th>Name</th>
      <th>City</th>
     
  </thead> 
  <tbody>

      <a href="formulario.html"> Volver</a>
      <?php while($user = mysqli_fetch_array($datos)){?>
      <tr>
      <td><?php echo $user['id'] ?></td>
      <td><?php echo $user['department_name'] ?></td>
      <td><?php echo $user['department_city'] ?></td>
  
      </tr> 
      <?php } ?>
          
  </tbody>   
</table>