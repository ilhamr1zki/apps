<?php session_start(); if(empty($_SESSION['c_admin'])){header('location:../../login');} require '../../php/function.php'; require '../../php/config.php'; $saki=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$_GET[kelas]' "));$bulanini=bulan($_GET['bulan']);?>

<?php 		
if($_GET['re']=='pdf'){
	$cekada=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_kelas='$_GET[kelas]' and month(tanggal)='$_GET[bulan]' and year(tanggal)='$_GET[tahun]' "));
	if($cekada==NULL){
		session_start();
		$_SESSION['pesan']='tidakada';header('location:'.$basecon.'rekap/'.$_GET['kelas'].'');
	}
	else{
		require 'absenpdf.php';
	}
}
elseif($_GET['re']=='excel'){ 
	$cekada=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_kelas='$_GET[kelas]' and month(tanggal)='$_GET[bulan]' and year(tanggal)='$_GET[tahun]' "));
	if($cekada==NULL){
		session_start();
		$_SESSION['pesan']='tidakada';header('location:'.$basecon.'rekap/'.$_GET['kelas'].'');
	}
	else{
		$file=''.date('d/m/Y').'_'.$saki['kelas'].'_'.substr($bulanini, 0,3).$_GET['tahun'];
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=$file.xls");
		require 'absenexcel.php';
	}
} 
elseif($_GET['re']=='del'){
	$cekada=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM absensi where c_kelas='$_GET[kelas]' and month(tanggal)='$_GET[bulan]' and year(tanggal)='$_GET[tahun]' "));
	if($cekada==NULL){
		session_start();
		$_SESSION['pesan']='tidakada';header('location:'.$basecon.'rekap/'.$_GET['kelas'].'');
	}
	else{
		$del=mysqli_query($con,"DELETE from absensi where c_kelas='$_GET[kelas]' and month(tanggal)='$_GET[bulan]' and year(tanggal)='$_GET[tahun]' ");
		session_start();
		$_SESSION['pesan']='hapus';header('location:'.$basecon.'rekap/'.$_GET['kelas'].'');
	}
}
?>