<?php
include 'conn.php';
include 'conf.php';
?>
<!DOCTYPE html>
<html>
<head>
 <title>PDO CRUDSRUD</title>
 <link rel="stylesheet" type="text/css"
href="assets/css/css.css">
</head>
<body>
 <div class="top-gray"></div>
 <div class="header">
  <div class="big-logo">Latihan CRUDSRUD</div>
  <?php include 'menu2.php';?>
 </div>
 <div class="content"><div class="container">
 <?php
 if(!is_null(get('p'))){
  switch (get('p')) {
	case 'home':
    inc('home');
    break;
	
	case 'sekolah':
		switch (get('m')) {
			case 'home':
			inc('tampilan/sekolah/all2');
			break;
			case 'add':
			inc('tampilan/sekolah/add');
			break;
			default:
			inc('tampilan/sekolah/all2');
			break;
		}
	break;
	
	case 'logout';
	inc('logout');
	break;
	
	default:
	inc('home');
	break;
  }
  }else{ inc('home'); } ?>
 </div></div>
</body> 
</html> 

 
