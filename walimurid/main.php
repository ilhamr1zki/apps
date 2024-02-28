<?php require '../php/config.php'; require '../php/function.php'; session_start(); if(empty($_SESSION['c_walimurid'])){header('location:../login');} /*walimurid*/$wali=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walimurid where c_walimurid='$_SESSION[c_walimurid]' ")); /*siswa*/$siswa=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM siswa where c_siswa='$wali[c_siswa]' ")); /*kelas*/$kelas=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$siswa[c_kelas]' ")); /*walikelas*/ $walikel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM walikelas where c_kelas='$kelas[c_kelas]' "));/*guru*/ $guru=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where c_guru='$walikel[c_guru]' ")); ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>WALI MURID E-RAPORT</title>
  <link rel="shortcut icon" href="<?php echo $base; ?>imgstatis/logo2.png">
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/bootstrap/css/bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/skins/_all-skins.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/datatables/dataTables.bootstrap.css">
  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-green layout-top-nav fixed">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu navbar">
          <ul class="nav navbar-nav navbar-left">
            <li class="active">
              <a><i class="glyphicon glyphicon-stats"></i> <?php echo $ata['tahun']; ?> Semester <?php echo $ata['semester']; ?></a>
            </li>
            <li><a href="<?php echo $basewam; ?>"><i class="glyphicon glyphicon-file"></i> Nilai Siswa</a></li>
            <li><a href="<?php echo $basewam; ?>guru"><i class="glyphicon glyphicon-user"></i> Guru</a></li>
            <li class="user user-menu"><a href="<?php echo $basewam.'a-walimurid/'.md5('logout'); ?>/accesss"><img src="<?php echo $base; ?>imgstatis/ortu.png" class="user-image" alt="User Image"><span>&nbsp;<?php echo $wali['nama']; ?> <i class="glyphicon glyphicon-log-out"></i></span></a></li>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="">
      <!-- Main content -->
      <section class="content">
<?php
  if(empty($_GET['smkakh'])){require 'view/home.php';}
  else{
    $act=($_GET['smkakh']);
    if($act=='pesan'){
      require 'view/pesan.php';
    }
    else if($act=='guru'){
      require 'view/guru.php';
    }
    else if($act=='pesan'){
      require 'view/pesan.php';
    }
    else{
      require 'view/404.php';
    }
  }
?>
        <?php  ?>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        <b>Version</b> 2.3.8
      </div>
      <strong>Copyright &copy; <?php echo date('Y'); ?> <a href="#"><?php echo $aplikasi['namasek']; ?></a></strong> by ATH
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo $base; ?>theme/bootstrap/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo $base; ?>theme//plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo $base; ?>theme/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo $base; ?>theme/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo $base; ?>theme/dist/js/demo.js"></script>
<!-- DataTables -->
<script src="<?php echo $base; ?>theme/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo $base; ?>theme/plugins/datatables/dataTables.bootstrap.min.js"></script>
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
  });
</script>
<script>
//angka 500 dibawah ini artinya pesan akan muncul dalam 0,5 detik setelah document ready
$(document).ready(function(){setTimeout(function(){$(".alert").fadeIn('fast');}, 100);});
//angka 3000 dibawah ini artinya pesan akan hilang dalam 3 detik setelah muncul
setTimeout(function(){$(".alert").fadeOut('fast');}, 7000);
setTimeout(function(){$("#hilang").fadeOut('fast');}, 2000);

</script>
</body>
</html>
