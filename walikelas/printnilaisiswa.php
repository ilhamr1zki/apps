<?php session_start(); if(empty($_SESSION['c_admin'])){header('location:../login');}
header('location:master/'.$_GET['print'].'/'.$_GET['kelas'].'/'.$_GET['ta'].'/'.$_GET['siswa']);
?>