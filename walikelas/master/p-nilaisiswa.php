<?php $kelas=$_GET['kelas']; $c_ta=$_GET['ta']; $tang=date('d');?>
<?php $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$_GET[kelas]' ")); $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where c_ta='$_GET[ta]' ")); $siswa=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM siswa where c_siswa='$_GET[mapel]' ")); ?>
<?php
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
$pdf->Cell(10,0.5,'  Nama  : '.strtoupper($siswa['nama']),0,'L');
if($ata['semester']=='1'){ $s='Ganjil'; }else if($ata['semester']=='2'){ $s='Genap'; }
$pdf->MultiCell(9,0.5,'  Semester '.$s,0,'L');
$pdf->SetX(4);
$pdf->ln(1);
$pdf->SetFont('Arial','',10);
//atas
$pdf->Cell(1, 1, 'NO', 1, 0, 'C');
$pdf->Cell(8, 1, 'MATA PELAJARAN', 1, 0, 'C');
$pdf->Cell(1, 1, 'KKM', 1, 0, 'C');

//LOAD TIPENILAI
  $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc "); $jlihtip=mysqli_num_rows($lihtip);
  $c=19-(1+8+1+2); $l=$c/$jlihtip;
  while($hlihtip=mysqli_fetch_array($lihtip)){
    $pdf->Cell($l, 1, $hlihtip['tipe'], 1, 0, 'C');
  }
$pdf->Cell(2, 1, 'JUMLAH', 1, 1, 'C');
//mulai
$pdf->SetFont('Arial','',10);
$pel=mysqli_query($con,"SELECT * FROM mapel order by mapel asc "); $no=1;
  while($hpel=mysqli_fetch_array($pel)){
    $pdf->Cell(1, 1, $no++, 1, 0, 'C');
    $pdf->Cell(8, 1, '   '.$hpel['mapel'], 1, 0, 'L');
    $pdf->Cell(1, 1, $hpel['sl'], 1, 0, 'C');
    $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");
    while($hlihtip=mysqli_fetch_array($lihtip)){ 
      $nil=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$_GET[ta]' and c_tipenilai='$hlihtip[c_tipenilai]' and c_siswa='$siswa[c_siswa]' and c_kelas='$kel[c_kelas]' and c_mapel='$hpel[c_mapel]' "));
        if($nil['nilai']<1){
          $pdf->Cell($l, 1, '-', 1, 0, 'C');
        }else{
          $pdf->Cell($l, 1, $nil['nilai'], 1, 0, 'C');
        }                    
    }
    $nilkabeh=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$_GET[ta]' and c_siswa='$siswa[c_siswa]' and c_kelas='$kel[c_kelas]' and c_mapel='$hpel[c_mapel]' "));
    $pdf->Cell(2, 1, $nilkabeh['nilai'], 1, 1, 'C');
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
$pdf->SetFont('Arial','U',11);
$pdf->MultiCell(9,0.5,$na['nama'],0,'C');
$pdf->Cell(10,0.5,'',0,0,'L');
$pdf->SetFont('Arial','',11);
if($na['nip']==''){$nip='-';}else {$nip=$na['nip'];}
$pdf->MultiCell(9,0.5,'NIP. '.$nip,0,'C');


$pdf->Output("NilaiSiswa.pdf","I");

?>