<?php
	session_start();
	$email = $_POST['email'];
	$contrasena = $_POST['contrasena'];
	$mysql = new mysqli("localhost", "root", "", "bartolome");

	if(strlen($email) == 0){
		echo "cadena vacia";
		exit();
	}
	if(strlen($contrasena) == 0){
		echo "Contrasena vacia";
		exit();
	}
	if($query = $mysql-> prepare("Select * from persona where email_persona= ? and contrasena_usuario_persona= ?")){

		$query->bind_param("ss", $email, $contrasena);
		
		$query->execute();

		$res= $query->get_result();

		if ($usuario= $res->fetch_object()){
			$_SESSION['EMAIL'] = $email;
			header("location: ../index.php");			
		}else{
			echo "mal";
		}
	}


	/** Si los campos estan llenos **/

?>