<?php $bul=$_GET['bulan']; $tah=$_GET['tahun']; $tang=date('d'); $jumI=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul' and ket='I' and c_kelas='$_GET[kelas]' "));$jumS=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul' and ket='S' and c_kelas='$_GET[kelas]' "));$jumA=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul'and ket='A' and c_kelas='$_GET[kelas]' ")); 
 ?>
<body>
	<table border="1">
		<thead>
      <tr><th colspan="36">Absensi Kelas <?php echo $saki['kelas']; ?></th></tr>
			<tr>
        <th rowspan="2">NO</th>
        <th width="30" rowspan="2">NAMA</th>
        <th colspan="31">BULAN <?php echo bulan($bul).' '.date('Y'); ?> <b style="color: #428bca;">Izin(<?php echo $jumI; ?>)</b> - <b style="color:#5cb85c;">Sakit(<?php echo $jumS; ?>)</b> - <b style="color:#d9534f;">Alfa(<?php echo $jumA; ?>)</b></th>
        <th colspan="3">JUMLAH</th>
      </tr>
      <tr>
        <?php for($po=1;$po<=31;$po++){echo '<th>'.$po.'</th>';} ?>
        <th>Izin(I)</th>
        <th>Sakit(S)</th>
        <th>Alfa(A)</th>
      </tr>
		</thead>
		<tbody>
<?php $perkel=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$_GET[kelas]' order by nama asc ");$vr=1;while($dperkel=mysqli_fetch_array($perkel)){ ?>
      <tr>
        <td><?php echo $vr; ?></td>
        <td><?php echo $dperkel['nama']; ?></td>
        <?php for($po=1;$po<=31;$po++){
          $ab=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and day(tanggal)='$po' "));
          if($ab['ket']=='M'){$ket='<b style="color: #428bca;">-</b>';}
          elseif($ab['ket']=='I'){$ket='<b style="color: #428bca;">I</b>';}
          elseif($ab['ket']=='S'){$ket='<b style="color:#5cb85c;">S</b>';}
          elseif($ab['ket']=='A'){$ket='<b style="color:#d9534f;">A</b>';}
          else{$ket=' ';}
          echo '<td>'.$ket.'</td>';
         }
        $iz=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='I' "));$sa=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='S' "));$al=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='A' "));
        ?>
        <td><?php echo $iz; ?></td>
        <td><?php echo $sa; ?></td>
        <td><?php echo $al; ?></td>
      </tr>
<?php $vr++; } ?>
    </tbody>
	</table>
</body>