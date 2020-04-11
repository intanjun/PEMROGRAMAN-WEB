<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Hasil Tabel</title>
</head>

<body>
    <?php
    if (isset($_POST['kirim'])) {
        $nim = $_POST['nim'];
        $prodi = $_POST['prodi'];
        $nilai_tugas = $_POST['nilai_tugas'];
        $nilai_uts = $_POST['nilai_uts'];
        $nilai_uas = $_POST['nilai_uas'];

        $nilai_akhir = (0.4 * $nilai_tugas) + (0.3 * $nilai_uts) + (0.3 * $nilai_uas);
		function status($nilai_akhir)
		{
		 if($nilai_akhir > 84 ) { $status = "Lulus"; }
		 if($nilai_akhir >70 )  { $status = "Lulus"; }
		 if($nilai_akhir > 60 )  { $status = "Lulus"; }
		 if($nilai_akhir > 50)  { $status = "Lulus"; }
		 if($nilai_akhir <=  50 )  { $status = "Tidak Lulus"; }

		 return $status;
		}

        $selected_catatan = array();
        if (!empty($_POST['catatan'])) {
            foreach ($_POST['catatan'] as $catatan) {
                array_push($selected_catatan, $catatan);
            }
        }
    ?>
        <table width="55%" border="1" >
            <thead>
                <tr bgcolor="Black" >
                    <th><font color="white">Program Studi</th>
                    <th><font color="white">NIM</th>
                    <th><font color="white">Nilai AKhir</th>
                    <th><font color="white">Status</th>
                    <th><font color="white">Catatan Khusus</th>
                </tr>
            </thead>
            <tbody>
                <tr bgcolor="WhiteSmoke">
                    <td><?= $prodi ?></td>
                    <td><?= $nim ?></td>
                    <td><?= $nilai_akhir ?></td>
                    <td><?= status($nilai_akhir) ?></td>
                    <td>
                        <?php
                        foreach ($selected_catatan as $catatan_data) {
                            echo "•";
							echo $catatan_data . "<br> ";
                        }
                        ?>
                    </td>
                </tr>
            </tbody>
        </table>

    <?php
    }
    ?>
</body>

</html>