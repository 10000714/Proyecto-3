<html>
  <head>
    <?php
// Se incluye el miniscript de manejo de fechas.
	  include ("inc/fechas.php");
	?>
    <title>Cambio de fecha</title>
	<script language="javascript" type="text/javascript">
/* La siguiente funci�n se activa cuando se pulsa el bot�n de aceptar una nueva fecha o el de
descartar cambios para seguir con la fecha actual. Si se pulsa el de aceptar una nueva fecha,
el argumento vale true y se cambia el campo oculto de fecha al valor seleccionado por el usuario.
En caso de que el argumento valga false (si se ha pulsado en el bot�n de descarte), no se producen
cambios en el campo oculto, con lo que tiene el contenido por defecto.*/
      function enviar(cambio){
        if (cambio){
          document.getElementById("fechaEnCurso").value=document.getElementById("annio").value+"-"+document.getElementById("mes").value+"-"+document.getElementById("dia").value;
        }
		document.formularioDeCambioDeFecha.submit();
      }
/* La siguiente funci�n establece, en las listas, los valores de la fecha actual como seleccionados.*/
      function ajustarCampos(){
        document.getElementById("dia").value="<?php echo ($diaActual); ?>";
        document.getElementById("mes").value="<?php echo ($mesActual); ?>";
        document.getElementById("annio").value="<?php echo ($annioActual); ?>";
      }
	</script>
  </head>
<body onLoad="javascript:ajustarCampos();">
  <form action="index.php" method="post" name="formularioDeCambioDeFecha" id="formularioDeCambioDeFecha">
    <input type="hidden" name="fechaEnCurso" id="fechaEnCurso" value="<?php echo ($_POST["fechaEnCurso"]); ?>
  </form>
  <p>La fecha actual se encuentra seleccionada por defecto, no reservar para un d�a anterior:
  </p>
  <p>Seleccione la fecha para la  cual desea transladar su reserva:</p>
  <table width="500" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td width="40" align="right">Fecha:</td>
      <td width="100">

		<input type="date" name="fecha" min="2016-09-12" max="2017-06-22">

       
    </tr>
  </table>
  <p>
    <input name="aceptarCambio" type="button" id="aceptarCambio" value="Aceptar Nueva Fecha" onClick="javascript:enviar(true);">
    <input name="descartarCambio" type="button" id="descartarCambio" value="Descartar Nueva Fecha" onClick="javascript:enviar(false);">
</p>
</body>
</html>