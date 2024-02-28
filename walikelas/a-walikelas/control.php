<?php date_default_timezone_set('Asia/Jakarta'); session_start();
function random($length){
  $data='1234567890AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSstuuUvVwWxXyYyZz';
  $string='';
  for($i=1;$i<=$length;$i++){
    $pos=rand(0,strlen($data)-1);
    //$string.=$data{$pos};
    $string.=$data[$pos];
  }
  return $string;
}
require '../../php/config.php';
if(empty($_GET['smkakh']) or empty($_GET['q'])){
	header('location:../../login');
}
else{
	require 'action.php';
	$smk=new action();
	$akh=($_GET['smkakh']);
  if($akh==md5('logout')){ 
    session_destroy();
    session_unset($_SESSION['c_walikelas']);
    header('location:../../');
  }
  else if($akh==md5('settingrapot')){
    $extra = $_POST['extra'];
    $pilextra = count($extra);
    for($ff=0;$ff<$pilextra;$ff++){
      mysqli_query($con,"INSERT INTO extrasiswa set c_ta='$_POST[c_ta]',c_siswa='$_POST[c_siswa]',c_extra='$extra[$ff]' ");
    }
    $smk->settingrapot($con,$_POST['c_ta'],$_POST['c_kelas'],$_POST['c_siswa'],$_POST['s'],$_POST['i'],$_POST['a'],$_POST['catatan'],$_POST['kelakuan'],$_POST['kerajinan'],$_POST['kerapian']);
  }
  else if($akh==md5('editsettingrapot')){ 
    mysqli_query($con,"DELETE FROM extrasiswa where c_ta='$_POST[c_ta]' and c_siswa='$_POST[c_siswa]' ");
    $extra = $_POST['extra'];
    $pilextra = count($extra);
    for($ff=0;$ff<$pilextra;$ff++){
      //echo $extra[$ff];
      mysqli_query($con,"INSERT INTO extrasiswa set c_ta='$_POST[c_ta]',c_siswa='$_POST[c_siswa]',c_extra='$extra[$ff]' ");
    }
    $smk->editsettingrapot($con,$_POST['c_ta'],$_POST['c_kelas'],$_POST['c_siswa'],$_POST['s'],$_POST['i'],$_POST['a'],$_POST['catatan'],$_POST['kelakuan'],$_POST['kerajinan'],$_POST['kerapian']);
  }
  else if($akh==md5('kirimpesanwalikel')){ $at=date('Y-m-d H:i:s'); $wg='g';
    $smk->kirimpesanwalikel($con,$_SESSION['c_walikelas'],$_GET['q'],$_POST['pesan'],$at,$wg);
  }
  //wali murid
  else if($akh==md5('editwalimurid')){
    $cor=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walimurid where c_siswa='$_POST[c_siswa]' "));
    if($cor==NULL){ $c_walimurid=random(9);
      $smk->inputwalimurid($con,$c_walimurid,$_POST['c_siswa'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
    else{
      $smk->editwalimurid($con,$_POST['c_walimurid'],$_POST['c_siswa'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
  }
  else{
    session_destroy();
    session_unset($_SESSION['c_walikelas']);
    header('location:../../login');
    //echo "string";
  }
}
?>
