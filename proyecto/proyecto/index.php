<?php
	session_start();
?>
<html>
<head>
	<title></title>
</head>

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/funcionclick.js"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/css_index.css">

<body>

<script type="text/javascript">


</script>



<div id="contenedorMenu">
	<ul id="menu">
		<li><a href="#" id="enlace_inicio">Inicio</a></li>
		<li><a href="#" id="enlace_intitucion">Nuestra Institucion</a></li>
		<li><a href="#" id="enlace_servicios">Servicios</a></li>
		<li><a href="#" id="enlace_contacto">Contacto</a></li>
		<li><a href="#" id="enlace_acceso">Acceso</a></li>
	</ul>
</div>
<div id="contenedorPaneles">

	<div id="inicio" class="panel">
		<?php 
			if(isset($_SESSION['EMAIL']) && $_SESSION['EMAIL'] != ''){
				echo "Bienvenido: ".$_SESSION['EMAIL'];	
			}
		?>
	</div>
	<div id="institucion" class="panel">
		institucion
	</div>
	<div id="servicios" class="panel">

		<form>
			<h4 class="header-sub-form">Registro de Alumnos</h4>
			<ul>

				<li>
					<label>Nombres</label>
					<input type="text" id="nombre" name="nombres" value="jose chacon">
					<label>Apellidos</label>
					<input type="text" name="apellidos">
					<label>Cedula</label>
					<select name="tipo_cedula">
						<option value="1">V</option> 
						<option value="2">E</option>
					</select>
					<input type="text" name="cedula">
				</li>
				<li>
					<label>Fecha de Nacimiento</label>
					<select name="dia">
						<option value="0">Dia</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
					</select>
					<select name="mes">
						<option value="0">Mes</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<input type="number" name="fecha_de_nacimiento">

					<label>Sexo</label>
					<input name="sexo" value="M" type="radio">M
					<input name="sexo" value="F"type="radio">F
					<label>Email</label>
					<input name="email" type="text">

				</li>
				<li>
					<label>Estado</label>
					<select name="estado">
						<option value="0">Elija un Estado</option>
					</select>
					<label>Municipio</label>
					<select name="municipio">
						<option value="0">Elija un Municipio</option>
					</select>
					<label>Parroquia</label>
					<select name="parroquia">
						<option value="0">Elija un Parroquia</option>
					</select>
				</li>

				<li>
					<label>Lugar de Nacimiento</label>
					<input name="lugar_de_nacimiento" type="text">
				</li>

				<li>
					<label>Direccion de Habitacion</label><br />
					<textarea name="direccion_de_habitacion"></textarea>
				</li>

				<li>
					<label>Vive con:</label>
					<input name="vive_con" type="number" min=0 max=10>
					<label>Ingreso Familiar:</label>
					<select name="Ingreso_familiar">
						<option value="0">1000 a 2500</option>
						<option value="1">2500 a 3000</option>
						<option value="2">3000 a 4500</option>
						<option value="3">4500 a 6000</option>
					</select>
					<label>Tipo de Vivienda:</label>
					<select name="Tipo_de_Vivienda">
						<option value="1">Rancho</option>
						<option value="2">Casa</option>
						<option value="3">Apartamento</option>
						<option value="4">Quinta</option>
						<option value="5">ApartoQuinta</option>
					</select>
				</li>

				<li>
					<label>Posee Beca:</label>
					<input class="beca" name="posee_beca" value="SI" type="radio" checked>Si
					<input class="beca" name="posee_beca" value="NO"type="radio">No 
					<label id="lb_tipo_beca"> Indique</label>
					<input id="tipo_beca" name="tipo_beca" type="text">
				</li>
				<!-- Informacion de la madre -->
				<hr />


				<h4 class="header-sub-form">Datos de la Madre</h4>
				<li>
					<label>Nombres</label>
					<input type="text"  name="nombres">
					<label>Apellidos</label>
					<input type="text" name="apellidos">
					<label>Cedula</label>
					<select name="tipo_cedula">
						<option value="1">V</option> 
						<option value="2">E</option>
					</select>
					<input type="text" name="cedula">
				</li>
				<li>
					<label>Vive</label>
					<input class="vive_madre" name="vive" value="SI" type="radio" checked>Si
					<input class="vive_madre" name="vive" value="NO" type="radio">No
				</li>
				<li>
					<label class="madre">Direccion habitacion</label><br />
					<textarea class="madre" name="direccion_de_habitacion"></textarea>
				</li>
				<li>
					<label class="madre">Telefono de Habitacion:</label>
					<input class="madre" name="telefono_de_Habitacion" type="text">
					<label class="madre"> Grado de Instruccion:</label>
					<input class="madre" name="Grado_de_Instruccion" type="text">
				</li>
				<li>
					<label class="madre">Trabaja:</label>
					<input class="madre" name="trabaja" value="Si" type="radio"><label class="madre">Si</label>
					<input class="madre" name="trabaja" value="No"type="radio"><label class="madre">Si</label>
					<label class="madre"> Lugar de Trabajo:</label>
					<input class="madre" name="lugar_de_trabajo" type="text">
					<label class="madre">Telefono de Trabajo</label>
					<input class="madre" name="telefono_de_trabajo" type=""text>
				</li>
					<!-- Informacion del Padre -->

					<hr>
				<h4>Datos del Padre</h4>
				<li>
					<label>Nombres</label>
					<input type="text" name="nombres">
					<label>Apellidos</label>
					<input type="text" name="apellidos">
					<label>Cedula</label>
					<select name="tipo_cedula">
						<option value="1">V</option> 
						<option value="2">E</option>
					</select>
					<input type="text" name="cedula">
				</li>
				<li>
					<label>Vive</label>
					<input class="vive_padre" name="vive" value="SI" type="radio" checked>Si
					<input class="vive_padre" name="vive" value="NO" type="radio">No
				</li>
				<li>
					<label class="padre">Direccion habitacion</label><br />
					<textarea class="padre" name="direccion_de_habitacion"></textarea>
				</li>
				<li>
					<label class="padre">Telefono de Habitacion:</label>
					<input class="padre" name="telefono_de_Habitacion" type="text">
					<label class="padre"> Grado de Instruccion:</label>
					<input class="padre" name="Grado_de_Instruccion" type="text">
				</li>
				<li>
					<label class="padre">Trabaja:</label>
					<input class="padre" name="trabaja" value="Si" type="radio"><label class="padre">Si</label>
					<input class="padre" name="trabaja" value="No"type="radio"><label class="padre">Si</label>
					<label class="padre"> Lugar de Trabajo:</label>
					<input class="padre" name="lugar_de_trabajo" type="text">
					<label class="padre">Telefono de Trabajo</label>
					<input class="padre" name="telefono_de_trabajo" type=""text>
				</li>
				<!-- Informacion del Representante -->
				<hr>
				<h4 class="header-sub-form">Datos del Representante</h4>
				<li>
					<label>Nombres</label>
					<input type="text" name="nombres">
					<label>Apellidos</label>
					<input type="text" name="apellidos">
					<label>Cedula</label>
					<select name="tipo_cedula">
						<option value="1">V</option> 
						<option value="2">E</option>
					</select>
					<input type="text" name="cedula">
				</li>
				<li>
					<label class="representante">Direccion habitacion</label><br />
					<textarea class="representante" name="direccion_de_habitacion"></textarea>
				</li>
				<li>
					<label class="representante">Telefono de Habitacion:</label>
					<input class="representante" name="telefono_de_Habitacion" type="text">
					<label class="representante"> Grado de Instruccion:</label>
					<input class="representante" name="Grado_de_Instruccion" type="text">
				</li>
				<li>
					<label class="representante">Trabaja:</label>
					<input class="representante" name="trabaja" value="Si" type="radio"><label class="representante">Si</label>
					<input class="representante" name="trabaja" value="No"type="radio"><label class="representante">Si</label>
					<label class="representante"> Lugar de Trabajo:</label>
					<input class="representante" name="lugar_de_trabajo" type="text">
					<label class="representante">Telefono de Trabajo</label>
					<input class="representante" name="telefono_de_trabajo" type="text">
				</li>
				<!-- informacion otra del alumno-->
				<hr>
				<h4 class="header-sub-form">Otros Datos</h4>

				<li>
					<label class="talla">Talla</label>
					<input class="talla" name="Talla" type="text">
					<label class="peso">Peso</label>
					<input class="peso" name="Peso" type="text">
				</li>
				<li>
					<label>Practica algun Deporte:</label>
					<input class="algun_deporte" name="algun_deporte" value="SI" type="radio" checked>Si
					<input class="algun_deporte" name="algun_deporte" value="NO"type="radio">No
					<label class="deporte">Especifique:</label> 
					<input class="deporte" name="especifique" type="text">
				</li>
				<li>
					<label>Practica Actividad Cultural:</label>
					<input class="actividad_cultural" name="actividad_cultural" value="SI" type="radio" checked>Si
					<input class="actividad_cultural" name="actividad_cultural" value="NO"type="radio">No
					<label class="cultural">Especifique:</label> 
					<input class="cultural" name="especifique" type="text">					
				</li>
				<li>
					<label>Posee Algun Impedimento Fisico:</label>
					<input class="impedimento_fisico" name="impedimento_fisico" value="SI" type="radio" checked>Si
					<input class="impedimento_fisico" name="impedimento_fisico" value="NO"type="radio">No
					<label class="fisico">Especifique:</label> 
					<input class="fisico" name="especifique" type="text">					
				</li>
				<li>
					<label>Padece Alguna Enfermedad:</label>
					<input class="alguna_enfermedad" name="alguna_enfermedad" value="SI" type="radio" checked>Si
					<input class="alguna_enfermedad" name="alguna_enfermedad" value="NO"type="radio">No
					<label class="enfermedad">Especifique:</label> 
					<input class="enfermedad" name="especifique" type="text">
				</li>
				<li>
					<label>Ha Recibido Atencion Psicologica:</label>
					<input class="atencion_psicologica" name="atencion_psicologica" value="SI" type="radio" checked>Si
					<input class="atencion_psicologica" name="atencion_psicologica" value="NO"type="radio">No
					<label class="psicologica">Especifique:</label> 
					<input class="psicologica" name="especifique" type="text">
				</li>
				<li>
					<label>Es Alergico Algun Medicamento:</label>
					<input class="alergico_medicamento" name="alergico_medicamento" value="SI" type="radio" checked>Si
					<input class="alergico_medicamento" name="alergico_medicamento" value="NO"type="radio">No
					<label class="alergico">Especifique:</label> 
					<input class="alergico" name="especifique" type="text">

				</li>
				<li>
					<label>Ha sido intervenido Quirurgicamente:</label>
					<input class="intervencion_quirurgica" name="intervension_quirurgica" value="SI" type="radio" checked>Si
					<input class="intervencion_quirurgica" name="intervension_quirurgica" value="NO" type="radio">No
					<label class="intervencion">Especifique:</label> 
					<input class="intervencion" name="especifique" type="text">

				</li>
				<li>
					<label>Cual Religion Profesa?</label>
					<input name="religion" type="text">
				</li>
				<li class="botones">
					<input type="submit" value="Enviar!">
					<input type="reset" value="Restablecer">
				</li>
			</ul>
		</form>
	</div>
	<div id="contacto" class="panel">
		contacto
	</div>

	<div id="acceso" class="panel">
		<form name="Personal" method="POST" onsubmit="return validar(this)" action="php/login.php">
			<p>&nbsp;</p>
			<table width="454" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			  <tr>
			    <td height="31" colspan="2" align="center" bgcolor="#greenyellow"><h2>Registro de Usuario</h2></td>
			  </tr>
			  <tr>
			    <td width="173" height="31" align="right"><strong>Email:&nbsp;&nbsp;</strong></td>
			    <td width="281"><input type="text" name="email"></td>
			  </tr>
			  <tr>
			    <td height="29" align="right"><strong>Contrase&ntilde;a:&nbsp;&nbsp;</strong></td>
			    <td><input type="password" name="contrasena"></td>
			  </tr>
			 
			  <tr>
			    <td colspan="2">&nbsp;</td>
			    </tr>
			  <tr>
			    <td height="54" colspan="2" align="center"><input type="submit" value="Enviar"> <input type="button" value="Borrar">
			      <a href="index.html">Ir a Inicio</a></td>
			  </tr>
			</table>
			</form>
	</div>

</div>

</body>
</html>