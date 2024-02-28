<script language="javascript" type="text/javascript">
function OpenCarisiswaModal(){
    $('#datamassiswa').modal("show");
}

function OpenDeleteModal(id, c_siswa){
        _id = id;

        $('#_idhapus').val(id);
        $('#_csiswadel').val(c_siswa);
        
        $('#hapusimtas').modal("show");
    }
</script>

<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> IMTAS</h3><span style="float:right;"><a class="btn btn-primary" href="<?php echo $basegu; ?>addimtas"><i class="glyphicon glyphicon-plus"></i> TAMBAH IMTAS</a></span>
    </div>

    <div class="box-body table-responsive">
            <table id="example1" class="table table-bordered table-hover">
            <thead>
            <tr>
                <th width="5%">NO</th>
                <th>Tanggal</th>
                <th>Siswa</th>
                <th>Kelas</th>
                <th>Jumlah IMTAS</th>
                <th>Keterangan</th>
                <th style="text-align:center;">OPSI</th>
            </tr>
            </thead>
            <tbody>
            <?php $smk=mysqli_query($con,"SELECT a.*, b.nama, c.kelas FROM imtas a inner join siswa b on a.c_siswa = b.c_siswa inner join kelas c on a.c_kelas = c.c_kelas order by a.id desc ");
            $vr=1;
            while($akh=mysqli_fetch_array($smk)){?>
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo tgl($akh['tanggal']); ?></td>
                  <td><?php echo $akh['nama']; ?></td>
                  <td><?php echo $akh['kelas']; ?></td>
                  <td><?php echo $akh['jmlx_imtas']; ?></td>
                  <td><?php echo $akh['keterangan']; ?></td>
                  <td align="center">
                    <a class="btn btn-circle btn-primary btn-sm" href="<?php echo $basegu; ?>editimtas/<?php echo $akh['id']; ?>/<?php echo md5($akh['id']);?>/imtas" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                    <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>', '<?php echo $akh['c_siswa']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                  </td>
                </tr>
            <?php $vr++;
            }?>
            </tbody>

        </table>
    </div>

</div>


<div id="hapusimtas" class="modal" data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
    <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('hapusimtas').'/access' ?>" method="post">
        <div class="modal-content">
            <input type="hidden" id="_idhapus" name="_idhapus" class="form-control">
            <input type="hidden" id="_csiswadel" name="_csiswadel" class="form-control">
            <div class="modal-header bg-green">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Data IMTAS </h4>
            </div>
            <div class="modal-body">
            <p>Yakin ingin Menghapus Data IMTAS?</p>
            </div>
            <div class="modal-footer">
            <button class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</button> 
            <button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</button>
            </div>
        </div>
        </form>
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