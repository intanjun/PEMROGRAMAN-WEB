<?php
	$nim = "A12.2018.06064"; 
	$nama = 'Intan Juniar'; 
	$umur = 20;
	$nilai = 90;
	$status = TRUE;
	echo "NIM    : " . $nim . "<br>";
	echo "Nama   : $nama<br>";
	print "Umur  : " . $umur; print "<br>";
	printf ("Nilai : %.3f<br>", $nilai);
	if ($status)
		echo "Status : Aktif";
	else
		echo "Status : Tidak Aktif"; 
?> 