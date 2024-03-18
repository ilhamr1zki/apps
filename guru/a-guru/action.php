<?php date_default_timezone_set('Asia/Jakarta');

class action{

#region jilid
function addmasterjilid($con,$nmjilid,$seqjilid,$kdsekolah, $_jlparselect){
  $akh=mysqli_query($con,"INSERT INTO tbl_jilid set nmjilid='$nmjilid',seqjilid='$seqjilid',kdsekolah='$kdsekolah', parentid = '$_jlparselect' ");
  session_start();
  $_SESSION['pesan']='tambah';
  header('location:../../masterjilid');
  exit;
}
function editmasterjilid($con,$nmjilid,$seqjilid,$kdsekolah,$id){
  $akh=mysqli_query($con,"UPDATE tbl_jilid set nmjilid='$nmjilid',seqjilid='$seqjilid',kdsekolah='$kdsekolah' where id='$id' ");
  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../masterjilid');
  exit;
}

function addnaikjilid($con,$idjilid,$seqjilid,$c_siswa, $nmsiswa, $tglnaikjilid, $nmjilid, $entryby, $nmbagian, $catatan){
  $akh=mysqli_query($con,"INSERT INTO sisjilid_h set idjilid='$idjilid',seqjilid='$seqjilid', 
  c_siswa='$c_siswa', nmsiswa='$nmsiswa', tglnaikjilid = '$tglnaikjilid', nmjilid='$nmjilid',
   entryby='$entryby', entrydate = CURRENT_DATE(), nmbagian = '$nmbagian', catatan = '$catatan' ");
  
  $akh2=mysqli_query($con,"INSERT INTO sisjilid_d set idfk='$idjilid',idjilid='$idjilid',  tglnaikjilid= '$tglnaikjilid', nmjilid = '$nmbagian', c_siswa='$c_siswa' ");

  session_start();
  $_SESSION['pesan']='tambah';
  header('location:../../naikjilid');
  exit;
}

// parameter $nmsiswa dan $nmjilid tidak terpakai
function updatenaikjilid($con,$idjilid,$seqjilid,$c_siswa, $nmsiswa, $tglnaikjilid, $nmjilid, $entryby, $nmbagian, $catatan, $namajilidutama){
  $akh=mysqli_query($con,"UPDATE sisjilid_h set idjilid='$idjilid',seqjilid='$seqjilid', 
  tglnaikjilid = '$tglnaikjilid', nmjilid='$namajilidutama', updateby='$entryby', updatedate = CURRENT_DATE(), nmbagian = '$nmbagian', catatan = '$catatan' where c_siswa='$c_siswa' ");
  
  $akh2=mysqli_query($con,"INSERT INTO sisjilid_d set idfk='$idjilid', idjilid='$idjilid',  tglnaikjilid= '$tglnaikjilid', nmjilid = '$nmbagian', c_siswa='$c_siswa' ");

  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../naikjilid');
  exit;
}
function updateCatatannaikjilid($con,$c_siswa, $catatan){
  $akh=mysqli_query($con,"UPDATE sisjilid_h set catatan = '$catatan' where c_siswa='$c_siswa' ");

  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../naikjilid');
  exit;
}
function hapusmjilid($con,$id_jilid){
  $akh=mysqli_query($con,"DELETE from tbl_jilid where id='$id_jilid' ");
  $akh1=mysqli_query($con,"DELETE from sisjilid_d where idjilid='$id_jilid' ");
  $akh2=mysqli_query($con,"DELETE from sisjilid_h where idjilid='$id_jilid' ");
  $_SESSION['pesan']='hapus';
  header('location:../../masterjilid');
  exit;
}
function setupmanualnaikjilid($con, $idjilid,$seqjilid,$c_siswa, $nmsiswa, $tglnaikjilid, $nmjilid, $entryby, $nmbagian, $catatan, $namajilidutama)
{
  $sjh=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM sisjilid_h where c_siswa='$c_siswa' limit 1 "));
  if($sjh != null){
    $akh=mysqli_query($con,"UPDATE sisjilid_h set idjilid='$idjilid',seqjilid='$seqjilid', 
    tglnaikjilid = '$tglnaikjilid', nmjilid='$namajilidutama', updateby='$entryby', updatedate = CURRENT_DATE(), nmbagian = '$nmbagian', catatan = '$catatan' where c_siswa='$c_siswa' ");
  }
  else{
    $akh=mysqli_query($con,"INSERT INTO sisjilid_h set idjilid='$idjilid',seqjilid='$seqjilid', 
    c_siswa='$c_siswa', nmsiswa='$nmsiswa', tglnaikjilid = '$tglnaikjilid', nmjilid='$nmjilid',
     entryby='$entryby', entrydate = CURRENT_DATE(), nmbagian = '$nmbagian', catatan = '$catatan' ");
    
    $akh2=mysqli_query($con,"INSERT INTO sisjilid_d set idfk='$idjilid',idjilid='$idjilid',  tglnaikjilid= '$tglnaikjilid', nmjilid = '$nmbagian', c_siswa='$c_siswa' ");
  }

  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../naikjilid');
  exit;

}
#endregion jilid

// region juz

function addmasterjuz($con, $juzKetAyat, $urutan, $parentid) {

  mysqli_query($con,"
    INSERT INTO tbl_juz 
    SET 
    juz_atau_keterangan_ayat    = '$juzKetAyat',
    seqjuz                      = '$urutan',
    parentid                    = '$parentid'
  ");

  session_start();
  $_SESSION['pesan']='tambah';
  header('location:../../masterjuz');
  exit;

  if ($isiSurahAwalTerakhir == 'kosong' && $isiSurahAkhirTerakhir == 'kosong') {

    // echo "dua dua nya kosong";exit;

    // insert table view_mastertahfidz
    mysqli_query($con,"
      INSERT INTO view_mastertahfidz 
      SET 
      juz = '$juz',
      surat_awal_pertama          = '$isiSurahAwalPertama',
      surat_akhir_pertama         = '$isiSurahAkhirPertama',
      keterangan_ayat_surah_awal  = '$isiKetSrhAwl',
      keterangan_ayat_surah_akhir = '$isiKetSrhAkr'
    ");

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;

  }

  if ($isiSurahAkhirTerakhir == 'kosong') {

    // echo "TES " . $juz . "<br>" . $isiSurahAwalPertama . " & " . $isiSurahAwalTerakhir . "<br>" . $isiSurahAkhirPertama . "<br>" . $isiKetSrhAwl . $isiKetSrhAkr ;exit;

    // insert table view_mastertahfidz
    $queryInsert = "
    INSERT INTO view_mastertahfidz 
      SET 
      juz                         = '$juz',
      surat_awal_pertama          = '$isiSurahAwalPertama',
      surat_awal_terakhir         = '$isiSurahAwalTerakhir',
      surat_akhir_pertama         = '$isiSurahAkhirPertama',
      surat_akhir_terakhir        = NULL,
      keterangan_ayat_surah_awal  = '$isiKetSrhAwl',
      keterangan_ayat_surah_akhir = '$isiKetSrhAkr'

    ";

    mysqli_query($con, $queryInsert);

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;

  }

  if ($isiKetSrhAwl == 'kosong' && $isiKetSrhAkr == 'kosong') {

    // insert table view_mastertahfidz
    mysqli_query($con,"
      INSERT INTO view_mastertahfidz 
      SET 
      juz = '$juz',
      surat_awal_pertama       = '$isiSurahAwalPertama',
      surat_awal_terakhir      = '$isiSurahAwalTerakhir',
      surat_akhir_pertama      = '$isiSurahAkhirPertama',
      surat_akhir_terakhir     = '$isiSurahAkhirTerakhir'
    ");

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;

  } 

  if ($isiSurahAwalTerakhir == "kosong") {

    // echo "TES " . $juz . "<br>" . $isiSurahAwalPertama . "<br>" . $isiSurahAkhirPertama . " & " . $isiSurahAkhirTerakhir  . "<br>" . $isiKetSrhAwl . " " . $isiKetSrhAkr ;exit;

    $queryInsert = "
    INSERT INTO view_mastertahfidz 
      SET 
      juz                         = '$juz',
      surat_awal_pertama          = '$isiSurahAwalPertama',
      surat_awal_terakhir         = NULL,
      surat_akhir_pertama         = '$isiSurahAkhirPertama',
      surat_akhir_terakhir        = '$isiSurahAkhirTerakhir',
      keterangan_ayat_surah_awal  = '$isiKetSrhAwl',
      keterangan_ayat_surah_akhir = '$isiKetSrhAkr'

    ";

    mysqli_query($con, $queryInsert);

    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../masterjuz');
    exit;    

  }

}

function editmasterjuz($con, $id, $keteranganSurahAyat, $seqjuz, $parentid) {

  mysqli_query($con,"
    UPDATE tbl_juz 
    SET 
    juz_atau_keterangan_ayat    = '$keteranganSurahAyat',
    seqjuz                      = '$seqjuz',
    parentid                    = '$parentid'
    WHERE 
    id                          = '$id' 
  ");

  session_start();
  $_SESSION['pesan'] = 'edit';
  header('location:../../masterjuz');
  exit;

}

function hapusmjuz($con, $id_juz) {

  mysqli_query($con,"DELETE from tbl_juz where id ='$id_juz' ");

  $_SESSION['pesan']='hapus';
  header('location:../../masterjuz');
  exit;

}

function updatenaikjuz($con, $idjuz, $seqjuz, $c_siswa, $nmsiswa, $_tglnaikjuz, $updateBy, $updateDate, $isiJuz, $juzketsurah, $isiCatatan) {

  mysqli_query($con,
    "
      UPDATE sisjuz_h set 
      idjuz       =   '$idjuz',
      seqjuz      =   '$seqjuz', 
      c_siswa     =   '$c_siswa',
      nmsiswa     =   '$nmsiswa', 
      tglnaikjuz  =   '$_tglnaikjuz', 
      updateby    =   '$updateBy',
      updatedate  =   '$updateDate', 
      juz         =   '$isiJuz', 
      ketjuzsurah =   '$juzketsurah', 
      catatan     =   '$isiCatatan' 
      WHERE c_siswa = '$c_siswa'
    "
  );

  mysqli_query($con,
    "
      INSERT INTO sisjuz_d set 
      idfk        =   '$idjuz',
      idjuz       =   '$idjuz',  
      tglnaikjuz  =   '$_tglnaikjuz', 
      ketjuzsurah =   '$juzketsurah', 
      c_siswa     =   '$c_siswa' 
    "
  );

  session_start();
  $_SESSION['pesan'] = 'edit';
  header('location:../../naikjuz');
  exit;

}

function setupmanualnaikjuz($con, $idjuz, $seqjuz, $c_siswa, $nmsiswa, $_tglnaikjuz, $entryby, $entryDateNow, $isiJuz, $juzketsurah, $isiCatatan) {

  $queryFindDataSiswa = mysqli_query($con, "SELECT * FROM sisjuz_h WHERE c_siswa = '$c_siswa' ");

  $getDataSiswa       = mysqli_num_rows($queryFindDataSiswa);

  // Jika code siswa yang di cari tidak ada di table sisjuz_h, maka code siswa tersebut di insert ke table sisjuz_h
  if ($getDataSiswa == 0) {

    mysqli_query($con,
      "
        INSERT INTO sisjuz_h set 
        idjuz       =   '$idjuz',
        seqjuz      =   '$seqjuz', 
        c_siswa     =   '$c_siswa',
        nmsiswa     =   '$nmsiswa', 
        tglnaikjuz  =   '$_tglnaikjuz', 
        entryby     =   '$entryby',
        entrydate   =   '$entryDateNow', 
        juz         =   '$isiJuz', 
        ketjuzsurah =   '$juzketsurah', 
        catatan     =   '$isiCatatan' 
      "
    );
    
    mysqli_query($con,
      "
        INSERT INTO sisjuz_d set 
        idfk        =   '$idjuz',
        idjuz       =   '$idjuz',  
        tglnaikjuz  =   '$_tglnaikjuz', 
        ketjuzsurah =   '$juzketsurah', 
        c_siswa     =   '$c_siswa' 
      "
    );

    session_start();
    $_SESSION['pesan'] = 'edit';
    header('location:../../naikjuz');
    exit;

  }

  // Jika code siswa yang di cari ada di table sisjuz_h, maka code siswa tersebut di update ke table sisjuz_h dan table sisjuz_d
  mysqli_query($con,
    "
      UPDATE sisjuz_h set 
      idjuz       =   '$idjuz',
      seqjuz      =   '$seqjuz', 
      c_siswa     =   '$c_siswa',
      nmsiswa     =   '$nmsiswa', 
      tglnaikjuz  =   '$_tglnaikjuz', 
      entryby     =   '$entryby',
      entrydate   =   CURRENT_DATE(), 
      juz         =   '$isiJuz', 
      ketjuzsurah =   '$juzketsurah', 
      catatan     =   '$isiCatatan' 
      WHERE c_siswa = '$c_siswa'
    "
  );

  mysqli_query($con,
    "
      INSERT INTO sisjuz_d set 
      idfk        =   '$idjuz',
      idjuz       =   '$idjuz',  
      tglnaikjuz  =   '$_tglnaikjuz', 
      ketjuzsurah =   '$juzketsurah', 
      c_siswa     =   '$c_siswa' 
    "
  );

  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../naikjuz');
  exit;

}

function updateCatatanNaikJuz($con,$c_siswa, $catatan) {

  $akh = mysqli_query($con,"UPDATE sisjuz_h set catatan = '$catatan' where c_siswa='$c_siswa' ");

  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../naikjuz');
  exit;
}

// endregion juz

//region pustaka
function addpustaka($con,$nama_dokumen,$deskripsi,$file_dokumen, $user_dokumen){
  $akh=mysqli_query($con,"INSERT INTO pustaka set nama_dokumen='$nama_dokumen',deskripsi='$deskripsi',	file_dokumen='$file_dokumen', user_dokumen ='$user_dokumen' ");
  session_start();
  $_SESSION['pesan']='tambah';
  header('location:../../pustaka');
  exit;
}
function updatepustaka($con,$nama_dokumen,$deskripsi, $id){
  $akh=mysqli_query($con,"update pustaka set nama_dokumen='$nama_dokumen',deskripsi='$deskripsi' where id ='$id' ");
  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../pustaka');
  exit;
}
function hapuspustaka($con,$id_pustaka){
  $akh=mysqli_query($con,"DELETE from pustaka where id='$id_pustaka' ");
  $_SESSION['pesan']='hapus';
  header('location:../../pustaka');
  exit;
}
//end region pustaka

  #region imtas
    function adddataimtas($con,$c_siswa,$c_ta, $stsimtas, $stsjilid, $c_guru, $c_kelas, $jmlx_imtas, $keterangan, $tanggal){
        $akh=mysqli_query($con,"INSERT INTO imtas(c_siswa, 
        c_ta,	stsimtas, stsjilid , 
         c_guru , c_kelas , jmlx_imtas , keterangan, tanggal, jmlx_khatam, thn_pertama, thn_terakhir) values('$c_siswa',
        '$c_ta', '$stsimtas', '$stsjilid', '$c_guru', '$c_kelas', '$jmlx_imtas', '$keterangan', '$tanggal', 0, 0, 0) ");
        
        $akh2=mysqli_query($con,"UPDATE sisjilid_h set flag='Y' where c_siswa = '$c_siswa' ");
        
        session_start();
        $_SESSION['pesan']='tambah';
        header('location:../../dataimtas');
        exit;
      }
      function editdataimtas($con, $jmlx_imtas, $keterangan, $tanggal, $id){
        $akh=mysqli_query($con,"UPDATE imtas set jmlx_imtas = '$jmlx_imtas', keterangan = '$keterangan', tanggal = '$tanggal' where id =  $id ");
        session_start();
        $_SESSION['pesan']='edit';
        header('location:../../dataimtas');
        exit;
      }
      
      function hapusimtas($con,$id, $c_siswa){
        $akh=mysqli_query($con,"DELETE from imtas where id='$id' ");
        $akh2=mysqli_query($con,"UPDATE sisjilid_h set flag='N' where c_siswa = '$c_siswa' ");
        $_SESSION['pesan']='hapus';
        header('location:../../dataimtas');
        exit;
      }

      #endregion imtas
}
?>
