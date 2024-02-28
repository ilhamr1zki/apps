<?php $dimapel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM mapel where c_mapel='$_GET[q]' ")); ?>
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"> <i class="glyphicon glyphicon-file"></i> Nilai Mata Pelajaran <?php echo $dimapel['mapel']; ?><br> <i class="glyphicon glyphicon-stats"></i> KKM: <?php echo $dimapel['sl']; ?></h3>
              <span style="float:right;"><a target="_blank" href="<?php echo $basewa; ?>printnilaipelajaran?print=nilaipelajaran&kelas=<?php echo $kel['c_kelas']; ?>&ta=<?php echo $c_ta; ?>&mapel=<?php echo $_GET['q']; ?>" class="btn btn-primary"><i class="glyphicon glyphicon-print"></i> Print</a></span>
            </div>
            <div class="box-body">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="5%">NO</th>
                  <th>NISN</th>
                  <th>NAMA</th>
                  <?php $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");while($hlihtip=mysqli_fetch_array($lihtip)){echo '<th width="10%">'.$hlihtip['tipe'].'</th>';} ?>
                  <th width="10%">TOTAL</th>
                </tr>
                </thead>
                <tbody>
                <?php $lsis=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$kel[c_kelas]' order by nama asc "); $no=1; while($hlsis=mysqli_fetch_array($lsis)){ ?>
                  <tr>
                    <td><?php echo $no; ?></td>
                    <td><?php echo $hlsis['nisn']; ?></td>
                    <td><a href="<?php echo $basewa; ?>search/<?php echo $hlsis['nisn']; ?>"><?php echo $hlsis['nama']; ?></a></td>
                      <?php $lihtip=mysqli_query($con,"SELECT * FROM tipenilai order by p asc ");while($hlihtip=mysqli_fetch_array($lihtip)){ 
                        $nil=mysqli_fetch_array(mysqli_query($con,"SELECT nilai FROM nilai where c_ta='$c_ta' and c_tipenilai='$hlihtip[c_tipenilai]' and c_siswa='$hlsis[c_siswa]' and c_kelas='$kel[c_kelas]' and c_mapel='$_GET[q]' "));
                        if($nil['nilai'] ?? 0 <1){echo '<td><b></b></td>';}else{
                          if($nil['nilai'] < $dimapel['sl']){
                            echo '<td><b style="color:#d9534f;">'.$nil['nilai'].'</b></td>';
                          }
                          else if($nil['nilai'] == $dimapel['sl']){
                            echo '<td><b style="color:#428bca;">'.$nil['nilai'].'</b></td>';
                          }
                          else{
                            echo '<td><b>'.$nil['nilai'].'</b></td>';
                          }
                        }                      
                      }
                      $nilsemua=mysqli_fetch_array(mysqli_query($con,"SELECT sum(nilai) as nilai FROM nilai where c_ta='$c_ta' and c_siswa='$hlsis[c_siswa]' and c_kelas='$kel[c_kelas]' and c_mapel='$_GET[q]' ")); ?>
                      <td><b><?php echo $nilsemua['nilai']; ?></b></td>
                  </tr>
                <?php $no++; } ?>
                </tbody>
              </table>
            </div>
          </div>