$(document).ready(function(){
var nombre = $("#nombre").val();

	$("#institucion").hide();
	$("#servicios").hide();
	$("#contacto").hide();
	$("#acceso").hide();

	/******** mostrar/ocultar beca alumno ***********/
	$(".beca").change(function(){
		//alert($(".beca:checked").val());
		if ($(".beca:checked").val()== "NO") {
			$("#lb_tipo_beca").css("visibility", "hidden");
			$("#tipo_beca").css("visibility", "hidden");
		}else{
			$("#tipo_beca").css("visibility", "visible");
			$("#lb_tipo_beca").css("visibility", "visible");
		}

	});


	/********** mostrar/ocultar otros datos ********/
	$(".algun_deporte").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".algun_deporte:checked").val()=="NO") {
			$(".deporte").css("visibility", "hidden");
		}else{
			$(".deporte").css("visibility", "visible");
		}

	});

	$(".actividad_cultural").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".actividad_cultural:checked").val()=="NO") {
			$(".cultural").css("visibility", "hidden");
		}else{
			$(".cultural").css("visibility", "visible");
		}

	});

	$(".impedimento_fisico").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".impedimento_fisico:checked").val()=="NO") {
			$(".fisico").css("visibility", "hidden");
		}else{
			$(".fisico").css("visibility", "visible");
		}

	});

	$(".atencion_psicologica").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".atencion_psicologica:checked").val()=="NO") {
			$(".psicologica").css("visibility", "hidden");
		}else{
			$(".psicologica").css("visibility", "visible");
		}

	});

	$(".alguna_enfermedad").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".alguna_enfermedad:checked").val()=="NO") {
			$(".enfermedad").css("visibility", "hidden");
		}else{
			$(".enfermedad").css("visibility", "visible");
		}
	});

	$(".alergico_medicamento").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".alergico_medicamento:checked").val()=="NO") {
			$(".alergico").css("visibility", "hidden");
		}else{
			$(".alergico").css("visibility", "visible");
		}
	});

	$(".intervencion_quirurgica").change(function(){
		//alert($(".algun_deporte:checked").val());
		if($(".intervencion_quirurgica:checked").val()=="NO") {
			$(".intervencion").css("visibility", "hidden");
		}else{
			$(".intervencion").css("visibility", "visible");
		}
	});




	/*********** mostrat/ocultar madre alumno ************/

	$(".vive_madre").change(function(){
		//alert($(".vive_madre:checked").val());
		if ($(".vive_madre:checked").val()=="NO") {
			$(".madre").css("visibility","hidden");
		}else{
			$(".madre").css("visibility","visible");
		}

	});


	/************* mostrar/ocultar padre alumno **********/

		$(".vive_padre").change(function(){
		//alert($(".vive_padre:checked").val());
		if ($(".vive_padre:checked").val()=="NO") {
			$(".padre").css("visibility","hidden");
		}else{
			$(".padre").css("visibility","visible");
		}

	});



	
	$('#enlace_inicio').click(function(){

		$('#servicios').fadeOut('fast');
		$('#inicio').fadeIn('slow');
		$('#acceso').fadeOut('fast');
		$('#institucion').fadeOut('fast');
		$('#contacto').fadeOut('fast');
	});

	$('#enlace_servicios').click(function(){

		$('#servicios').fadeIn('slow');
		$('#inicio').fadeOut('fast');
		$('#acceso').fadeOut('fast');
		$('#institucion').fadeOut('fast');
		$('#contacto').fadeOut('fast');
	});

	$('#enlace_acceso').click(function(){

		$('#servicios').fadeOut('fast');
		$('#inicio').fadeOut('fast');
		$('#acceso').fadeIn('slow');
		$('#institucion').fadeOut('fast');
		$('#contacto').fadeOut('fast');
	});

	$('#enlace_intitucion').click(function(){

		$('#institucion').fadeIn('slow');
		$('#servicios').fadeOut('fast');
		$('#inicio').fadeOut('fast');
		$('#acceso').fadeOut('fast');
		$('#contacto').fadeOut('fast');
	
	});

	$('#enlace_contacto').click(function(){

		$('#contacto').fadeIn('slow');
		$('#institucion').fadeOut('fast');
		$('#servicios').fadeOut('fast');
		$('#inicio').fadeOut('fast');
		$('#acceso').fadeOut('fast');
	
	});

});