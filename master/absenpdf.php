<?php $bul=$_GET['bulan']; $tah=$_GET['tahun']; $tang=date('d'); $jumI=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul' and ket='I' and c_kelas='$_GET[kelas]' "));$jumS=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul' and ket='S' and c_kelas='$_GET[kelas]' "));$jumA=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where month(tanggal)='$bul'and ket='A' and c_kelas='$_GET[kelas]' ")); 
?>
<?php
require('pdf/fpdf.php');
$pdf = new FPDF("L","cm","Legal");
$pdf->SetMargins(1,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',11);
$pdf->MultiCell(19.5,0.5,'',0,'L'); 
$pdf->SetX(4);   
$pdf->SetFont('Arial','B',10);
$pdf->SetX(4);
$pdf->Image('../../php/img/smk.jpg',2,1.3,2,1.6);
$pdf->SetX(4); 
$pdf->MultiCell(19.5,0.5,'  SMK AL-KHOIRIYAH ',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'  Rekap Data Absensi Kelas '.$saki['kelas'],0,'L');
$pdf->SetX(4);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(5,0.7,"\n    Di cetak pada : ".date("D-d/m/Y"),0,0,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',10);
//atas
$pdf->Cell(1, 1.6, 'NO', 1, 0, 'C');
$pdf->Cell(5, 1.6, 'NAMA', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'JUMLAH', 1, 0, 'C');
$pdf->Cell(24.8, 0.8, 'BULAN '.bulan($bul).' '.date('Y').' Izin('.$jumI.') - Sakit('.$jumS.') - Alfa('.$jumA.')', 1, 1, 'C');
//pelengkap
$pdf->Cell(1, 0.8, '', 0, 0, 'C');
$pdf->Cell(5, 0.8, '', 0, 0, 'C');
//jumlah
$pdf->Cell(1, 0.8, 'I', 1, 0, 'C');
$pdf->Cell(1, 0.8, 'S', 1, 0, 'C');
$pdf->Cell(1, 0.8, 'A', 1, 0, 'C');
//tanggal
for($po=1;$po<=30;$po++){
	$pdf->Cell(0.8, 0.8, $po, 1, 0, 'C');
}
$pdf->Cell(0.8, 0.8, '31', 1, 1, 'C');
$pdf->SetFont('Arial','',10);
//mulai
$perkel=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$_GET[kelas]' order by nama asc ");$vr=1;while($dperkel=mysqli_fetch_array($perkel)){
  $pdf->Cell(1, 0.8, $vr, 1, 0, 'C');
  $pdf->Cell(5, 0.8, '  '.$dperkel['nama'], 1, 0, 'L');
  //jumlah
  $iz=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='I' "));$sa=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='S' "));$al=mysqli_num_rows(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and ket='A' "));
  $pdf->Cell(1, 0.8, $iz, 1, 0, 'C');
  $pdf->Cell(1, 0.8, $sa, 1, 0, 'C');
  $pdf->Cell(1, 0.8, $al, 1, 0, 'C');
  //tanggal
  for($po=1;$po<=30;$po++){
    $ab=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and day(tanggal)='$po' "));
      if($ab['ket']=='M'){$ket='-';}
      elseif($ab['ket']=='I'){$ket='I';}
      elseif($ab['ket']=='S'){$ket='S';}
      elseif($ab['ket']=='A'){$ket='A';}
     	else{$ket='';}
    	$pdf->Cell(0.8, 0.8, $ket, 1, 0, 'C');  
    }
	
	$t31=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_siswa='$dperkel[c_siswa]' and month(tanggal)='$bul' and year(tanggal)='$tah' and day(tanggal)='31' "));if($t31['ket']==''){$tang31='';}else{$tang31='-';}
	$pdf->Cell(0.8, 0.8, $tang31, 1, 1, 'C');
	$vr++; 
	}	
//akhir
$file=''.date('d/m/Y').'_'.$saki['kelas'].'_'.substr($bulanini, 0,3).$_GET['tahun'];
$pdf->Output("".$file.".pdf","I");

?>