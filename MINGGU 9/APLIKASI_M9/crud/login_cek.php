<?php 
// mengaktifkan session pada php
session_start();
 
// menghubungkan php dengan koneksi database
include 'koneksi.php';
 
// menangkap data yang dikirim dari form login
$username = $_POST['username'];
$password = $_POST['password'];
 
 
// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($host,"select * from tabel_user where username='$username' and password='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);
 
// cek apakah username dan password di temukan pada database
if($cek > 0){
 
	$data = mysqli_fetch_assoc($login);
 
	// cek jika user login sebagai admin
	if($data['Hak']=="operator"){
 
		// buat session login dan username
		$_SESSION['username'] = $sabsab;
		$_SESSION['Hak']      = "operator";
		// alihkan ke halaman dashboard operator
		header("location:halaman_operator.php");
 
	// cek jika user login sebagai operator
	}else if($data['Hak']=="admin"){
 
		// buat session login dan username
		$_SESSION['username'] = $dyoemir;
		$_SESSION['Hak']      = "admin";
		// alihkan ke halaman dashboard admin
		header("location:halaman_admin.php");
 
	}else{
		// alihkan ke halaman login kembali
		header("location:index.php?pesan=gagal");
	}
	
}else{
	header("location:index.php?pesan=gagal");
}

?>