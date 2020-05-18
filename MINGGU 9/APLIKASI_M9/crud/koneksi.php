<?php 
$host = mysqli_connect("localhost","root","","crud_pdo");
 
// Check connection
if ($host){
	echo "Koneksi berhasil .</br>";
}else {
	echo "Koneksi Gagal. </br>";
}
?>

