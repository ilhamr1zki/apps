<div class="row">
  <div class="col-md-4">
    <?php require 'view/sidebar.php'; ?>
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title"> <i class="glyphicon glyphicon-file"></i> Nilai Pelajaran Siswa <?php echo $siswa['nama'] ?></h3>
      </div>
      <div class="box-body">
            <table id="example1" class="table table-bordered table-hover">
              <thead>
               <tr>
                  <th width="5%">NO</th>
                  <th>MATA PELAJARAN</th>
                  <th width="10%">KKM</th>
                   <?php $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");while($hlihtip=mysqli_fetch_array($lihtip)){echo '<th width="10%">'.$hlihtip['tipe'].'</th>';
                    }?>
                </tr>
              </thead>
              <tbody>
<?php 
  $pel=mysqli_query($con,"SELECT * FROM mapel order by mapel asc "); $no=1;
    while($hpel=mysqli_fetch_array($pel)){
    //tipe nilai
?>
               <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $hpel['mapel']; ?></td>
                <td><b><?php echo $hpel['sl']; ?></b></td>
<?php
    $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");
    while($hlihtip=mysqli_fetch_array($lihtip)){ 
      $nil=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$c_ta' and c_tipenilai='$hlihtip[c_tipenilai]' and c_siswa='$siswa[c_siswa]' and c_kelas='$kelas[c_kelas]' and c_mapel='$hpel[c_mapel]' "));
        if($nil['nilai']<1){echo '<td><b></b></td>';}else{
          if($nil['nilai'] < $hpel['sl']){
            echo '<td><b style="color:#d9534f;">'.$nil['nilai'].'</b></td>';
          }
          else if($nil['nilai'] == $hpel['sl']){
            echo '<td><b style="color:#428bca;">'.$nil['nilai'].'</b></td>';
          }
          else{
            echo '<td><b>'.$nil['nilai'].'</b></td>';
          }
        }                    
    }
?>
              </tr>
<?php } ?>
            </tbody>
          </table>
      </div>
            <!-- /.box-body -->
  </dsiv>
</div>
</div>
