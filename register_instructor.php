<?php
require_once 'dbfunction.php';
$db = new DbFunction();

//Json Respon
$respon = array("error" => FALSE);

if (isset($_POST['nama']) && isset($_POST['email'])) {
    //Receiving POST
    $nama            = $_POST['nama'];
    $email          = $_POST['email'];
    $pass             = $_POST['pass'];
    $alamat            = $_POST['alamat'];
    $no_telp         = $_POST['no_telp'];


    $cek_register = $db->CekRegisterInstructor($email);
    if ($cek_register == null) {
        $add_register = $db->RegisterInstructor($nama, $email, $no_telp, $alamat, $pass);
        if ($add_register == 1) {
            $respon["error"] = FALSE;
            $respon["message"] = "Data Anda telah berhasil di tambah";
            echo json_encode($respon);
        } else {
            $respon["error"] = TRUE;
            $respon["message"] = "Pendaftaran anda gagal, silahkan coba kembali";
            echo json_encode($respon);
        }
    } else {
        $respon["error"] = TRUE;
        $respon["message"] = "Email yang anda gunakan, sudah ada dalam database kami..";
        $respon["data"] = $cek_register;
        echo json_encode($respon);
    }
} else {
    $respon["error"] = TRUE;
    $respon["message"] = "Kehilangan nilai Parameter!";
    echo json_encode($respon);
}
