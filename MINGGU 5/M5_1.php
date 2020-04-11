<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan Dasar PHP</title>
</head>

<body>
    <?php
    if (isset($_POST['hitung'])) {
        //deklarasi variable
        $bil1 = $_POST['bil1'];
        $bil2 = $_POST['bil2'];
        $operasi = $_POST['operasi'];

        //mengunakan switch untuk memilih operator mana yg dipilih user
        switch ($operasi) {
            case 'tambah':
                $hasil = $bil1 + $bil2;
                break;
            case 'kurang':
                $hasil = $bil1 - $bil2;
                break;
            case 'kali':
                $hasil = $bil1 * $bil2;
                break;
            case 'bagi':
                $hasil = $bil1 / $bil2;
                break;
        }
    }
    ?>
	
    <form action="M5_1.php" method="post">
		<label>Bil 1</label>
        <input type="text" name="bil1" placeholder="Masukan Bilangan Pertama">
        <br><br>
		<label>Bil 2</label>
        <input type="text" name="bil2" placeholder="Masukan Bilangan Kedua">
        <br><br>
		<label>Operator </label>
        <select multiple name="operasi">
            <option value="tambah">+ (tambah)</option>
            <option value="kurang">- (kurang)</option>
            <option value="kali">* (kali)</option>
            <option value="bagi">/ (bagi)</option>
        </select> 
        <input type="submit" name="hitung" value="="><br><br>
    </form>
	<?php echo "Hasil" ?>
    <?php if (isset($_POST['hitung'])) { ?>
	<?php $hasil;?> <input type="text" value="<?php echo $hasil; ?>">
    <?php } else { ?>
        <input type="text" value="0">
    <?php } ?>
</body>
</html>