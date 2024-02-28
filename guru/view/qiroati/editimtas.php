<?php $aksis=mysqli_query($con,"SELECT a.*, b.nama, c.kelas FROM imtas a inner join siswa b on a.c_siswa = b.c_siswa inner join kelas c on a.c_kelas = c.c_kelas where a.id='$_GET[q]' ");$resultImtas=mysqli_fetch_array($aksis);?>


<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-success alert-dismissable">Imtas Berhasil Diedit
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } $_SESSION['pesan'] = '';?>
    </div>
</div>

<?php $_SESSION['pesan'] = '';?>
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> Edit IMTAS</h3><span style="float:right;"><a class="btn btn-primary" href="<?php echo $basegu; ?>dataimtas"><i class="glyphicon glyphicon-th-list"></i> List IMTAS</a></span>
    </div>

<form action="<?php echo $basegu; ?>a-guru/<?php echo md5('editdataimtas'); ?>/access" method="post" enctype="multipart/form-data">
    <div class="box-body table-responsive">
    <input type="hidden" id="_idedit" name="_idedit" value="<?php echo $_GET['q']; ?>">
    <input type="hidden" id="_entryby" name="_entryby" class="form-control" value="<?php echo $na['nama'] ?>">
    <input type="hidden" id="_idsiswa" name="_idsiswa" class="form-control" value="<?php echo $resultImtas['c_siswa']; ?>">
    <input type="hidden" id="_stsjilid" name="_stsjilid" class="form-control" value="<?php echo $resultImtas['stsimtas']; ?>">
    <input type="hidden" id="_stsimtas" name="_stsimtas" class="form-control">
    <input type="hidden" id="_c_kelas" name="_c_kelas" class="form-control" value="<?php echo $resultImtas['c_kelas']; ?>">
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
            
                <label>Nama Siswa</label>
                <label class="form-control" id="_nmsiswa2" name="_nmsiswa2"> <?php echo $resultImtas['nama']; ?></label>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label>Kelas</label>
                <label class="form-control" id="_kelassiswa" name="_kelassiswa"><?php echo $resultImtas['kelas']; ?></label>
            </div>
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label>Tanggal</label>
                <div class="controls input-append date form_date" data-date="1998-10-14" data-date-format="dd-m-yyyy" data-link-field="dtp_input1">
                    <input id="_tglimtas" name="_tglimtas" class="form-control form-select" type="text" value="<?php echo date("d-m-Y", strtotime($resultImtas['tanggal'])) ; ?>"  required="">
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
            </div>
        </div>
       
        <div class="col-sm-2">
            <div class="form-group">
                <label>Berapa kali IMTAS</label>
                <input min=1 type="number" class="form-control" id="_jmlimtas" name="_jmlimtas" value="<?php echo $resultImtas['jmlx_imtas']; ?>">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label>Status Selesai</label>
                <label class="form-control" id="_stsimtas2" name="_stsimtas2"> <?php echo $resultImtas['stsimtas']; ?> </label>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" class="form-control" id="_keterangan" name="_keterangan" value="<?php echo $resultImtas['keterangan']; ?>">
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