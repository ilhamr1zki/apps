<?php require 'php/config.php';
if(isset($_POST['username']) and isset($_POST['password'])){
  if($_POST['sebagai']=='admin'){
    $passencryp=crypt($_POST['password'],'1427');
    $cek1=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM admin where username='$_POST[username]' and password='$passencryp' "));
    if($cek1==NULL){
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:login');
    }
    else{
      session_start();
      $_SESSION['c_admin']=$cek1['c_admin'];
      header('location:admin/');
    }
  }
  else if($_POST['sebagai']=='walikelas'){
    $cek3=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walikelas where username='$_POST[username]' and password='$_POST[password]' "));
    if($cek3==NULL){
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:login');
    }
    else{
      session_start();
      $_SESSION['c_walikelas']=$cek3['c_walikelas'];
      header('location:walikelas/');
    }
  }
  else if($_POST['sebagai']=='guru'){
    $cek2=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where username='$_POST[username]' and password='$_POST[password]' "));
    if($cek2==NULL){
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:login');
    }else{
      session_start();
      $_SESSION['c_guru']=$cek2['c_guru'];
      header('location:guru/');
    }
  }
  else if($_POST['sebagai']=='walimurid'){
    $cek4=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walimurid where username='$_POST[username]' and password='$_POST[password]' "));
    if($cek4==NULL){
      session_start();
      $_SESSION['pesan']='gagal';
      header('location:login');
    }else{
      session_start();
      $_SESSION['c_walimurid']=$cek4['c_walimurid'];
      header('location:walimurid/');
    }
  }
  else{header('location:login');}
}
else{header('location:login');}
?>