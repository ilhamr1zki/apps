<?php 

$smk=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); ?>

<script language="javascript" type="text/javascript">
    var _id = 0;
    function OpenEdit(id, nm, seq, parentval, parennm) {
        _id = id;
        $('#_idedit').val(_id);
        $('#_nmjilidedit').val(nm);
        $('#_seqjilidedit').val(seq);

        //alert(parennm);

        $('#editmjilid').modal("show");
    }
    function OpenAddModal(){
        $('#_nmjilidadd').val('');
        $('#_seqjilidadd').val(0);

        $('#addmjilid').modal("show");
    }
    function OpenDeleteModal(id){
        _id = id;

        $('#_idhapus').val(id);
        $('#hapusmjilid').modal("show");
    }
    function GetId()
    {
        return _id;
    }
</script>

<div class="row">
    <div class="col-xs-12 col-md-12 col-lg-12">

    <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='tambah'){?>
          <div style="display: none;" class="alert alert-warning alert-dismissable">Data Juz Berhasil Disimpan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Juz Berhasil Diedit
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-info alert-dismissable">Data Juz Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>

    </div>
</div>

<?php $_SESSION['pesan'] = '';?>
<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-calendar"></i> Data Juz</h3><span style="float:right;"><a class="btn btn-primary" onclick="OpenAddModal()"><i class="glyphicon glyphicon-plus"></i> Tambah Juz</a></span>
    </div>

    <div class="box-body table-responsive">
            <table id="example111" class="table table-bordered table-hover">
            <thead>
            <tr>
                <th width="5%">NO</th>
                <th>JUZ</th>
                <th>Nama Surah</th>
                <th style="text-align:center;">OPSI</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 1 </td>
                    <td> 30 </td>
                    <td> 78 - An-Naba </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Awal  </td>
                    <td>  </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Akhir  </td>
                    <td>  </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td> 2 </td>
                    <td> 29 </td>
                    <td> 78 - Al-Mulk </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Awal  </td>
                    <td>  </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Akhir  </td>
                    <td>  </td>
                    <td align="center">
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>

            </tbody>

        </table>
    </div>

</div>


<div id="editmjilid" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Edit Data Juz</h4>
            </div>
            
            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid asc "); ?>

            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('editmjilid'); ?>/access" method="post">
            <div class="modal-body">  
            <div class="row">
                    <input type="hidden" id="_idedit" name="_idedit" class="form-control">

                    <!-- <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Jilid</label>
                            <input type="text" id="_nmjilidedit" name="_nmjilidedit" class="form-control">
                        </div>
                    </div> -->  
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label>Juz</label>
                            <input type="number" min=0 id="_seqjilidedit" name="_seqjilidedit" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label> Nama Surah </label>
                            <select class="form-control">
                                <option> Al-Fatihah </option>
                                <option> Al-Baqarah </option>
                                <option> Al-Imran </option>
                            </select>
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

<div id="addmjilid" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Tambah Data Juz</h4>
            </div>

            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); ?>
            
            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('addmjilid'); ?>/access" method="post">
            <div class="modal-body">  
            <div class="row">
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label>Juz</label>
                            <input type="number" min=0 id="_seqjilidadd" name="_seqjilidadd" class="form-control">
                        </div>
                    </div>  
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>NAMA SURAH</label>
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

<div id="hapusmjilid" class="modal" data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog">
    <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('hapusmjilid').'/access' ?>" method="post">
        <div class="modal-content">
            <input type="hidden" id="_idhapus" name="_idhapus" class="form-control">
            <div class="modal-header bg-green">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Data Jilid </h4>
            </div>
            <div class="modal-body">
            <p>Jika Anda Menghapus Data Ini, Akan Berpengaruh Pada</p>
            <b>1. Data Histori siswa naik jilid<br>2. Data kenaikan jilid</b>
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