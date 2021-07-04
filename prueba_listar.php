<?php
include ("conexion.php"); 
$con=conectar();
//guardo los ID, de los departaments
$id=$con ->query("select id from unic_department ");
$contador=0;
$su=0;
while($deid = mysqli_fetch_array($id)){
  $arreglo[$contador]= $deid['id'];
$contador += 1;
}

for ($i=0; $i < $contador; $i++) { 
  $total=0;
  $cant_estudiante=$con ->query("select id from unic_employee where department_id=$arreglo[$i] ");
  $total=$cant_estudiante->num_rows;
 //Guardo los ID de departamentos con más de dos empleados, y guardo cantidad de empleados
    if ($total >= 2) {
    $dep_mas_dos[$su]= $arreglo[$i];
    $cantidad_empleados [$su]= $total;
    $su += 1;
    }

}
  //Aqui imprimo los nombre, con su respectiva cantidad de estudiantes. Esto  se ordena en orma ascendete, porque así son las consultas por defecto en AQl ,por tal motivo no hay que expecifiar
?>

<table border="1">
  <thead>
      <th>Nombre Departamentod</th>
      <th>Cantidad empleado</th>     
  </thead> 
  <tbody>

      <?php for ($h=0; $h <$su ; $h++){
       $seleccionando=$con ->query("select department_name from unic_department where id=$dep_mas_dos[$h] ");
       $nombre= mysqli_fetch_array($seleccionando);
        ?>
      <tr>
      <td><?php echo $nombre['department_name']; ?></td>
      <td><?php echo $cantidad_empleados[$h]; ?></td>
      </tr> 
      <?php } ?>
          
  </tbody>   
</table>