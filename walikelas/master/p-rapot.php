<?php $kelas=$_GET['kelas']; $c_ta=$_GET['ta']; $tang=date('d');?>
<?php $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$_GET[kelas]' ")); $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where c_ta='$_GET[ta]' ")); ?>
<?php
require('../../master/pdf/fpdf.php');
$pdf = new FPDF("P","cm","A4");
$pdf->SetMargins(1,1,1);
$pdf->AliasNbPages();
//siswa
$sql=mysqli_query($con,"SELECT * FROM jumlahnilra where c_ta='$_GET[ta]' and c_kelas='$_GET[kelas]' order by nilaipresen desc ");
  $per=1;
  while($akh=mysqli_fetch_array($sql)){
  $siswa=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM siswa where c_siswa='$akh[c_siswa]' "));
    $pdf->AddPage();
    $pdf->SetFont('Times','',11);
    $pdf->SetX(4);
    $pdf->Image('../../imgstatis/logo2.png',2,0.8,2,1.6);
    $pdf->SetX(4); 
    $pdf->SetFont('Arial','B',12);
    $pdf->MultiCell(14,0.5,'LAPORAN HASIL BELAJAR',0,'C');
    $pdf->MultiCell(20,0.5,$aplikasi['namasek'],0,'C');
    $pdf->ln(1);
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(4.75, 0.5, 'Nama Peserta Didik', 0, 'C');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(8, 0.5, ': '.strtoupper($siswa['nama']), 0, 'C');
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(3, 0.5, 'Tahun Pelajaran', 0, 'C');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(3.75, 0.5, ': 2016/2017', 0,1, 'L');

    $pdf->SetFont('Arial','',10);
    $pdf->Cell(4.75, 0.5, 'Kelas', 0, 'C');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(8, 0.5, ': '.$kel['kelas'], 0, 'C');
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(3, 0.5, 'Semester', 0, 'C');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(3.75, 0.5, ": Genap", 0,1, 'L');
    $pdf->Cell(19, 0.5, '', 0, 1, 'C');
    $pdf->SetFont('Arial','',10);
    //atas
    $pdf->Cell(1, 1, 'NO', 1, 0, 'C');
    $pdf->Cell(8, 1, 'MATA PELAJARAN', 1, 0, 'C');
    $pdf->Cell(1.5, 1, 'KKM', 1, 0, 'C');
    $pdf->Cell(2, 1, 'NILAI', 1, 0, 'C');
    $pdf->Cell(3.5, 1, 'PREDIKAT', 1, 0, 'C');
    $pdf->Cell(3, 1, 'REMIDI', 1, 1, 'C');

    $pel=mysqli_query($con,"SELECT * FROM mapel order by mapel asc "); $no=1;
    while($hpel=mysqli_fetch_array($pel)){
      //load TIPE nilai
      $tn=mysqli_query($con,"SELECT * FROM tipenilai"); $vr=0;
      while($htn=mysqli_fetch_array($tn)){
        $nil=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$_GET[ta]' and c_mapel='$hpel[c_mapel]' and c_siswa='$akh[c_siswa]' and c_tipenilai='$htn[c_tipenilai]' "));
        $nilai=number_format($nil['nilai']*($htn['bobot']/100));
        $totalnilai[] = $nilai;
        $vr++;
      }
      $hh=array(2,2,2);
      $nilainya=array_sum($totalnilai);
      if($nilainya>=90 and $nilainya<=100){
        $predikat='Amat Baik';
      }
      else if($nilainya>=80 and $nilainya<=89){
        $predikat='Baik';
      }
      else if($nilainya>=70 and $nilainya<=79){
        $predikat='Cukup';
      }
      else if($nilainya>=41 and $nilainya<=69){
        $predikat='Kurang';
      }
      else if($nilainya>=0 and $nilainya<=40){
        $predikat='Buruk';
      }
      else{$predikat='Buruk';}
      if($nilainya>0){$adalah=$nilainya;}else{$adalah='-';}
      $pdf->Cell(1, 1, $no, 1, 0, 'C');
      $pdf->Cell(8, 1, '  '.$hpel['mapel'], 1, 0, 'L');
      $pdf->Cell(1.5, 1, $hpel['sl'], 1, 0, 'C');
      $pdf->Cell(2, 1, ($adalah), 1, 0, 'C');
      $pdf->Cell(3.5, 1, $predikat, 1, 0, 'C');
      $pdf->Cell(3, 1, '', 1, 1, 'C');
      $jumlah[]=$nilainya;
      $aslinya=array_sum($jumlah);
      $max[]=$aslinya;
      $totalnilai=[];
      $no++;
    }
    //peringkat
    /*if($aslinya==max($max)){
      $rangking=count($max);
    }
    else{$rangking='0';}*/
    //$jumlahnilai=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$_GET[ta]' and c_siswa='$akh[c_siswa]' and c_kelas='$_GET[kelas]' "));
    $cekab=mysqli_fetch_array(mysqli_query($con,"SELECT * From rapotsiswa where c_ta='$_GET[ta]' and c_kelas='$_GET[kelas]' and c_siswa='$akh[c_siswa]' "));
      if($cekab['a'] ?? 0 >3){
        $kurang=number_format($aslinya*(10/100));
        $akhir=$aslinya-$kurang;
      }
      else{
        $akhir=$aslinya;
      }
    if($cekab['a'] ?? 0 >3){
      $pdf->Cell(9, 1, 'Jumlah', 1, 0, 'C');
      $pdf->Cell(1.5, 1, '-10%', 1, 0, 'C');
      $pdf->Cell(2, 1, $akhir, 1, 0, 'C');
    }else{
      $pdf->Cell(10.5, 1, 'Jumlah', 1, 0, 'C');
      $pdf->Cell(2, 1, $akhir, 1, 0, 'C');
    }
    if($per<=10){
      $pdf->Cell(6.5, 1, 'Peringkat ke    '.$per, 1, 1, 'C');
    }
    else{
      $pdf->Cell(6.5, 1, '-', 1, 1, 'C');
    }
    $pdf->AddPage();
$catatan=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM rapotsiswa where c_ta='$_GET[ta]' and c_kelas='$_GET[kelas]' and c_siswa='$akh[c_siswa]' "));
$cat_s = $catatan['s'] ?? 0;   
$cat_i = $catatan['i'] ?? 0; 
$cat_a = $catatan['a'] ?? 0; 
$cat_kelakuan = $catatan['kelakuan'] ?? "";
$cat_kerajinan = $catatan['kerajinan'] ?? "";
$cat_kerapian = $catatan['kerapian'] ?? "";
$cat_catatan = $catatan['catatan'] ?? "";

$pdf->SetFont('Arial','B',12);
    $pdf->Cell(19, 1, 'Catatan Akhir Semester', 0, 1, 'C');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(19, 1, '1. Ketidakhadiran', 0, 1, 'L');
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(7, 2.4, '   Ketidakhadiran', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   1. Sakit', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_s. ' Hari', 1, 1, 'L');
    $pdf->Cell(7, 2.4, '', 0, 0, 'C');
    $pdf->Cell(6, 0.8, '   2. Izin', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_i.'  Hari', 1, 1, 'L');
    $pdf->Cell(7, 2.4, '', 0, 0, 'C');
    $pdf->Cell(6, 0.8, '   3. Tanpa Keterangan', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_a.'  Hari', 1, 1, 'L');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(19, 1, '2. Ekstrakulikuler', 0, 1, 'L');
    $pdf->SetFont('Arial','',10);
    $ex=mysqli_query($con,"SELECT * FROM extrasiswa where c_ta='$_GET[ta]' and c_siswa='$akh[c_siswa]' order by c_extrasiswa asc ");
    while($hex=mysqli_fetch_array($ex)){ $ckex=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM extra where c_extra='$hex[c_extra]' "));
      $pdf->Cell(13, 0.8, '   '.$ckex['extra'], 1, 0, 'L');
      $pdf->Cell(6, 0.8, '   Diikuti', 1, 1, 'L');
    }
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(19, 1, '3. Pengembangan Diri', 0, 1, 'L');
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(7, 2.4, '   Kepribadian', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   1. Kelakuan', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_kelakuan.'', 1, 1, 'L');
    $pdf->Cell(7, 2.4, '', 0, 0, 'C');
    $pdf->Cell(6, 0.8, '   2. Kerajinan', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_kerajinan.'', 1, 1, 'L');
    $pdf->Cell(7, 2.4, '', 0, 0, 'C');
    $pdf->Cell(6, 0.8, '   3. Kerapian', 1, 0, 'L');
    $pdf->Cell(6, 0.8, '   '.$cat_kerapian.'', 1, 1, 'L');
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(19, 1, '4. Catatan untuk perhatian orang tua/wali', 0, 1, 'L');
    $pdf->SetFont('Arial','',10);
    $pdf->Cell(19, 1, "".$cat_catatan, 1, 1, 'C');
    $pdf->Cell(19, 0.5, '', 0, 1, 'C');
//TTD
    $pdf->Cell(19, 1, $aplikasi['alamat'].', '.tgl(date('d-m-Y')), 0, 1, 'R');
    $pdf->SetFont('Arial','',12);$pdf->Cell(7, 1, 'Orangtua/Wali', 0, 0, 'C');
    $pdf->Cell(5, 1, '', 0, 0, 'C');
    $pdf->SetFont('Arial','',12);$pdf->Cell(7, 1, 'Wali Kelas', 0, 1, 'C');
    $pdf->Cell(19, 1.5, '', 0, 1, 'C');
    $pdf->Cell(7, 1, '--------', 0, 0, 'C');
    $pdf->Cell(5, 1, '', 0, 0, 'C');
    $pdf->SetFont('Arial','U',12);$pdf->Cell(7, 1, $na['nama'], 0, 1, 'C');$pdf->SetFont('Arial','',12);
    $pdf->Cell(7, 1, '', 0, 0, 'C');
    $pdf->Cell(5, 1, '', 0, 0, 'C');
    $pdf->Cell(7, 0.1, 'NIP. '.$na['nip'], 0, 1, 'C');
    $pdf->Cell(19, 0, '', 0, 1, 'C');
    $pdf->SetFont('Arial','',12);
    $pdf->Cell(19, 1, 'Mengetahui Kepala Sekolah', 0, 0, 'C');
    $pdf->Cell(19, 2.5, '', 0, 1, 'C');
    $pdf->SetFont('Arial','U',12);$pdf->Cell(19, 1, $aplikasi['kepsek'], 0, 1, 'C');$pdf->SetFont('Arial','',12);
    $pdf->Cell(19, 0.1, 'NIP. '.$aplikasi['nipkepsek'], 0, 1, 'C');
  $per++;
  $jumlah=[];
}
$pdf->Output("Rapot.pdf","I");

?>