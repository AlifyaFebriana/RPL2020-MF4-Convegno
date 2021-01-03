<?php
require_once 'dbfunction.php';
$db = new DbFunction();

//Json Respon
$respon = array("error" => FALSE);

if (isset($_POST['email']) && isset($_POST['pass'])) {
	//Receiving POST
	$email      = $_POST['email'];
	$pass       = $_POST['pass'];

	$user = $db->cekLogin($email, $pass);


	if ($user != false) {
		$respon["error"] = FALSE;
		$respon["message"] = "Login Student Berhasil";
		$respon["page"] = "student";
		$respon["id"] = $user["id"];
		$respon["nama"] = $user["nama"];
		$respon["email"] = $user["email"];
		$respon["pass"] = $user["pass"];
		$respon["alamat"] = $user["alamat"];
		$respon["no_telp"] = $user["no_telp"];

		echo json_encode($respon);
	} else {

		$instructor = $db->cekLoginInstructor($email, $pass);
		if ($instructor != false) {
			$respon["error"] = FALSE;
			$respon["message"] = "Login Instructor Berhasil";
			$respon["page"] = "instructor";
			$respon["id"] = $user["id"];
			$respon["nama"] = $user["nama"];
			$respon["email"] = $user["email"];
			$respon["pass"] = $user["pass"];
			$respon["alamat"] = $user["alamat"];
			$respon["no_telp"] = $user["no_telp"];

			echo json_encode($respon);
		} else {
			$respon["error"] = TRUE;
			$respon["message"] = " Email atau Password salah!";
			echo json_encode($respon);
		}
	}
} else {
	$respon["error"] = TRUE;
	$respon["message"] = "Kehilangan Parameter";
	echo json_encode($respon);
}
