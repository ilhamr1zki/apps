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

function addmasterjuz($con, $juz, $addIsiSurah) {

  foreach ($addIsiSurah as $isiSurah) {

    $akh = mysqli_query($con,"INSERT INTO tbl_juz set juz = '$juz', isi_surah = '$isiSurah' ");

  }

  session_start();
  $_SESSION['pesan']='tambah';
  header('location:../../masterjuz');
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
