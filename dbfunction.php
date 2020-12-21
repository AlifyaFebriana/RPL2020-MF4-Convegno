<?php
class DbFunction
{
	private $koneksi;

	//Constructor
	function __construct()
	{
		require_once 'dbkoneksi.php';
		$db = new Dbkoneksi();
		$this->koneksi = $db->BuatKoneksi();
	}

	//Destructor
	function __destruct()
	{
	}

	//--------------------- FUNCTION - FUNCTION LAIN -------------
	// Register USER Client
	public function RegisterUser($nama, $email, $no_telp, $alamat, $pass)
	{
		$statementIn = $this->koneksi->prepare("INSERT INTO tb_user (nama,email,no_telp,alamat,pass) VALUES ('" . $nama . "','" . $email . "','" . $no_telp . "','" . $alamat . "',MD5('" . $pass . "'))");
		$result = $statementIn->execute();

		return $result;
	}
	public function RegisterInstructor($nama, $email, $no_telp, $alamat, $pass)
	{
		$statementIn = $this->koneksi->prepare("INSERT INTO tb_instructor (nama,email,no_telp,alamat,pass) VALUES ('" . $nama . "','" . $email . "','" . $no_telp . "','" . $alamat . "',MD5('" . $pass . "'))");
		$result = $statementIn->execute();

		return $result;
	}

	//Cek Data USER
	public function CekRegister($email)
	{
		$query_cek = $this->koneksi->query("SELECT * FROM tb_user WHERE email = '" . $email . "' ");
		$data = array();

		while ($item = $query_cek->fetch_assoc()) {
			$data[] = $item;
		}
		return $data;
	}
	public function CekRegisterInstructor($email)
	{
		$query_cek = $this->koneksi->query("SELECT * FROM tb_instructor WHERE email = '" . $email . "' ");
		$data = array();

		while ($item = $query_cek->fetch_assoc()) {
			$data[] = $item;
		}
		return $data;
	}

	//Login Akun Client
	public function cekLogin($email, $pass)
	{
		$statement = $this->koneksi->prepare("SELECT * FROM tb_user WHERE email = ? AND pass = MD5(?) LIMIT 1");
		$statement->bind_param("ss", $email, $pass);

		if ($statement->execute()) {
			$user = $statement->get_result()->fetch_assoc();
			$statement->close();
			return $user;
		} else {
			return NULL;
		}
	}
	public function cekLoginInstructor($email, $pass)
	{
		$statement = $this->koneksi->prepare("SELECT * FROM tb_instructor WHERE email = ? AND pass = MD5(?) LIMIT 1");
		$statement->bind_param("ss", $email, $pass);

		if ($statement->execute()) {
			$user = $statement->get_result()->fetch_assoc();
			$statement->close();
			return $user;
		} else {
			return NULL;
		}
	}
}
