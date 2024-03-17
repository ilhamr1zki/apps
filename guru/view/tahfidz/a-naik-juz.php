<?php 

    $sqlJuz = mysqli_query($con,
    "select CONCAT('Juz ', tblall.juz_atau_keterangan_ayat,' Surah ', nmbagian) as nmjuzall, tblall.* from 
    (
        select tbl1.* from
        (
            select tj.id, tbl1.juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, count(sh.c_siswa) as jml, tj.seqjuz from tbl_juz tj
            left join sisjuz_h sh on tj.id = sh.idjuz 
            left join (select distinct tj2.id, tj2.juz_atau_keterangan_ayat from tbl_juz tj2 ) as tbl1 
            on tj.parentid  = tbl1.id
            where tj.parentid != 0
            
            and coalesce(sh.flag, 'N') = 'N'
            group by tj.id, tj.juz_atau_keterangan_ayat, tbl1.juz_atau_keterangan_ayat, tj.seqjuz
            order by tj.seqjuz
        ) as tbl1
    union 
        select tbl2.* from
        ( 
            select tj.id, '' juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, count(sh.c_siswa) as jml, tj.seqjuz  from tbl_juz tj
            left join sisjuz_h sh on tj.id = sh.idjuz  
            where tj.parentid = 0 and tj.seqjuz  > 14
            and coalesce(sh.flag, 'N') = 'N'
            group by tj.id, tj.juz_atau_keterangan_ayat, tj.seqjuz
            order by tj.seqjuz
        ) as tbl2
   ) as tblall
   order by seqjuz"); 

?>

<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-12">

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='tambah'){?>
          <div style="display: none;" class="alert alert-warning alert-dismissable">Setup Naik Juz Berhasil Disimpan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Naik Juz Berhasil Disimpan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Naik Juz Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

    </div>
</div>


<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> Naik Juz</h3><span style="float:right;"><a class="btn btn-primary" onclick="OpenCarisiswaModal()"><i class="glyphicon glyphicon-plus"></i> Cari Siswa</a></span>
       
    </div>
    <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('addnaikjuz'); ?>/access" method="post">
    <div class="box-body table-responsive">
        <input type="hidden" id="_entryby" name="_entryby" class="form-control" value="<?php echo $na['nama'] ?>">
        <input type="hidden" id="_idsiswa" name="_idsiswa" class="form-control">
        <input type="hidden" id="_idjuz" name="_idjuz" class="form-control">
        <input type="hidden" id="_idjuznext" name="_idjuznext" class="form-control">
        <input type="hidden" id="_nmjuznext" name="_nmjuznext" class="form-control">
        <input type="hidden" id="_seqnext" name="_seqnext" class="form-control">

        <input type="hidden" class="form-control" id="_nmsiswa" name="_nmsiswa">
        <input type="hidden" class="form-control" id="_juzcur" name="_juzcur"/>
        <input type="hidden" class="form-control" id="_juzutama" name="_juzutama"/>

        <input type="hidden" id="_idjuzmanual" name="_idjuzmanual" class="form-control">
        <input type="hidden" id="_seqnextmanual" name="_seqnextmanual" class="form-control">
        <input type="hidden" id="_nmjuzmanual" name="_nmjuzmanual" class="form-control">
        <input type="hidden" id="_nmbagianmanual" name="_nmbagianmanual" class="form-control">

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Nama Siswa</label>
                    <label class="form-control" id="_nmsiswa2" name="_nmsiswa2"> </label>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label>Kelas</label>
                    <label class="form-control" id="_kelassiswa" name="_kelassiswa"></label>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>Tgl Naik Juz</label>
                    <div class="controls input-append date form_date" data-date="1998-10-14" data-date-format="dd-m-yyyy" data-link-field="dtp_input1">
                        <input id="_tglnaikjuz" name="_tglnaikjuz" class="form-control form-select" type="text" value="<?php echo date('d-m-Y'); ?>"  required="">
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">

            <div class="col-sm-3">
                <div class="form-group">
                    <label>Juz Sekarang</label>
                    <input class="form-control" type="text" name="_juzcur2" id="isijuzsekarang" readonly="">
                </div>
            </div>

            <div class="col-sm-3">
                <div class="form-group">
                    <label>Bagian</label>
                    <input type="text" class="form-control" name="_bagianjuzcur2" id="_bagianjuzcur2" readonly="">
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="form-group">
                    <label>Setting Manual Juz</label>
                    <div class="input-group">
                        <select class="form-control form-select input-group-sm" id="_setmanualjuzselect" name="_setmanualjuzselect" onchange="SelectilidChanged()">
                            <option value="">-- Pilih --</option>
                            <?php 
                            while($resJuz=mysqli_fetch_array($sqlJuz))
                            {?>
                                <option value="<?php  echo $resJuz['id']; ?>"> <?php echo $resJuz['nmjuzall']; ?></option>
                            <?php } ?>
                        </select>
                        <!-- <br><br> -->
                       <!-- <button id="btnsetupmanualjuz" style="margin-top: 15px;" name="btnsetupmanualjuz" class="btn btn-warning btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan Manual Juz</button> -->  
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">
                <div class="form-group">
                    <!-- <button id="btnsetupmanualjuz" style="margin-top: 15px;" name="btnsetupmanualjuz" class="btn btn-warning btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan</button> -->
                    <button id="btnnaikjuz" style="display: none;" name="btnnaikjuz" class="btn btn-warning btn-circle"><i class="glyphicon glyphicon-ok"></i> Naik Juz </button> 
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">
            <button id="btnsetupjuz" name="btnsetupjuz" style="display:none;" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Setup Juz </button> 
            <!-- <button id="btnnaikjuz" name="btnnaikjuz" style="display:none;" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Naik Juz </button>  -->
            </div>
        </div> 

        <hr/>

            <div class="row">
                <div class="col-sm-12">
                
                <label>Histori Catatan</label>
                <textarea id="editorcatatan" name="editorcatatan"></textarea>
                
                </div>
            </div>

            <!-- <div class="row" style="width: 85%; display: flex;">
                <div class="col-sm-2">
                    <button id="btnSimpanCatatan" name="btnSimpanCatatan" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan Catatan </button> 
                </div>
                <div class="col-sm-2">
                    <button id="btnnaikjuz" name="btnnaikjuz" class="btn btn-warning btn-circle"><i class="glyphicon glyphicon-ok"></i> Naik Juz </button>
                </div>
            </div> -->

            <div class="row">
                <div class="col-sm-2">
                    <button id="btnnaikjuz" name="btnnaikjuz" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan Catatan </button>
                </div>
            </div>
        
    </div>
    </form>
    
</div>

<div id="datamassiswa" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Data Siswa</h4>
            </div>
            <div class="modal-body"> 
                <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="5%">NO</th>
                <?php 
                    if(empty($_GET['q'])) {
                        echo '<th width="12%">KELAS</th>';
                    } 
                ?>
                  <th>NISN</th>
                  <th>NAMA</th>
                  <th>GENDER</th>
                </tr>
                </thead>
                <tbody>
<?php
    
    if(isset($_GET['q'])) {
      $smk=mysqli_query($con,"SELECT * FROM siswa  where  c_kelas='$_GET[q]' order by nama asc ");
    } else {
      $smk=mysqli_query($con,"SELECT * FROM siswa  order by nama asc ");
    }  

    $vr = 1;

    while($akh=mysqli_fetch_array($smk)) { 

        $kk  = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas where c_kelas='$akh[c_kelas]' ")); 
        $sjh = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM sisjuz_h where c_siswa='$akh[c_siswa]' limit 1 "));

        // var_dump($sjh);
        
        if($sjh != null) {
            $nextSeq = $sjh['seqjuz'] + 1;
            $idjuzselected = $sjh['idjuz'];

            if($idjuzselected != "23") { 
                //juz finish
                $nextmjuz       = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM tbl_juz where seqjuz = '$nextSeq' limit 1 ")); 
                $nextjuzutama   = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM tbl_juz where id = '$nextmjuz[parentid]' limit 1 ")); 
            }
            
            $curbagian = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM tbl_juz where id='$idjuzselected' limit 1 ")); 
        }

?>                
        <tr onclick="OnSiswaSelectedModal('<?php echo $akh['c_siswa']; ?>', 
            '<?php echo $akh['nama']; ?>', 
            '<?php echo $kk['kelas']; ?>', 
            '<?php echo $sjh['c_siswa'] ?? ''; ?>',
            '<?php echo $sjh['juz'] ?? ''; ?>', 
            '<?php echo $sjh['idjuz'] ?? 0; ?>',
            '<?php echo $sjh['seqjuz'] ?? 0; ?>',
            '<?php echo $nextSeq ?? 0; ?>', 
            '<?php echo $nextmjuz['juz_atau_keterangan_ayat'] ?? ''; ?>',
            '<?php echo $nextmjuz['id'] ?? 0; ?>',
            '<?php echo $sjh['ketjuzsurah'] ?? '';?> ',
            '<p><br/></p>',
            '<?php echo $nextjuzutama['juz_atau_keterangan_ayat'] ?? '';?> '
            )">
            <td> <?php echo $vr; ?> </td>
            <?php 
                if(empty($_GET['q'])) {
                    echo '<td>' . $kk['kelas'] . '</td>';
                }
            ?>
            <td> <?php echo $akh['nisn']; ?> </td>
            <td> <?php echo $akh['nama']; ?> </td>
            <td> 
                <?php 
                    if($akh['jk'] == 'L') {
                        echo 'Laki - Laki';
                    } elseif ($akh['jk'] == 'P') {
                        echo 'Perempuan';
                    } 
                ?>
            </td>
        </tr>

<?php 
    $vr++; 
    
    } 

?>
</tbody>
</table>
                </div>
            </div>
        </div>
    </div>    
</div>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script> -->

<script language="javascript" type="text/javascript">

$(document).ready(function() {

    $('#_idsiswa').val("");
    $('#_nmsiswa').val("");
    $('#_nmsiswa2').text("");
    $('#_kelassiswa').text("");

    $('#editorcatatan').summernote({
        placeholder: 'Isi Catatan',
        tabsize: 2,
        height: 150
      });

    var _btnsetupjuz = document.getElementById("btnsetupjuz");
    _btnsetupjuz.style.display = "none";

    

});

    function OpenCarisiswaModal(){

        $('#datamassiswa').modal("show");
    }

    function OnSiswaSelectedModal(kode, nama, kelas, c_siswa, curjuz, idcurjuz, seqjuz, 
    nextSeq, nextnmjuz, nextidjuz, nmbagian, catatan, nextjuzutama){

        $('#_idsiswa').val(kode);
        $('#_nmsiswa').val(nama);
        $('#_nmsiswa2').text(nama);
        $('#_kelassiswa').text(kelas);

        //$('#editorcatatan').summernote('reset');
        $('#editorcatatan').summernote('code', '<p><br></p>');

        if(c_siswa == undefined || c_siswa == null || c_siswa == '') {

            var _btnsetupjuz = document.getElementById("btnsetupjuz");
            _btnsetupjuz.style.display = "none";

            var _btnsetupmanualjuz = document.getElementById("btnsetupmanualjuz");

            $('#_juzcur').val("An Nas - Al Fajr");
            $('#isijuzsekarang').text("JUZ 30");
            $('#_bagianjuzcur2').val("An Nas - Al Fajr");
            $('#_idjuz').val("16");
            $('#_seqnext').val(1);
            
        } else {

            let btnnaikjuz = document.getElementById("btnnaikjuz");
            btnnaikjuz.style.display   = "block";
            btnnaikjuz.style.marginTop = "10px";
            
            $('#_idjuz').val(nextidjuz);
            $('#_seqnext').val(nextSeq);
            $('#_bagianjuzcur2').val(nmbagian ?? "");
            $('#_nmjuznext').val(nextnmjuz ?? "");
            
            $('#_juzutama').val(nextjuzutama ?? "");
            
            fetch("view/tahfidz/singledatajuz_h.php?c_siswa=" + c_siswa)
            .then((response) => {
                if(!response.ok){ // Before parsing (i.e. decoding) the JSON data,// check for any errors.// In case of an error, throw.
                    throw new Error("Terjadi kesalahan!");
                }

                return response.json(); // Parse the JSON data.
            })
            .then((data) => {
                // console.log(data.catatan)
                const myJSON                = JSON.stringify(data.catatan);
                const ketjuzsurahsekarang   = JSON.stringify(data.juz);
                const idjuzsekarang         = JSON.stringify(data.idjuz);
                document.getElementById("isijuzsekarang").value = ketjuzsurahsekarang.slice(1, -1).trim()
                alert(ketjuzsurahsekarang.slice(1, -1).trim())

                // This is where you handle what to do with the response.
                $('#editorcatatan').summernote('pasteHTML', myJSON.slice(1, -1).trim());
                $('#_juzcur').val(ketjuzsurahsekarang.slice(1, -1).trim());
                $('#isijuzsekarang').text(ketjuzsurahsekarang.slice(1, -1).trim());

                if(idjuzsekarang.slice(1, -1).trim() == "23")
                {
                    _btnnaikjuz.style.display = "none";
                }

            })
            .catch((error) => {
                // This is where you handle errors.
            });

        }

        $('#datamassiswa').modal("hide");
    }

    function SelectilidChanged(juzval) {

        if($('#_idsiswa').val() == null || $('#_idsiswa').val() == "")
        {
            alert("Silahkan pilih siswa");
            return $('#_setmanualjuzselect').val("");
        }

        fetch("view/tahfidz/apiservicemasterjuz.php?idjuz=" + $('#_setmanualjuzselect').val())
            .then((response) => {
                if(!response.ok){ // Before parsing (i.e. decoding) the JSON data,// check for any errors.// In case of an error, throw.
                    throw new Error("Terjadi kesalahan!");
                }

                return response.json(); // Parse the JSON data.
            })
            .then((data) => {
                var valjuz = JSON.stringify(data.nmjuz2);
                var valnmbagian = JSON.stringify(data.nmbagian);
                var valseq = JSON.stringify(data.seqjuz);

                $('#_idjuzmanual').val($('#_setmanualjuzselect').val());
                $('#_seqnextmanual').val(valseq.slice(1, -1).trim());
                $('#_nmjuzmanual').val(valjuz.slice(1, -1).trim());
                $('#_nmbagianmanual').val(valnmbagian.slice(1, -1).trim());


                //alert("id: " + $('#_setmanualjuzselect').val() + "- jilid: " + valjuz + "- bagian: " + valnmbagian);
            })
            .catch((error) => {
                // This is where you handle errors.
            });

    } 

</script>

<!-- jQuery 2.2.3 -->

<script type="text/javascript" src="<?php echo $base; ?>theme/datetime/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo $base; ?>theme/datetime/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    forceParse: 0,
        showMeridian: 1
    });
  $('.form_date').datetimepicker({
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
    });
  $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 1,
    minView: 0,
    maxView: 1,
    forceParse: 0
    });
</script>




