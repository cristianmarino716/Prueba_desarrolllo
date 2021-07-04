<?php
include ("conexion.php"); 
$con=conectar();
$datos=$con->query("select * from materia");
?>
seleccione su horario!
<html>
<head><title>Horario</title></head>
<body>
 <form action="validacion.php" method="post">
<table border="1">
  <thead>
      <th>Materia</th>
      <th>Horario</th>    
  </thead> 
 
 <tbody>

    
      <?php
//aquí listo las materias de la base de datos y muestro en pantalla, 
       $contador=0;
       while($user = mysqli_fetch_array($datos)){?>
      <tr>
      <td><?php echo $user['nombre'];
      $numero=$user['id'];
      
       ?>
       
      </td>
      <td>

       
        <select name="materia[]">
            <option value="0">Seleccione</option>
            <?php 
            //mediante un select, listo los horarios de cada materia
            $query = $con -> query ("SELECT * FROM horario where id_materia=$numero");
            while($userd = mysqli_fetch_array($query)){?>
 
            <option value="<?php echo $numero ?>"><?php echo $userd['horario_dia'];
            echo$userd['horario_hora'];
            ?></option>
             <?php } ?>
        </select>
     </td>
      </tr> 
      <?php } ?>


  </tbody>  

</table>
<input type="submit" value="Crear Horario">
</form>
</body>
</thml>
