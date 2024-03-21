<?php
  $strSQL = "
    select concat(tblall.juz_atau_keterangan_ayat,' ', nmbagian) as nmjuzall, tblall.* 
    from 
    (
      select tbl1.* from
        (
          select tj.id, tbl1.juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, sh.c_siswa, sh.nmsiswa, tj.seqjuz, sh.tglnaikjuz, DATEDIFF(CURRENT_DATE(), sh.tglnaikjuz) jmlhari, sh.catatan from tbl_juz tj
          left join sisjuz_h sh on tj.id = sh.idjuz 
          left join (select distinct tj2.id, tj2.juz_atau_keterangan_ayat from tbl_juz tj2 ) as tbl1 
          on tj.parentid  = tbl1.id
          where tj.parentid != 0
          and coalesce(sh.flag, 'N') = 'N'
          group by tj.id, tj.juz_atau_keterangan_ayat, tbl1.juz_atau_keterangan_ayat, tj.seqjuz, sh.nmsiswa, sh.c_siswa
          order by tj.seqjuz
        ) as tbl1
      union 
      select tbl2.* from
      (
        select tj.id, '' juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian,sh.c_siswa, sh.nmsiswa, tj.seqjuz, sh.tglnaikjuz, DATEDIFF(CURRENT_DATE(), sh.tglnaikjuz) jmlhari, sh.catatan  from tbl_juz tj
        left join sisjuz_h sh on tj.id = sh.idjuz  
        where tj.parentid = 0 and tj.seqjuz  > 14
        and coalesce(sh.flag, 'N') = 'N'
        group by tj.id, tj.juz_atau_keterangan_ayat, tj.seqjuz, sh.nmsiswa, sh.c_siswa
        order by tj.seqjuz
      ) as tbl2
    ) as tblall 
    where coalesce(nmsiswa, '') != '' ";

  $summaryjuz  = mysqli_query($con, $strSQL);

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

  $strSQLmjuz = mysqli_query($con,"
    select concat(tblall.juz_atau_keterangan_ayat,' ', nmbagian) as nmjuzall, tblall.* from 
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
    ) as tblall where id = 0
    order by seqjuz  limit 1 "
  );

  $getjuz = mysqli_fetch_array($strSQLmjuz);

?>

<form action="" method="POST">
   <input type="hidden" name="_juzid" id="_juzid" class="form-control">
   
  <?php
     if(isset($_REQUEST['submit_btn'])) {

        $_juzid = $_POST["_juzid"];

        echo $_POST['_juzid'];

        if($_juzid != null && $_juzid != "")
        {
           $strSQL = $strSQL. " and id = '$_juzid' ";
        }
        $strSQL = $strSQL. " order by nmsiswa";
        $summaryjuz  = mysqli_query($con, $strSQL);

        $strSQLmjuz = mysqli_query($con,"
          select concat('Juz ', tblall.juz_atau_keterangan_ayat,' Surah ', nmbagian) as nmjuzall, tblall.* from 
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
          where id = '$_juzid' limit 1 "
        );

        $getjuz = mysqli_fetch_array($strSQLmjuz);
     }
  ?>

  <div class="box box-info">
      <div class="box-header with-border">
          <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> SUMMARY JUZ</h3>
      </div>
     <div class="box-body table-responsive">
    
     <div class="row">
        <div class="col-md-8">
              <div class="form-group">
                 <label>Filter Juz</label>
                 <div class="input-group">
                    <select class="form-control form-select input-group-sm" style="width:83%;" id="_setmanualjuzselect" data-id="<?= $getjuz['id']; ?>" name="_setmanualjuzselect" onchange="SelectjuzChanged(this.value)">
                      <option value=""> -- SEMUA -- </option>

                      <?php if (isset($_POST['_juzid'])): ?>

                        <?php foreach ($sqlJuz as $getjuz) : ?>
                        
                          <option value="<?= $getjuz['id']; ?>" <?=($getjuz['id'] == $_POST['_juzid'] )?'selected="selected"':''?> > <?= $getjuz['nmjuzall']; ?> </option>
                        
                        <?php endforeach; ?>

                     z<?php else: ?>

                        <?php foreach ($sqlJuz as $getjuz) : ?>
                          
                          <option value="<?= $getjuz['id']; ?>" > <?= $getjuz['nmjuzall']; ?> </option>
                          
                        <?php endforeach; ?>

                      <?php endif ?>

                    <!-- <?php
                      if($getjuz['juz_atau_keterangan_ayat'] != null) { 
                    ?>
                       <option value="<?= $getjuz['id']; ?>" <?=($getjuz['id'] == $_POST['_juzid'] )?'selected="selected"':''?> > <?= $getjuz['nmjuzall']; ?> </option>

                    <?php 

                      } else {

                    ?> 

                      <option value=""> -- SEMUA -- </option>    

                    <?php 
                      } 
                    ?>

                    <?php 
                      while($resJuz = mysqli_fetch_array($sqlJuz)) {
                    ?>
                      <option value="<?= $resJuz['id']; ?>" <?=($getjuz['id'] == $_POST['_juzid'] )?'selected="selected"':''?> > <?= $resJuz['nmjuzall']; ?></option>

                    <?php 
                      } 
                    ?> -->

                    </select>
                    <input type="submit" value="Search" style="margin-left: 10px;" name="submit_btn" class="btn btn-primary btn-circle">
                 </div>
              </div>
        </div>
     </div>

        <table id="example1" class="table table-bordered table-hover">
           <thead>
              <tr>
                 <th width="5%">NO</th>
                 <th style="text-align: center;">Nama</th>
                 <th style="text-align: center;">Juz</th>
                 <th style="text-align: center;">Bagian</th>
                 <th style="text-align: center;">Tgl Naik</th>
                 <th style="text-align: center;"> Jml Hari </th>
              </tr>
           </thead>
           <tbody>

                 <?php
                 $vr=1;
                 while($akh=mysqli_fetch_array($summaryjuz)){?>
                 <tr>
                    <td style="text-align: center;"><?= $vr; ?></td>
                    <td style="text-align: center;"><a style="cursor:pointer;" onclick="OpenCatatan('<?= $akh['catatan'] ?>', '<?= $akh['nmsiswa']; ?>', '<?= $akh['c_siswa']; ?>')"><?= $akh['nmsiswa']; ?></a></td>
                    <td style="text-align: center;"><?= $akh['juz_atau_keterangan_ayat']; ?></td>
                    <td style="text-align: center;"><?= $akh['nmbagian']; ?></td>
                    <td style="text-align: center;"><?= tgl($akh['tglnaikjuz']); ?></td>
                    <td style="text-align: center;"><?= $akh['jmlhari']; ?></td>
                  </tr>
                 <?php $vr++;
                          }?>
           </tbody>

        </table>
     </div>
  </div>

</form>

<div id="historicatatan" class="modal"  data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Histori Juz - Catatan</h4>
            </div>

            <div class="modal-body" style="overflow:auto; height:60vh;">  

               <div class="row">
                  <div class="col-sm-5">
                     <div class="form-group">
                           <label id="_catatantitle" name="_catatantitle"></label><br/>
                           <label id="_catatanjuz" name="_catatanjuz"></label>
                     </div>
                  </div>  
                  <div class="col-sm-7">
                  <table id="tbljuzdet" class="table table-bordered table-hover">
                     <thead>
                        <tr>
                           <th style="text-align: center;">Juz</th>
                           <th style="text-align: center;">Bagian</th>
                           <th style="text-align: center;">Tgl Naik</th>
                        </tr>
                     </thead>
                     <tbody>
                     </tbody>
                  </table>
                  </div>
                </div>
            
            </div>
            <div class="modal-footer">
                <a class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</a>
            </div>

        </div>
    </div>
</div>

<script language="javascript" type="text/javascript">
  $(document).ready(function() {
          
  });

  let hrIni = new Date("19 March 2024");
  let bln = hrIni.getMonth()
  console.log(bln)

  function OpenCatatan(catatan, nmsiswa, kdsiswa) {
           $('#_catatantitle').text("Catatan" + " - " + nmsiswa);
         
          //var teks = document.write(catatan);
        //$('#_catatanjilid').text(teks);
        document.getElementById("_catatanjuz").innerHTML = catatan;

        $('#tbljuzdet').dataTable( {
          order: [[0, 'desc'], [2, 'asc']],
          destroy: true,
          ajax: {
              url: "view/tahfidz/apiservicesisjuz_d.php?c_siswa=" + kdsiswa,
              dataSrc: ""
          },

          columns: [
            { "data": "juz_atau_keterangan_ayat" },
            { "data": "nmbagian" },
            { "data": "tglnaikjuz" }
          ]
        
        });


        $('#historicatatan').modal("show");
      }

  function SelectjuzChanged(juzval) {

     $('#_juzid').val(juzval);

  }

</script>

