      <?php $lkel=mysqli_query($con,"SELECT * FROM kelas order by kelas asc ");while($hlkel=mysqli_fetch_array($lkel)){ 
        $jma=mysqli_query($con,"SELECT * FROM gurumapel where c_guru='$_SESSION[c_guru]' and c_kelas='$hlkel[c_kelas]' ");
        $jmapel=mysqli_num_rows($jma); if($jmapel>0) { ?>
            <?php while($hmapel=mysqli_fetch_array($jma)){ $mapel=mysqli_fetch_array(mysqli_query($con,"SELECT mapel from mapel where c_mapel='$hmapel[c_mapel]' ")); ?>
<?php /*jumlah tipe nilai*/ $jtn=mysqli_query($con,"SELECT * FROM tipenilai");$hjtn=mysqli_num_rows($jtn); $js=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$hlkel[c_kelas]' ");$hjs=mysqli_num_rows($js);
/*rumusnya*/$harus=$hjtn*$hjs; echo ''; if($hjs==0){$persenan=0;}else{$persenan=100/$harus;}
/*nilai yg ada di database*/ $jn=mysqli_query($con,"SELECT * FROM nilai where c_ta='$c_ta' and c_mapel='$hmapel[c_mapel]' and c_kelas='$hlkel[c_kelas]' and nilai>0 "); $hjn=mysqli_num_rows($jn);
$presentase=number_format($hjn*$persenan);
?>
              <div class="col-md-4 col-sm-4 col-xs-12">
                <a href="<?php echo $basegu.'inputnilai/'.$hlkel['c_kelas'].'/'.$hmapel['c_mapel'].'/_'; ?>">
                <?php
                if($presentase>=0 and $presentase<=40){$bg='bg-red';}
                else if($presentase>=41 and $presentase<=75){$bg='bg-yellow';}
                else if($presentase>=76 and $presentase<=99){$bg='bg-blue';}
                else if($presentase==100){$bg='bg-green';}
                ?>
                <div class="info-box <?php echo $bg; ?>">
                  <span class="info-box-icon" style="font-size: 20px;"><?php echo $presentase; ?>%</span>

                  <div class="info-box-content">
                    <span class="info-box-text"><?php echo $mapel['mapel']; ?></span>
                    <span class="info-box-number"><?php echo $hlkel['kelas']; ?></span>

                    <div class="progress">
                      <div class="progress-bar" style="width: <?php echo $presentase; ?>%"></div>
                    </div>
                        <span class="progress-description">
                          <?php echo $hjn; ?> Nilai Dari <?php echo $harus ?> Nilai
                        </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
                </a>
              </div>
            <?php } ?>
      <?php } } ?>