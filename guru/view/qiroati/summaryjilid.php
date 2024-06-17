<?php
$strSQL = "select concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
(
select tbl1.* from
(select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, sh.c_siswa, sh.nmsiswa, tj.seqjilid, sh.tglnaikjilid, DATEDIFF(CURRENT_DATE(), sh.tglnaikjilid) jmlhari, sh.catatan from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid 
left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
on tj.parentid  = tbl1.id
where tj.parentid != 0
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid, sh.nmsiswa, sh.c_siswa
order by tj.seqjilid) as tbl1
union 
select tbl2.* from
(
select tj.id, '' nmjilid, tj.nmjilid as nmbagian,sh.c_siswa, sh.nmsiswa, tj.seqjilid, sh.tglnaikjilid, DATEDIFF(CURRENT_DATE(), sh.tglnaikjilid) jmlhari, sh.catatan  from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid  
where tj.parentid = 0 and tj.seqjilid  > 14
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tj.seqjilid, sh.nmsiswa, sh.c_siswa
order by tj.seqjilid) as tbl2) as tblall where coalesce(nmsiswa, '') != '' ";
$summaryjilid  = mysqli_query($con, $strSQL);

$sqlJilid=mysqli_query($con,"select concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
(
select tbl1.* from
(select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid 
left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
on tj.parentid  = tbl1.id
where tj.parentid != 0
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl1
union 
select tbl2.* from
(
select tj.id, '' nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid  from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid  
where tj.parentid = 0 and tj.seqjilid  > 14
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl2) as tblall
order by seqjilid"); 

$strSQLmjilid = mysqli_query($con,"select concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
(
select tbl1.* from
(select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid 
left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
on tj.parentid  = tbl1.id
where tj.parentid != 0
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl1
union 
select tbl2.* from
(
select tj.id, '' nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid  from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid  
where tj.parentid = 0 and tj.seqjilid  > 14
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl2) as tblall where id = 0
order by seqjilid  limit 1 ");
$getjilid=mysqli_fetch_array($strSQLmjilid);

?>
<form action="" method="POST">
   <input type="hidden" name="_jilidid" id="_jilidid" class="form-control">

   
   
<?php
   if(isset($_REQUEST['submit_btn']))
   {
      $_jilidid = $_POST["_jilidid"];
      if($_jilidid != null && $_jilidid != "")
      {
         $strSQL = $strSQL. " and id = '$_jilidid' ";
      }
      $strSQL = $strSQL. " order by nmsiswa";
      $summaryjilid  = mysqli_query($con, $strSQL);

      $strSQLmjilid = mysqli_query($con,"select concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
      (
      select tbl1.* from
      (select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid from tbl_jilid tj
      left join sisjilid_h sh on tj.id = sh.idjilid 
      left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
      on tj.parentid  = tbl1.id
      where tj.parentid != 0
      and coalesce(sh.flag, 'N') = 'N'
      group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid
      order by tj.seqjilid) as tbl1
      union 
      select tbl2.* from
      (
      select tj.id, '' nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid  from tbl_jilid tj
      left join sisjilid_h sh on tj.id = sh.idjilid  
      where tj.parentid = 0 and tj.seqjilid  > 14
      and coalesce(sh.flag, 'N') = 'N'
      group by tj.id, tj.nmjilid, tj.seqjilid
      order by tj.seqjilid) as tbl2) as tblall where id = '$_jilidid' limit 1 ");
      $getjilid=mysqli_fetch_array($strSQLmjilid);
   }
?>

<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-new-window"></i> SUMMARY JILID</h3>
    </div>
   <div class="box-body table-responsive">
  
   <div class="row">
      <div class="col-md-8">
            <div class="form-group">
               <label>Filter Jilid</label>
               <div class="input-group">
                  <select class="form-control form-select input-group-sm" style="width:70%;" id="_setmanualjilidselect" name="_setmanualjilidselect" onchange="SelectilidChanged()">
                  
                 <?php
                  if($getjilid['nmjilid'] != null)
                  { ?>
                     <option value="<?php echo $getjilid['id']; ?>"><?php echo $getjilid['nmjilidall']; ?></option>
                  <?php } else {?> <option value="">--SEMUA--</option>    <?php } ?>
                  <!-- <option value="">--SEMUA--</option> -->
                        <?php 
                        while($resJilid=mysqli_fetch_array($sqlJilid))
                        {?>
                           <option value="<?php  echo $resJilid['id']; ?>"> <?php echo $resJilid['nmjilidall']; ?></option>
                        <?php } ?>
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
               <th>Nama</th>
               <th>Jilid</th>
               <th>Tgl Naik</th>
               <th> Jml Hari </th>
            </tr>
         </thead>
         <tbody>

               <?php
               $vr=1;
               while($akh=mysqli_fetch_array($summaryjilid)){?>
               <tr>
                  <td><?php echo $vr; ?></td>
                  <td><a style="cursor:pointer;" onclick="OpenCatatan('<?php echo $akh['catatan'] ?>', '<?php echo $akh['nmsiswa']; ?>', '<?php echo $akh['c_siswa']; ?>')"><?php echo $akh['nmsiswa']; ?></a></td>
                  <td><?php echo $akh['nmjilidall']; ?></td>
                  <td><?php echo tgl($akh['tglnaikjilid']); ?></td>
                  <td><?php echo $akh['jmlhari']; ?></td>
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
                <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-calendar"></i> Histori Jilid - Catatan</h4>
            </div>

            <div class="modal-body" style="overflow:auto; height:60vh;">  

               <div class="row">
                  <div class="col-sm-5">
                     <div class="form-group">
                           <label id="_catatantitle" name="_catatantitle"></label><br/>
                           <label id="_catatanjilid" name="_catatanjilid"></label>
                     </div>
                  </div>  
                  <div class="col-sm-7">
                  <table id="tbljiliddet" class="table table-bordered table-hover">
                     <thead>
                        <tr>
                           <th>Jilid</th>
                           <th>Tgl Naik</th>
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
  $("#list_qiroati").click();
   $("#summary_jilid").css({
      "background-color" : "#ccc",
      "color" : "black"
   });
});

function OpenCatatan(catatan, nmsiswa, kdsiswa) {
         $('#_catatantitle').text("Catatan" + " - " + nmsiswa);
       
        //var teks = document.write(catatan);
      //$('#_catatanjilid').text(teks);
      document.getElementById("_catatanjilid").innerHTML = catatan;

      $('#tbljiliddet').dataTable( {
         destroy: true,
            ajax: {
                url: "view/qiroati/apiservicesisjilid_d.php?c_siswa=" + kdsiswa,
                dataSrc: ""
            },
            columns: [
                    { "data": "nmjilidall" },
                    { "data": "tglnaikjilid" }
              
                ]
        } );

       
        $('#historicatatan').modal("show");
    }

function SelectilidChanged(jilidval) {
   $('#_jilidid').val($('#_setmanualjilidselect').val());
}

</script>

