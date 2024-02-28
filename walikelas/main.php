<?php date_default_timezone_set('Asia/Jakarta');$date=date('Y-m-d'); require '../php/config.php'; require '../php/function.php'; session_start(); if(empty($_SESSION['c_walikelas'])){header('location:../login');} $wali=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walikelas where c_walikelas='$_SESSION[c_walikelas]' ")); $na=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where c_guru='$wali[c_guru]' ")); $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$wali[c_kelas]' ")); $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where status='aktif' ")); $c_ta=$ata['c_ta']; //$setting=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM setting limit 1 "));*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>WALI KELAS AIIS-APPS</title>
  <link rel="icon" href="favicon.ico">
  <link rel="shortcut icon" href="<?php echo $base; ?>imgstatis/favicon.jpg">
  <script type="text/javascript" src="<?php echo $base; ?>jquery.js"></script>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
   <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/datatables/dataTables.bootstrap.css">
  <!-- jvectormap -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/AdminLTE.min.css">

  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/iCheck/square/blue.css">
  <script type="text/javascript">
      $(document).ready(function() {
        $("#cari").keyup(function(){
        $("#fbody").find("tr").hide();
        var data = this.value.split("");
        var jo = $("#fbody").find("tr");
        $.each(data, function(i, v)
        {
              jo = jo.filter("*:contains('"+v+"')");
        });
          jo.fadeIn();

        })
  });

  </script>
  <!-- Pace style -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/pace/pace.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/select2/select2.min.css">
  
  <!-- datetime -->
  
  <link href="<?php echo $base; ?>theme/datetime/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
    body{font-family:arial;}
    .judul{width: 100%; background-color: #FFF; padding: 10px;margin-bottom: 10px; }
  </style>

<link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/overridecss.css">

</head>
<body class="skin-blue hold-transition" 
oncontextmenu="return false">
<!--modal ganti foto-->

<script src="<?php echo $base; ?>php/olahangka.js"></script>
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>AKH</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Wali Kelas</b> <?php echo $kel['kelas']; ?></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
     <a href="#" class="glyphicon glyphicon-th" data-toggle="offcanvas" role="button" style="color: #fff;margin-top: 15px;margin-left: 15px;font-size: 15px;"> Menu
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="active">
            <a><i class="glyphicon glyphicon-stats"></i> <?php echo $ata['tahun']; ?> Semester <?php echo $ata['semester']; ?></a>
          </li>
        <?php /*if(empty($_GET['thisaction']) or $_GET['thisaction']!='grafik'){ ?>
          <li>
            <a href="<?php echo $basead; ?>a-control/<?php echo md5('testtoken').'/'.$t1=md5(date('H:i:s')); ?>"><i class="glyphicon glyphicon-stats"></i> Test Token</a>
          </li>
          <li>
            <a href="<?php echo $basecon; ?>grafik"><i class="glyphicon glyphicon-stats"></i> Grafik</a>
          </li>
        <?php } else{?>
          <li class="active">
            <a href="<?php echo $basecon; ?>grafik"><i class="glyphicon glyphicon-stats"></i> Grafik</a>
          </li>
        <?php }*/ ?>
          <!-- User Account: style can be found in dropdown.less -->
          <!--<li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="glyphicon glyphicon-search"></i> Cari Siswa
            </a>
            <ul class="dropdown-menu" style="border-bottom: 2px solid#aaa;">
              <li class="header text-center">Masukkan NISN Atau NAMA Siswa</li>
              <li>
              <form action="<?php echo $basewa; ?>kesearch" method="get">
                <ul class="menu">
                  <li>
                    <input autofocus="" autocomplete="off" required="" type="text" name="search" class="form-control" style="margin-left:5%;width:90%;">
                  </li>
                </ul>
              </li>
              <li class="footer text-center" style="padding:10px;"><button class="btn btn-success btn-sm btn-flat" style="width:96%;">Mulai Mencari...</button></li>
              </form>
            </ul>
          </li>-->

          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src="<?php echo $base; ?>imgstatis/avatar1.png" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $na['nama'] ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo $base; ?>imgstatis/avatar1.png" class="img-circle" alt="User Image">
                <p>
                  <?php echo $na['nama']; ?>
                  <small>Wali Kelas <?php echo $kel['kelas']; ?></small>
                  <?php echo $ata['tahun']; ?> Semester <?php echo $ata['semester']; ?>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo $basewa; ?>a-walikelas/<?php echo md5('logout'); ?>/access" class="btn btn-default btn-flat"><i class="glyphicon glyphicon-off"></i> Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          
        </ul>
      </div>
    </nav>
  </header>

  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo $base; ?>imgstatis/avatar1.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $na['nama']; ?></p>
          <i class="glyphicon glyphicon-time"></i> <?php echo tgl(date('d-m-Y')); ?>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">

      </form>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
      <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="<?php echo $basewa; ?>siswa">
            <i class="glyphicon glyphicon-duplicate"></i> <span>Raport Siswa</span>
          </a>
        </li>
        <li>
          <a href="<?php echo $basewa; ?>totalnilai">
            <i class="glyphicon glyphicon-file"></i> <span>Hasil Total Nilai</span>
          </a>
        </li>
        <li>
          <a href="<?php echo $basewa; ?>walimurid">
            <i class="glyphicon glyphicon-user"></i> <span>Wali Murid</span>
          </a>
        </li>
        <li >
          <a href="#">
            <i class="glyphicon glyphicon-list-alt"></i> <span>Mata Pelajaran</span>
          </a>
          <ul class="treeview-menu">
<?php $map=mysqli_query($con,"SELECT * FROM mapel order by mapel asc "); while($hmap=mysqli_fetch_array($map)){ ?>
<?php /*jumlah tipe nilai*/ $jtn=mysqli_query($con,"SELECT * FROM tipenilai");$hjtn=mysqli_num_rows($jtn); $js=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$kel[c_kelas]' ");$hjs=mysqli_num_rows($js);
/*rumusnya*/$harus=$hjtn*$hjs; echo ''; if($hjs==0){$persenan=0;}else{$persenan=100/$harus;}
/*nilai yg ada di database*/ $jn=mysqli_query($con,"SELECT * FROM nilai where c_ta='$c_ta' and c_mapel='$hmap[c_mapel]' and c_kelas='$kel[c_kelas]' and nilai>0 "); $hjn=mysqli_num_rows($jn);
$presentase=number_format($hjn*$persenan);
?>
        <li>
          <a href="<?php echo $basewa; ?>nilaipelajaran/<?php echo $hmap['c_mapel']; ?>">
            <span><?php echo $hmap['mapel']; ?></span>
            <span class="pull-right-container">
              <?php
                if($presentase>=0 and $presentase<=40){$bg='bg-red';}
                else if($presentase>=41 and $presentase<=75){$bg='bg-yellow';}
                else if($presentase>=76 and $presentase<=99){$bg='bg-blue';}
                else if($presentase==100){$bg='bg-green';}
                ?>
              <small class="label pull-right <?php echo $bg; ?>"><?php echo $presentase; ?>%</small>
            </span>
          </a>
        </li>
      <?php } ?>
        </ul>
      </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
   <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content">

<?php
  if(empty($_GET['on'])){require 'view/siswa.php';}
  else{
    $act=($_GET['on']);
    if($act=='totalnilai'){
      require 'view/totalnilai.php';
    }
    else if($act=='nilaipelajaran'){
      require 'view/nilaipelajaran.php';
    }
    else if($act=='siswa'){
      require 'view/siswa.php';
    }
    else if($act=='search'){
      require 'view/search.php';
    }
    else if($act=='walimurid'){
      require 'view/walimurid.php';
    }
    else if($act=='settingwalimurid'){
      require 'view/settingwalimurid.php';
    }
    else if($act=='settingrapot'){
      require 'view/settingrapot.php';
    }
    else{
      require 'view/404.php';
    }
  }
?>
    </section>
    <!-- /.content -->
  </div>
</div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; <?php echo date('Y'); ?> <a href="#"><?php echo $aplikasi['namasek']; ?></a></strong> by Faaztek SQUAD
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo $base; ?>theme/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<?php echo $base; ?>theme/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo $base; ?>theme/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo $base; ?>theme/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo $base; ?>theme/plugins/fastclick/fastclick.js"></script>
<!-- Sparkline -->
<script src="<?php echo $base; ?>theme/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo $base; ?>theme/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<!-- AdminLTE App -->
<script src="<?php echo $base; ?>theme/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo $base; ?>theme/dist/js/demo.js"></script>
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": false,
      "lengthChange": true,
      "searching": true,
      "ordering": false,
      "info": false,
      "autoWidth": false
    });
    $('#example3').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": false,
      "info": false,
      "autoWidth": false
    });
  });
</script>
<script src="<?php echo $base; ?>theme/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
<script src="<?php echo $base; ?>theme/plugins/pace/pace.min.js"></script>
<script type="text/javascript">
  // To make Pace works on Ajax calls
  $(document).ajaxStart(function() { Pace.restart(); });
    $('.ajax').click(function(){
        $.ajax({url: '#', success: function(result){
            $('.ajax-content').html('<hr>Ajax Request Completed !');
        }});
    });
</script>
<!-- Select2 -->
<script src="<?php echo $base; ?>theme/plugins/select2/select2.full.min.js"></script>
<script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();
  });
</script>
<script>
//angka 500 dibawah ini artinya pesan akan muncul dalam 0,5 detik setelah document ready
$(document).ready(function(){setTimeout(function(){$(".alert").fadeIn('fast');}, 100);});
//angka 3000 dibawah ini artinya pesan akan hilang dalam 3 detik setelah muncul
setTimeout(function(){$(".alert").fadeOut('fast');}, 3000);

</script>
</body>
</html>
