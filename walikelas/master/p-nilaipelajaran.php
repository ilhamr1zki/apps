<?php $kelas=$_GET['kelas']; $c_ta=$_GET['ta']; $tang=date('d');?>
<?php $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$_GET[kelas]' ")); $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where c_ta='$_GET[ta]' ")); $dmap=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM mapel where c_mapel='$_GET[mapel]' ")); ?>
<?php
ob_start();
require('../../master/pdf/fpdf.php');
$pdf = new FPDF("P","cm","A4");
$pdf->SetMargins(1,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',11);
$pdf->MultiCell(19.5,0.5,'',0,'L'); 
$pdf->SetX(4);   
$pdf->SetX(4);
$pdf->Image('../../imgstatis/logo2.png',2,1.3,2,1.6);
$pdf->SetX(4); 
$pdf->SetFont('Arial','',11);
$pdf->Cell(10,0.5,'  '.$aplikasi['namasek'],0,'L');
$pdf->MultiCell(9,0.5,'  Tahun Pelajaran '.$ata['tahun'],0,'L');
$pdf->SetX(4);
$pdf->Cell(10,0.5,'  Nilai Siswa Kelas '.$kel['kelas'],0,'L');
if($ata['semester']=='1'){ $s='Ganjil'; }else if($ata['semester']=='2'){ $s='Genap'; }
$pdf->MultiCell(9,0.5,'  Semester '.$s,0,'L');
$pdf->SetX(4);
$pdf->Cell(23,0.5,'  Mata Pelajaran '.$dmap['mapel'].'     KKM : '.$dmap['sl'],0,'L');
$pdf->MultiCell(10,0.5,'',0,'L');
$pdf->SetX(4);
$pdf->Cell(19, 0.5, '', 0, 1, 'C');
$pdf->SetFont('Arial','',10);
//atas
$pdf->Cell(1, 1, 'NO', 1, 0, 'C');
$pdf->Cell(3, 1, 'NISN', 1, 0, 'C');
$pdf->Cell(6.5, 1, 'NAMA', 1, 0, 'C');
//LOAD TIPENILAI
  $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc "); $jlihtip=mysqli_num_rows($lihtip);
  $c=19-(1+3+6.5+2); $l=$c/$jlihtip;
  while($hlihtip=mysqli_fetch_array($lihtip)){
    $pdf->Cell($l, 1, $hlihtip['tipe'], 1, 0, 'C');
  }
$pdf->Cell(2, 1, 'TOTAL', 1, 1, 'C');
//mulai
$pdf->SetFont('Arial','',10);
$lsis=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$kelas' order by nama asc "); $no=1; 
  while($hlsis=mysqli_fetch_array($lsis)){
  $pdf->Cell(1, 1, $no, 1, 0, 'C');
  $pdf->Cell(3, 1, ' '.$hlsis['nisn'], 1, 0, 'L');
  $pdf->Cell(6.5, 1, ' '.$hlsis['nama'], 1, 0, 'L');
    $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");
    while($hlihtip=mysqli_fetch_array($lihtip)){
      $nil=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$c_ta' and c_tipenilai='$hlihtip[c_tipenilai]' and c_siswa='$hlsis[c_siswa]' and c_kelas='$kelas' and c_mapel='$_GET[mapel]' "));
      if($nil['nilai'] < $dmap['sl']){
        $pdf->SetTextColor(194,8,8);
        $pdf->Cell($l, 1, $nil['nilai'], 1, 0, 'C');
        $pdf->SetTextColor(0,0,0);
      }
      else{
        $pdf->Cell($l, 1, $nil['nilai'], 1, 0, 'C');
        $pdf->SetTextColor(0,0,0);
      }     
    }
  $nilsemua=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$c_ta' and c_siswa='$hlsis[c_siswa]' and c_kelas='$kelas' and c_mapel='$_GET[mapel]' "));
  $pdf->Cell(2, 1, $nilsemua['nilai'], 1, 1, 'C');
  $no++; 
  }
$pdf->SetFont('Arial','',11);
$pdf->ln(1);
$pdf->Cell(10,0.5,'',0,0,'L');
$pdf->MultiCell(9,0.5,$aplikasi['alamat'].', '.tgl(date('d-m-Y')),0,'R');
$pdf->ln(1);
$pdf->Cell(10,0.5,'',0,0,'L');
$pdf->MultiCell(9,0.5,'Wali Kelas '.$kel['kelas'],0,'C');

$pdf->ln(2);
$pdf->Cell(10,0.5,'',0,0,'L');
$pdf->SetFont('Arial','U',12);
$pdf->MultiCell(9,0.5,$na['nama'],0,'C');
$pdf->Cell(10,0.5,'',0,0,'L');
$pdf->SetFont('Arial','',12);
if($na['nip']==''){$nip='-';}else {$nip=$na['nip'];}
$pdf->MultiCell(9,0.5,'NIP. '.$nip,0,'C');


$pdf->Output();
ob_flush();
?>