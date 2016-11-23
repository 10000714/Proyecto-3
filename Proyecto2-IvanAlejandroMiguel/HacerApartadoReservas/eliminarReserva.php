<?php
/* Si se intenta acceder sin haber seleccionado una cita, se regresa al index. */
  if (!isset($_POST["reservaSeleccionada"])) header("Location: index.html");
?>
<html>
  </head>
  <?php
// Se incluye el miniscript de tratamiento de fechas
    include ("inc/fechas.php");
// Se incluye el miniscript que abre la base de datos.
    include ("inc/usarBD.php");
  ?>
  <script language="javascript" type="text/javascript">
    function volver(){
      document.retorno.submit();
    }
  </script>
  </head>

  <body onLoad="javascript:volver();">
  <?php
/* Se crea una consulta para eliminar la reserva que se haya seleccionado en la página principal.
La reserva se designa aa través del campo 'idReserva', cuyo valor queda asignado a los botones de
radio de la pagina index.php (ver código).*/
    $consulta="DELETE FROM tbl_reserva WHERE id_reserva='".$_POST["reservaSeleccionada"]."';";
// Se ejecuta la consulta de eliminación.
    $hacerConsulta=mysqli_query($consulta, $conexion);
// Se liberan recursos y se cierra la base de datos.
    @mysql_free_result ($hacerConsulta);
    mysql_close ($conexion);
  ?>
  <form action="index.php" method="post" name="retorno" id="retorno">
    <input type="hidden" name="fechaEnCurso" id="fechaEnCurso" value="<?php echo ($fechaEnCurso); ?>">
  </form>
  </body>
</html>

