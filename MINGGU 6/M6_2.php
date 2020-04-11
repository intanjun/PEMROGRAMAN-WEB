<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>latihan SS_2-1</title>
</head>

<body>
    <form action="proses_M62[rev].php" method="post">
	<table>
		<tr>
			<td>
				<label>NIM &nbsp;&emsp;&emsp;&emsp;&emsp;  :</label>
				<input type="text" name="nim"><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<label>Program Studi &ensp; : </label>
				<select name="prodi">
					<option value="Teknik Informatika S1">Teknik Informatika S1</option>
					<option value="Sistem Informasi S1">Sistem Informasi S1</option>
					<option value="Teknik Informatika D3">Teknik Informatika D3</option>
				</select><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<label>Nilai Tugas &ensp;&ensp;&ensp; :</label>
				<input type="text" name="nilai_tugas"><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<label>Nilai UTS &nbsp;&ensp;&ensp;&emsp;:</label>
				<input type="text" name="nilai_uts"><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<label>Nilai UAS &nbsp;&ensp;&ensp;&emsp;:</label>
				<input type="text" name="nilai_uas"><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<label>Catatan Khusus</label>
				<input type="checkbox" name="catatan[]" value="Kehadiran >= 70%" />Kehadiran >= 70%<br>
			</td>
		</tr>			
		<tr>
			<td>
				<label><font color="white">Catatan Khusus</label></font>
				<input type="checkbox" name="catatan[]" value="Interaktif di kelas" />Interaktif Di Kelas<br>
		</td>
		</tr>
		<tr>
			<td>
				<label><font color="white">Catatan Khusus</label></font>
				<input type="checkbox" name="catatan[]" value="Tidak Terlambat Mengumpulkan Tugas" />Tidak Terlambat Mengumpulkan Tugas<br>
			</td>
		</tr>
		<tr>
			<td><button type="submit" name="kirim">Submit</button></td>
		</tr>
	</table>
    </form>
</body>

</html>