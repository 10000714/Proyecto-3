<html>
  <head>
    <title>Grabar una nueva cita</title>
    <script language="javascript" type="text/javascript">
      function mandar (resultado){
        if (resultado){
          document.formularioNuevaCita.action="grabarNuevaReserva.php";
        } else {
           document.formularioNuevaCita.action="index.php";
        }
        document.formularioNuevaCita.submit();
      }
    </script>
  </head>

  <body>
    <?php
// Se incluye el miniscript de tratamiento de fechas
      include ("inc/fechas.php");
	  <input type="datetime-local"
	?>
    <form action="" method="post" name="formularioNuevaReserva" id="formularioNuevaReserva">
	  <input type="hidden" name="fechaEnCurso" id="fechaEnCurso" value="<?php echo($fechaEnCurso); ?>">
      <table width="500" border="0" cellspacing="0" cellpadding="2">
        <tr>
		  <form action="action_page.php">
			 Birthday (date and time):
			 <input type="datetime-local" name="tiempoReserva">
			</form>
        </tr>
        <tr>
          <td rowspan="3"><textarea name="asunto" cols="50" rows="5" id="asunto"></textarea></td>
        </tr>

      </table>
      <table width="500" height="44" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
          <td width="248"><input name="grabarReserva" type="button" id="grabarReserva" value="Grabar la reserva" onClick="javascript:mandar(true);"></td>
          <td width="252"><input name="anularReserva" type="button" id="anularReserva" value="Cancelar" onClick="javascript:mandar(false);"></td>
        </tr>
      </table>
  </form>
  </body>
</html>
