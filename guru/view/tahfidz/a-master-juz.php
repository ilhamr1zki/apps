<?php 

    $smk = mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); 
    $getDatasurah = mysqli_query($con, 
        "SELECT * FROM kumpulan_surah ORDER BY id"
    );

?>

<script language="javascript" type="text/javascript">
    var _id = 0;
    function OpenEdit(id, nm, seq, parentval, parennm) {
        _id = id;
        $('#_idedit').val(_id);
        $('#_nmjilidedit').val(nm);
        $('#_seqjilidedit').val(seq);

        //alert(parennm);

        $('#editmjuz').modal("show");
    }

    function OpenEditSementara() {
        $('#editmjuz').modal("show");
    }

    function OpenAddModal(){
        $('#_nmjilidadd').val('');
        $('#_seqjilidadd').val(0);

        $('#addmjuz').modal("show");
        document.getElementById("juz").focus();
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

<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag@2.0.1/dist/css/multi-select-tag.css"> -->

<style type="text/css">
    
    .formAddJuz,
    .formAddNamaSurah {
      margin:10px;
    }

    .juz {
      /*padding:5px;*/
      /*width:250px;*/
      border: #cdcdcd solid 1px;
      box-shadow: inset 1px 1px 3px #f6f6f6;
      -moz-box-shadow: inset 1px 1px 3px #f6f6f6;
      -webkit-box-shadow: inset 1px 1px 3px #f6f6f6;
    }

    .juz:focus {
      outline:none;
      border-color: #3da6ff;
      box-shadow: 0 0 0 transparent;
      -moz-box-shadow: 0 0 0 transparent;
      -webkit-box-shadow: 0 0 0 transparent;
      color: #333;
    }

    #errmsg {
      background : #ff5757;
      color :#fff;
      padding :4px;
      display :none;
      width : 250px;
    }

    select .tes #addNamaSurah {
        width: 200%;
    }

</style>

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
                <th>Isi Surah</th>
                <th style="text-align:center;">OPSI</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 1 </td>
                    <td> 30 </td>
                    <td> 78 - An-Naba </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Awal  </td>
                    <td>  </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Akhir  </td>
                    <td>  </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td> 2 </td>
                    <td> 29 </td>
                    <td> 78 - Al-Mulk </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Awal  </td>
                    <td>  </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> Bagian Akhir  </td>
                    <td>  </td>
                    <td align="center">
                        <!-- <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEdit('<?php echo $akh['id'] ?>', '<?php echo $akh['nmjilid'] ?>', '<?php echo $akh['seqjilid'] ?>', '<?php echo $akh['parentid'] ?>', '')" data-toggle="modal"> <i class="glyphicon glyphicon-pencil"></i> Edit</a> -->
                        <a class="btn btn-circle btn-primary btn-sm" onclick="OpenEditSementara()"> Edit </a>
                        <a class="btn btn-circle btn-danger btn-sm"  onclick="OpenDeleteModal('<?php echo $akh['id']; ?>')" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>Delete</a>
                    </td>
                </tr>

            </tbody>

        </table>
    </div>

</div>


<div id="editmjuz" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Edit Data Juz</h4>
            </div>
            
            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid asc "); ?>

            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('editmjuz'); ?>/access" method="post">
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
                            <select class="form-control" name="edit_kumpulan_surah">
                               
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

<div id="addmjuz" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Tambah Data Juz 123</h4>
            </div>

            <?php $smk2=mysqli_query($con,"SELECT * FROM tbl_jilid where parentid = 0 order by seqjilid, id asc "); ?>
            
            <form action="<?php echo $basegu; ?>a-guru/<?php echo md5('addmjuz'); ?>/access" method="post">
            <div class="modal-body">  
            <div class="row">
                    <div class="col-sm-2">
                        <div class="form-group formAddJuz">
                            <label>Juz</label>
                            <input type="text" class="form-control juz" id="juz">
                            <br>
                            <div id="errmsg"></div>
                        </div>
                    </div>  
                    <div class="col-sm-4">
                      <div class="form-group formAddNamaSurah">
                        <label>ISI SURAH </label>
                        <br>
                        <select class="form-control mb-3 js-example-basic-multiple tes" multiple="multiple" id="addNamaSurah" name="addNamaSurah[]">
                            <?php foreach( $getDatasurah as $data_surah ) : ?>
                                <option value="<?= $data_surah['nomer_surah']; ?>"> QS (<?= $data_surah['nomer_surah']; ?>) <?= $data_surah['nama_surah']; ?> </option>
                            <?php endforeach; ?>
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

<!-- Modal Jika Terdapat Error -->

<!-- The Modal -->
<div id="myModal" class="modal-error">

  <!-- Modal content -->
  <div class="modal-content-error" id="content-err" style="background-color: red;">
    <span class="close-popup-err" style="margin-top: -20px;margin-right: -10px;">&times;</span>
    <p style="text-align: center;" id="texterror"> </p>
  </div>

</div>
<!-- Akhir Modal -->

<!-- <script src="../../../jquery.js"></script> -->
<script language="javascript" type="text/javascript">
    
    function SelesaiChanged(selesaival) {
        alert( $('#_jlparselect').val());
    }


    $(document).ready(function() {

        const fieldJuz  = $(".juz");

        let modal       = document.getElementById("myModal");
        let spans       = document.getElementsByClassName("close-popup-err")[0];
        let txtErr      = $("#texterror");
        let mdlErr      = $("#content-err");

        $(".juz").keypress(function (e) {

            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                // $("#errmsg").html("Isi Juz hanya boleh di isi oleh angka").stop().show().fadeOut(4000, function() {
                //     $(".juz").val("");
                // });
                $(".juz").attr('disabled','disabled');
                fieldJuz.css("background-color", "white");
                modal.style.display = "block";
                mdlErr.css("background-color", "aquamarine");
                mdlErr.css("color", "#000");
                mdlErr.css("width", "350px");
                mdlErr.css("font-family", "calibri");
                mdlErr.css("font-size", "19px");
                txtErr.html("Isi Juz Hanya Boleh Di Isi dengan Angka")
                txtErr.css("margin-top", "25px");

                spans.onclick = function() {
                    modal.style.display = "none";
                    $("#juz").removeAttr('disabled'); 
                    document.getElementById("juz").focus();
                    $("#juz").val("")
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                  if (event.target == modal) {
                    modal.style.display = "none";
                    $("#juz").removeAttr('disabled'); 
                    document.getElementById("juz").focus();
                    $("#juz").val("")
                  }
                }

            }

            $('.juz').on("input", function() {
                let dataInputJuz = this.value;
                if (dataInputJuz > 30 ) {
                 
                    $(".juz").attr('disabled','disabled');
                    fieldJuz.css("background-color", "white");
                    modal.style.display = "block";
                    mdlErr.css("background-color", "aquamarine");
                    mdlErr.css("color", "#000");
                    mdlErr.css("width", "350px");
                    mdlErr.css("font-family", "calibri");
                    mdlErr.css("font-size", "19px");
                    txtErr.css("margin-top", "25px");
                    fieldJuz.css("background-color", "white");
                    modal.style.display = "block";
                    txtErr.html("Juz hanya ada 30")

                    // When the user clicks on <span> (x), close the modal
                    spans.onclick = function() {
                        modal.style.display = "none";
                        $("#juz").removeAttr('disabled'); 
                        document.getElementById("juz").focus();
                        $("#juz").val("")
                    }

                    // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function(event) {
                      if (event.target == modal) {
                        modal.style.display = "none";
                        $("#juz").removeAttr('disabled'); 
                        document.getElementById("juz").focus();
                        $("#juz").val("")
                      }
                    }

                    // $("#errmsg").html("Juz Hanya ada 30").stop().show().fadeOut(4000, function() {
                    //     $(".juz").val("");
                    // });
                }
            });

        });

        $('.js-example-basic-multiple').select2();

    })

</script>