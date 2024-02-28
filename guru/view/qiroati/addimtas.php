<script language="javascript" type="text/javascript">
    $(document).ready(function () {  
        
        // var nmsiswa = document.getElementById("_idsiswa").value; //$('#_nmsiswa2').val()
        // $("#btnSimpanimtas").click(function () {  
        //     if(nmsiswa == "")
        //     {
        //         alert('Siswa belum dipilih')
        //         return false
        //     }
        // });  


    });  

    function OpenCarisiswaModal(){
        $('#datamassiswa').modal("show");
        }

        function OnSiswaSelectedModal(kode, nama, kelas, c_kelas){

        $('#_idsiswa').val(kode);
        $('#_nmsiswa2').text(nama);
        $('#_kelassiswa').text(kelas);
        $('#_c_kelas').val(c_kelas);
        
        $('#datamassiswa').modal("hide");
    }

    function SelesaiChanged(selesaival) {
    //alert(selesaival);
    $('#_stsjilid').val(selesaival);
}

</script>



<?php $_SESSION['pesan'] = '';?>
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> Tambah IMTAS</h3><span style="float:right;"><a class="btn btn-primary" href="<?php echo $basegu; ?>dataimtas"><i class="glyphicon glyphicon-th-list"></i> List IMTAS</a><a class="btn btn-primary" onclick="OpenCarisiswaModal()"><i class="glyphicon glyphicon-plus"></i> Cari Siswa</a></span>
    </div>

<form action="<?php echo $basegu; ?>a-guru/<?php echo md5('adddataimtas'); ?>/access" method="post" enctype="multipart/form-data">
    <div class="box-body table-responsive">
    <input type="hidden" id="_entryby" name="_entryby" class="form-control" value="<?php echo $na['nama'] ?>">
    <input type="hidden" id="_idsiswa" name="_idsiswa" class="form-control">
    <input type="hidden" id="_stsjilid" name="_stsjilid" class="form-control">
    <input type="hidden" id="_stsimtas" name="_stsimtas" class="form-control">
    <input type="hidden" id="_c_kelas" name="_c_kelas" class="form-control">
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
        
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label>Tanggal</label>
                <div class="controls input-append date form_date" data-date="1998-10-14" data-date-format="dd-m-yyyy" data-link-field="dtp_input1">
                    <input id="_tglimtas" name="_tglimtas" class="form-control form-select" type="text" value="<?php echo date('d-m-Y'); ?>"  required="">
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
            </div>
        </div>
        
        <div class="col-sm-2">
            <div class="form-group">
                <label>Berapa kali IMTAS</label>
                <input min=1 type="number" class="form-control" id="_jmlimtas" name="_jmlimtas" required="">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label>Selesai</label>
                <select class="form-control" id="_stsselesaiitem" name="_stsselesaiitem" onchange="SelesaiChanged(this.value)">
                    <option value=""> PILIH</option>    
                    <option value="JILID"> JILID</option>
                </select>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" class="form-control" id="_keterangan" name="_keterangan">
            </div>
        </div>
    </div>
    <div class="row">
            <div class="col-sm-3">
            <button id="btnSimpanimtas" name="btnSimpanimtas" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-floppy-saved"></i> Simpan IMTAS</button> 
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
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-education"></i> Data Siswa</h4>
            </div>
            <div class="modal-body"> 
                <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="5%">NO</th>
                <?php if(empty($_GET['q'])){
                  echo '<th width="12%">KELAS</th>';
                } ?>
                  <th>NISN</th>
                  <th>NAMA</th>
                  <th>GENDER</th>
                </tr>
                </thead>
                <tbody>
<?php
if(isset($_GET['q'])){
  $smk=mysqli_query($con,"SELECT distinct a.* FROM siswa a inner join sisjilid_h b on a.c_siswa = b.c_siswa where b.idjilid = '23' and b.flag='N' and c_kelas='$_GET[q]' order by nama asc ");
}else{
  $smk=mysqli_query($con,"SELECT distinct a.* FROM siswa a inner join sisjilid_h b on a.c_siswa = b.c_siswa where b.idjilid = '23' and b.flag='N' order by nama asc ");
}             $vr=1;
while($akh=mysqli_fetch_array($smk))
{ 
    $kk=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$akh[c_kelas]' ")); 

?>                
                <tr onclick="OnSiswaSelectedModal('<?php echo $akh['c_siswa']; ?>', 
                '<?php echo $akh['nama']; ?>', 
                '<?php echo $kk['kelas']; ?>', 
                '<?php echo $akh['c_kelas'] ?? ''; ?>')">

                  <td><?php echo $vr; ?></td>
                <?php if(empty($_GET['q'])){
                  echo '<td>'.$kk['kelas'].'</td>';
                }?>
                  <td><?php echo $akh['nisn']; ?></td>
                  <td><?php echo $akh['nama']; ?></td>
                  <td><?php if($akh['jk']=='L'){echo 'Laki - Laki';}elseif($akh['jk']=='P'){echo 'Perempuan';} ?></td>
                </tr>

<?php $vr++; 
} ?>
</tbody>
</table>
                </div>
            </div>
        </div>
    </div>    
</div>


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