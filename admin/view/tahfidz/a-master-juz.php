<?php

    $smk=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); 

    $getDatasurah = mysqli_query($con, 
        "SELECT * FROM kumpulan_surah ORDER BY id"
    );

    $dataViewMasterJuz30 = mysqli_query($con, "
        SELECT 
        kumpulan_surah.nama_surah, kumpulan_surah.nomer_surah, tbl_juz.juz
        FROM tbl_juz
        LEFT JOIN 
        kumpulan_surah
        ON tbl_juz.isi_surah = kumpulan_surah.nomer_surah
        WHERE juz = 30
        ORDER BY nomer_surah ASC
    ");

    $dataViewMasterJuz29 = mysqli_query($con, "
        SELECT 
        kumpulan_surah.nama_surah, kumpulan_surah.nomer_surah, tbl_juz.juz
        FROM tbl_juz
        LEFT JOIN 
        kumpulan_surah
        ON tbl_juz.isi_surah = kumpulan_surah.nomer_surah
        WHERE juz = 29
        ORDER BY nomer_surah ASC
    ");

    $dataJuz = mysqli_query($con, "SELECT DISTINCT juz FROM tbl_juz;");

    $no = 1;

    $dataSurah30      = [];
    $dataNomerSurah30 = [];

    foreach ($dataViewMasterJuz30 as $masterJuz30) {
        $dataSurah30[]       = $masterJuz30['nama_surah'];
        $dataNomerSurah30[]  = $masterJuz30['nomer_surah'];
        // echo "No " . $no++ . " " . $masterJuz['nama_surah'] . "<br>";
    }

    foreach ($dataViewMasterJuz29 as $masterJuz) {
        $dataSurah[]       = $masterJuz['nama_surah'];
        $dataNomerSurah[]  = $masterJuz['nomer_surah'];
        // echo "No " . $no++ . " " . $masterJuz['nama_surah'] . "<br>";
    }

?>

    <script language="javascript" type="text/javascript">

        var _id = 0;
        function OpenEdit(id, nm, seq, parentval, parennm) {
            _id = id;
            $('#_idedit').val(_id);
            $('#_nmjuzedit').val(nm);
            $('#_seqjuzedit').val(seq);

            //alert(parennm);

            $('#editmjuz').modal("show");
        }

        function OpenAddModal() {
            $('#_nmjuzadd').val('');
            $('#_seqjuzadd').val(0);

            $('#addmjuz').modal("show");
        }

        function OpenDeleteModal(id){
            _id = id;

            $('#_idhapus').val(id);
            $('#hapusmjuz').modal("show");
        }

        function GetId() {
            return _id;
        }

    </script>

<!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="<?php echo $base; ?>imgstatis/favicon.jpg">

  <!-- Jquery -->
  <script type="text/javascript" src="<?php echo $base; ?>jquery.js"></script>

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <!-- Theme -->
  <link href="<?php echo $base; ?>theme/js/summernote.min.css" rel="stylesheet"/>
  
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/bootstrap/css/bootstrap.min.css">
  
  <!-- Font Awesome -->
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/datatables/dataTables.bootstrap.css">
  
  <!-- jvectormap -->

  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/AdminLTE.min.css">    

<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-12">

    <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='tambah'){?>
          <div style="display: none;" class="alert alert-warning alert-dismissable">Data Jilid Berhasil Disimpan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Jilid Berhasil Diedit
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Jilid Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

    </div>
</div>

<?php $_SESSION['pesan'] = '';?>
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-calendar"></i> Data Juz </h3><span style="float:right;"><a class="btn btn-primary" onclick="OpenAddModal()"><i class="glyphicon glyphicon-plus"></i> Tambah Juz </a> </span>
    </div>

    <div class="box-body table-responsive">
            <table id="example111" class="table table-bordered table-hover">
            <thead>
            <tr>
                <th width="5%">NO</th>
                <th> NAMA JUZ </th>
                <th> URUTAN </th>
                <th style="text-align:center;">OPSI</th>
            </tr>
            </thead>
            <tbody>
            <?php 
            $vr=1;
            while($akh=mysqli_fetch_array($smk)){?>
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo $akh['nmjilid']; ?>
                
                
                </td>
                  <td><?php echo $akh['seqjilid']; ?></td>
                  <td align="center">
                    <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit </a>
                    <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                  </td>
                </tr>

                <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = ".$akh['id']." order by seqjilid asc ");
                while($akh2=mysqli_fetch_array($smk2)){?>
                        <tr>
                            <td></td>
                            <td style="background-color:#F0F8FD">
                            <?php echo $akh2['nmjilid']; ?>
                            </td>
                            <td style="background-color:#F0F8FD">
                            <?php echo $akh2['seqjilid']; ?>
                            </td>
                            <td align="center" style="background-color:#F0F8FD">
                            <?php $smkpar=mysqli_query($con,"SELECT * FROM tbl_jilid where id = ".$akh2['parentid']." limit 1 ");$parval=mysqli_fetch_array($smkpar); ?>
                                <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh2['id'] ?>', '<?php echo $akh2['nmjilid'] ?>', '<?php echo $akh2['seqjilid'] ?>','<?php echo $akh2['parentid'] ?>','<?php echo $parval['nmjilid'] ?>')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                                <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh2['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                            </td>
                        </tr>
                <?php 
                }?>

            <?php $vr++;
            }?>
            </tbody>

        </table>
    </div>

</div>


<div id="editmjuz" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content"> 
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Edit Data Juz </h4>
            </div>
            
            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid asc "); ?>

            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('editmjuz'); ?>/access" method="post">
            <div class="modal-body">  
            <div class="row">
                    <input type="hidden" id="_idedit" name="_idedit" class="form-control">

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label> Nama Juz </label>
                            <input type="text" id="_nmjuzedit" name="_nmjuzedit" class="form-control">
                        </div>
                    </div>  
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label>Urutan</label>
                            <input type="number" min=0 id="_seqjuzedit" name="_seqjuzedit" class="form-control">
                        </div>
                    </div>  
                    <!-- <div class="col-sm-4">
                      <div class="form-group">
                        <label>PARENT JILID</label>
                        <select class="form-control" id="_jlparselectedit" name="_jlparselectedit" onchange="SelesaiChanged()">
                        <?php 
                        //while($jlpar=mysqli_fetch_array($smk2))
                        //{?>
                            <option value="<?php // echo $jlpar['id']; ?>"> <?php// echo $jlpar['nmjilid']; ?></option>
                        <?php //} ?>
                        </select>
                      </div>
                    </div> -->
                </div>
            
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan</button> 
                <a class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</a>
            </div>
            </form>
        </div>
    </div>
</div>

<div id="addmjuz" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Tambah Data Juz</h4>
            </div>

            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); ?>
            
            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('addmjuz'); ?>/access" method="post">
            <div class="modal-body">  
            <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Juz</label>
                            <input type="text" id="_nmjuzadd" name="_nmjuzadd" class="form-control">
                        </div>
                    </div>  
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label>Urutan</label>
                            <input type="number" min=0 id="_seqjuzadd" name="_seqjuzadd" class="form-control">
                        </div>
                    </div>  
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>PARENT JUZ</label>
                        <select class="form-control" id="_jlparselect" name="_jlparselect">
                        <option value="0">--Pilih--</option>
                        <?php 
                        while($jlpar=mysqli_fetch_array($smk2))
                        {?>
                            <option value="<?php  echo $jlpar['id']; ?>"> <?php echo $jlpar['nmjilid']; ?></option>
                        <?php } ?>
                        </select>
                      </div>
                    </div>
                </div>
            
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan</button> 
                <a class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</a>
            </div>
            </form>
        </div>
    </div>
</div>

<div id="hapusmjuz" class="modal" data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
    <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('hapusmjuz').'/access' ?>" method="post">
        <div class="modal-content">
            <input type="hidden" id="_idhapus" name="_idhapus" class="form-control">
            <div class="modal-header bg-green">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Data Juz </h4>
            </div>
            <div class="modal-body">
            <p>Jika Anda Menghapus Data Ini, Akan Berpengaruh Pada</p>
            <b>1. Data Histori siswa naik juz<br>2. Data kenaikan juz</b>
            </div>
            <div class="modal-footer">
            <button class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</button> 
            <button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</button>
            </div>
        </div>
        </form>
    </div>
</div>

<script language="javascript" type="text/javascript">
function SelesaiChanged(selesaival) {
    alert( $('#_jlparselect').val());
}
</script>