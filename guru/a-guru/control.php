<?php date_default_timezone_set('Asia/Jakarta'); 

  session_start();
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

  if(empty($_GET['smkakh']) or empty($_GET['q'])) {

	 header('location:../../login');

  } else {
  	require 'action.php';
  	$smk=new action();
  	$akh=($_GET['smkakh']);

    if ( $akh == md5('logout') ) { 
      session_destroy();
      session_unset($_SESSION['c_guru']);
      header('location:../../');
    }
  
    //input nilai
    else if ( $akh == md5('inputnilai') ){
    /*ambil tahun akademik yang aktif*/ 
    $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where status='aktif' ")); 
    $c_ta = $ata['c_ta'];
    /*echo 'tahun akademik: '.$c_ta.'<br>';
    echo 'c_tipenilai: '.$_POST['c_tipenilai'].'<br>';
    echo 'c_kelas: '.$_POST['c_kelas'].'<br>';
    echo 'c_mapel: '.$_POST['c_mapel'].'<br>';*/
    $at = date('Y-m-d');
    $nilai = $_POST['nilsiswa'];
    $lsis = mysqli_query($con,"SELECT * FROM siswa where c_kelas='$_POST[c_kelas]' order by nama asc "); 
    $no = 0; 
    while ( $hlsis=mysqli_fetch_array($lsis) ) {
      //disini inputnya
      $cekada = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM nilai where c_ta='$c_ta' and c_tipenilai='$_POST[c_tipenilai]' and c_siswa='$hlsis[c_siswa]' and c_mapel='$_POST[c_mapel]' and c_kelas='$_POST[c_kelas]' "));

      if ( $cekada == NULL ) {

        $input=mysqli_query($con,"INSERT INTO nilai set c_ta='$c_ta',c_tipenilai='$_POST[c_tipenilai]',c_siswa='$hlsis[c_siswa]',c_mapel='$_POST[c_mapel]',c_kelas='$_POST[c_kelas]',nilai='$nilai[$no]',at='$at' ");

      } else {

         $edit=mysqli_query($con,"UPDATE nilai set c_ta='$c_ta',c_tipenilai='$_POST[c_tipenilai]',c_siswa='$hlsis[c_siswa]',c_mapel='$_POST[c_mapel]',c_kelas='$_POST[c_kelas]',nilai='$nilai[$no]',at='$at' WHERE c_nilai='$cekada[c_nilai]' ");

      }

      $no++;

    }

    session_start();
    $_SESSION['pesan']='selesai';
    header('location:../../inputnilai/'.$_POST['c_kelas'].'/'.$_POST['c_mapel'].'/'.$_POST['c_tipenilai'].'');
  }

  else if($akh==md5('setelulang')){
    $c_kelas=$_GET['q']; $c_mapel=$_GET['r']; $c_tipenilai=$_GET['v'];
    $setel=mysqli_query($con,"DELETE from nilai where c_ta='$c_ta' and c_tipenilai='$c_tipenilai' and c_kelas='$c_kelas' and c_mapel='$c_mapel' ");
    session_start();
    $_SESSION['pesan']='ulang';
    header('location:'.$basegu.'inputnilai/'.$c_kelas.'/'.$c_mapel.'/'.$c_tipenilai.'');
  }

#region imtas
else if($akh==md5('adddataimtas')){
 echo "Tanggal: " .$_POST['_tglimtas'];

    $tanggal=date('Y-m-d',strtotime($_POST['_tglimtas']));
     $smk->adddataimtas($con,$_POST['_idsiswa'] ?? "",$c_ta ?? "", $_POST['_stsjilid'] ?? "", $_POST['_stsjilid'] ?? "", 
                            $_SESSION['c_guru'] ?? "", $_POST['_c_kelas'] ?? "",  $_POST['_jmlimtas'] ?? 0,
                            $_POST['_keterangan'] ?? "", $tanggal) ;

}
else if($akh==md5('editdataimtas')){
 
     $tanggal=date('Y-m-d',strtotime($_POST['_tglimtas']));
      $smk->editdataimtas($con, $_POST['_jmlimtas'] ?? 0,
                             $_POST['_keterangan'] ?? "", $tanggal, $_POST['_idedit']) ;


 }
else if($akh==md5('hapusimtas')){
  $smk->hapusimtas($con,$_POST['_idhapus'], $_POST['_csiswadel'] ?? "");
}
#endregion imtas

//region master jilid
else if($akh==md5('addmjilid')){ 
  $smk->addmasterjilid($con, $_POST['_nmjilidadd'],$_POST['_seqjilidadd'], "00",$_POST['_jlparselect']);
} else if($akh==md5('editmjilid')){
  $smk->editmasterjilid($con, $_POST['_nmjilidedit'], $_POST['_seqjilidedit'], "00", $_POST['_idedit']);
}
 //hapus m jilid
else if($akh==md5('hapusmjilid')){
  $smk->hapusmjilid($con,$_POST['_idhapus']);
}

//kenaikan jilid
else if($akh==md5('addnaikjilid')){ 
  $_tglnaikjilid=date('Y-m-d',strtotime($_POST['_tglnaikjilid']));

  if (isset($_POST['btnsetupjilid'])) {
    $smk->addnaikjilid($con, $_POST['_idjilid'] ?? 0,$_POST['_seqnext'] ?? 0, $_POST['_idsiswa'] ?? "", $_POST['_nmsiswa'] ?? "", $_tglnaikjilid , $_POST['_jilidcur'] ?? "", $_POST['_entryby'] ?? "", $_POST['_bagianjilidcur2'] ?? "",  $_POST['editorcatatan'] ?? "");
    
  } else if (isset($_POST['btnnaikjilid'])) {
    $smk->updatenaikjilid($con, $_POST['_idjilid'] ?? 0,$_POST['_seqnext'] ?? 0, $_POST['_idsiswa'] ?? "", $_POST['_nmsiswa'] ?? "", $_tglnaikjilid , $_POST['_jilidcur'] ?? "", $_POST['_entryby'] ?? "", $_POST['_nmjilidnext'] ?? "",  $_POST['editorcatatan'] ?? "",  $_POST['_namajilidutama'] ?? "");
  } 
  else if (isset($_POST['btnSimpanCatatan'])) {
    $smk->updateCatatannaikjilid($con, $_POST['_idsiswa'] ?? "", $_POST['editorcatatan'] ?? "");
  }
  else if (isset($_POST['btnsetupmanualjilid'])) {
    $smk->setupmanualnaikjilid($con, $_POST['_idjilidmanual'] ?? 0, $_POST['_seqnextmanual'] ?? 0, $_POST['_idsiswa'] ?? "", $_POST['_nmsiswa'] ?? "", $_tglnaikjilid,  $_POST['_nmjilidmanual'] ?? "", $_POST['_entryby'] ?? "", $_POST['_nmbagianmanual'] ?? "",  $_POST['editorcatatan'] ?? "", $_POST['_nmjilidmanual'] ?? "");
  }
  else {
    // No button was clicked
  }

}
//endregion master jilid

#region juz
else if ( $akh == md5('addmjuz') ) { 

  // var_dump($_POST['addIsiSurahAwal']);exit;

  // $juz                   = $_POST['juz'];

  $dataIsiSurahAwal      = $_POST['addIsiSurahAwal'];
  $dataIsiSurahAkhir     = $_POST['addIsiSurahAkhir'];

  $parentJuz             = $_POST['parentjuz'];

  $urutan                = $_POST['urutan'];

  $keteranganAyatSrhAwl  = "";
  $keteranganAyatSrhAkr  = "";

  if ($_POST['keteranganAyatSrhAwl'] == true && $_POST['keteranganAyatSrhAkr'] == true) {

    $keteranganAyatSrhAwl  = $_POST['keteranganAyatSrhAwl'];

  } else {

    $keteranganAyatSrhAkr  = $_POST['keteranganAyatSrhAkr'];

  }

  // ambil data surat dari bagian surah awal
  $isiSurahAwal  = $dataIsiSurahAwal;

  // Ambil data surat dari table kumpulan surat untuk surah awal
  $queryGetDataSurahAwal = mysqli_query($con, "SELECT nama_surah FROM kumpulan_surah WHERE nomer_surah = '$isiSurahAwal' ");

  // ambil data surat dari bagian surah akhir
  $isiSurahAkhir  = $dataIsiSurahAkhir;

  // Ambil data surat dari table kumpulan surat untuk surah akhir
  $queryGetDataSurahAkhir = mysqli_query($con, "SELECT nama_surah FROM kumpulan_surah WHERE nomer_surah = '$isiSurahAkhir' ");

  // mendapatkan data surah awal pertama
  $getDataSurahAwal = mysqli_fetch_assoc($queryGetDataSurahAwal)['nama_surah'];

  // mendapatkan data surah awal terakhir
  $getDataSurahAkhir = mysqli_fetch_assoc($queryGetDataSurahAkhir)['nama_surah'];

  if ($keteranganAyatSrhAwl == '' && $keteranganAyatSrhAkr == '') {
    
    // echo $getDataSurahAwal . " - " . $getDataSurahAkhir . " " . $urutan;exit;
    $ketAyatPadaSurah = "$getDataSurahAwal" .' - '. $getDataSurahAkhir;
// echo $ketAyatPadaSurah;exit;
    // insert database

    mysqli_query($con,"
      INSERT INTO tbl_juz 
      SET 
      juz_atau_keterangan_ayat    = '$ketAyatPadaSurah',
      seqjuz                      = '$urutan',
      parentid                    = '$parentJuz'
    ");

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;

    // $smk->addmasterjuz($con, $ketAyatPadaSurah, $urutan, $parentJuz);
    // exit;

  } else {

    // echo $getDataSurahAwal  . " (". $keteranganAyatSrhAwl .")" . " - " . $getDataSurahAkhir. " (". $keteranganAyatSrhAkr .")" ;exit;

    $ketAyatPadaSurah = $getDataSurahAwal  . " (". $keteranganAyatSrhAwl .")" . " - " . $getDataSurahAkhir. " (". $keteranganAyatSrhAkr .")" ;

    // insert database
    $smk->addmasterjuz($con, $ketAyatPadaSurah, $urutan, $parentJuz);
    exit;

  }


  // Taro data 
  $arrDataSurahAwal  = [];
  $arrDataSurahAkhir = [];

  // get data juz surah awal
  // foreach ($dataIsiSurahAwal as $dataSurahAwal) {

  //   $arrDataSurahAwal[] = $dataSurahAwal;
    
  // }

  // get data juz surah akhir
  foreach ($dataIsiSurahAkhir as $dataSurahAkhir) {

    $arrDataSurahAkhir[] = $dataSurahAkhir;
    
  }

  $banyakDataSurahAwal   = count($arrDataSurahAwal);
  $banyakDataSurahAkhir  = count($arrDataSurahAkhir);

  // echo $banyakDataSurahAkhir;exit;

  // echo $banyakDataSurahAwal;exit;

  $isiSurahAwal  = '';
  $isiSurahAkhir = '';

  // echo $banyakDataSurahAwal;exit;

  // Check jika pilihan surah awal dan surah akhir hanya ada 1 surat
  if ($banyakDataSurahAwal < 2 && $banyakDataSurahAkhir < 2) {

    // echo $banyakDataSurahAwal . $banyakDataSurahAkhir;exit;

    // check jika keterangan ayat pada surah awal dan surah akhir kosong
    if ($keteranganAyatSrhAwl == '' && $keteranganAyatSrhAkr == '') {

      // echo "NULL";exit;

      // ambil data surah awal dan surah akhir di array index ke 0
      $isiSurahAwal   = $arrDataSurahAwal[0];
      $isiSurahAkhir  = $arrDataSurahAkhir[0];     
      // echo $isiSurahAkhir;exit;

      // insert database
      $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwal, 'kosong', 'kosong', $isiSurahAkhir, 'kosong', 'kosong');
      exit;

    } else {

      // echo "tidak null";exit;

      $isiSurahAwal   = $arrDataSurahAwal[0];
      $isiSurahAkhir  = $arrDataSurahAkhir[0];

      $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwal, 'kosong', $keteranganAyatSrhAwl, $isiSurahAkhir, 'kosong', $keteranganAyatSrhAkr);

    }

  } else if ($banyakDataSurahAwal == 2 && $banyakDataSurahAkhir == 1) {

    // echo "masuknih";exit;

    // Jika surah awal berisi 2 surat dan surah akhir hanya berisi 1 surat

    

    // ambil data surat dari bagian surah akhir
    $isiSurahAkhirPertama  = $arrDataSurahAkhir[0];   

    $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwalPertama, $isiSurahAwalTerakhir, $keteranganAyatSrhAwl, $isiSurahAkhirPertama, 'kosong', $keteranganAyatSrhAkr);
    // $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwalPertama, $isiSurahAwalTerakhir, $keteranganAyatSrhAwl, $isiSurahAkhirPertama, 'kosong', $keteranganAyatSrhAkr);

  } else if ($banyakDataSurahAwal == 1 && $banyakDataSurahAkhir == 2) {

    // echo "masuknih";exit;

    // Jika surah awal berisi 2 surat dan surah akhir hanya berisi 1 surat

    // ambil data surat dari bagian surah awal
    $isiSurahAwalPertama  = $arrDataSurahAwal[0]; 

    // ambil data surat dari bagian surah akhir
    $isiSurahAkhirPertama   = $arrDataSurahAkhir[1];
    $isiSurahAkhirTerakhir  = $arrDataSurahAkhir[0];   

    // echo $isiSurahAkhirPertama;exit;

    $queryInsert = "
    INSERT INTO view_mastertahfidz 
      SET 
      juz                         = '$juz',
      surat_awal_pertama          = '$isiSurahAwalPertama',
      surat_awal_terakhir         = NULL,
      surat_akhir_pertama         = '$isiSurahAkhirPertama',
      surat_akhir_terakhir        = '$isiSurahAkhirTerakhir',
      keterangan_ayat_surah_awal  = '$keteranganAyatSrhAwl',
      keterangan_ayat_surah_akhir = '$keteranganAyatSrhAkr'

    ";

    mysqli_query($con, $queryInsert);

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;    

    // $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwalPertama, 'kosong', $keteranganAyatSrhAwl, $isiSurahAkhirPertama, $isiSurahAkhirTerakhir, $keteranganAyatSrhAkr);

  } else {

    // Jika surah awal dan surah akhir lebih dari 1 surah

    // Jika surah awal dan surah akhir lebih dari 1 surah dan tidak ada keterangan
    if ($keteranganAyatSrhAwl == '' && $keteranganAyatSrhAkr == '') {

      // echo "lengkap 2 surah awal dan akkhir tanpa keterangan ayat";exit;

      // ambil data surat dari bagian surah awal
      $isiSurahAwalPertama  = $arrDataSurahAwal[1];
      $isiSurahAwalTerakhir = $arrDataSurahAwal[0];

      // Keterangan Ayat pada bagian surah awal
      $keteranganAyatSurahAwal  = $_POST['keteranganAyatSrhAwl'];

      // echo $isiSurahAwalPertama . ' - ' . $isiSurahAwalTerakhir;exit;

      // ambil data surat dari bagian surah akhir
      $isiSurahAkhirPertama  = $arrDataSurahAkhir[1];
      $isiSurahAkhirTerakhir = $arrDataSurahAkhir[0];

      // Keterangan Ayat pada bagian surah akhir
      $keteranganAyatSurahAkhir = $_POST['keteranganAyatSrhAkr'];

      $smk->addmasterjuz($con, $_POST['juz'], $isiSurahAwalPertama, $isiSurahAwalTerakhir, 'kosong', $isiSurahAkhirPertama, $isiSurahAkhirTerakhir, 'kosong');

    }

  }

  
}
#endregion master juz

#region pustaka
else if($akh==md5('addpustaka')){ 
$targetDir = "../../wwwupload/"; 
$nama_file = basename($_FILES["_filedok"]["name"]);
$smk->addpustaka($con, $_POST['_nmdok'] ?? "",$_POST['_deskripsiadd'] ?? "", $nama_file ?? "", $_POST['_userdok'] ?? "");
if (! empty($_FILES['_filedok']['tmp_name'])) {
  copy($_FILES['_filedok']['tmp_name'],"../../wwwupload/".$nama_file);
 // move_uploaded_file($_FILES["_userdok"]["tmp_name"], $targetFile);
}
}
else if($akh==md5('editpustaka')){
$smk->updatepustaka($con, $_POST['_nmdokeddit'], $_POST['_deskripsiedit'], $_POST['_idedit']);
}
else if($akh==md5('hapuspustaka')){
  $filename = $_POST['_filedokdel'] ?? "";
  
  $smk->hapuspustaka($con,$_POST['_idhapus']);
  if(file_exists("../../wwwupload/".$filename)) {
    // Jika file ada pada folder, maka file gambar dihapus
    unlink("../../wwwupload/".$filename); 
  }
}
#end region pustaka

  else{
    session_destroy();
    session_unset($_SESSION['c_guru']);
    header('location:../../login');
    //echo "string";
  }
}
?>
