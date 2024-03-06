<?php 
  
  date_default_timezone_set('Asia/Jakarta');
  $date=date('Y-m-d'); 

  require '../php/config.php'; 
  require '../php/function.php';

  session_start(); 

  if(empty($_SESSION['c_guru'])) {
    header('location:../login');
  } 

  $na = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where c_guru='$_SESSION[c_guru]' ")); 

  $ata=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM tahunakademik where status='aktif' ")); 
  $c_ta=$ata['c_ta']; //$setting=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM setting limit 1 "));*/ 
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>GURU AIIS-APPS</title>
  <link rel="icon" href="favicon.ico">
  <link rel="shortcut icon" href="<?php echo $base; ?>imgstatis/favicon.jpg">
  <script type="text/javascript" src="<?php echo $base; ?>jquery.js"></script> 
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link href="<?php echo $base; ?>theme/js/summernote.min.css" rel="stylesheet"/>
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
  <!-- <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/select2/select2.min.css"> -->
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  
  <!-- datetime -->
  
  <link href="<?php echo $base; ?>theme/datetime/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
    
    body {
      font-family: arial;
    }

    .judul {
      width: 100%; 
      background-color: #FFF; 
      padding: 10px;
      margin-bottom: 10px; 
    }

    .select2-container {
      width: 100% !important;
    }

    .keterangan_juz {
      width: 200%;
    }

    @media only screen and (max-width: 600px) {
      
      .select2-container {
        width: 100% !important;
      }

      .keteranganAyat {
        width: 100%
      }

    }

    /* The Modal (background) */
    .modal-error {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 9999; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content-error {
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 30%;
    }

    /* The Close Button */
    .close-popup-err {
      color: #aaaaaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close-popup-err:hover,
    .close-popup-err:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }

  </style>
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/overridecss.css">
</head>
<body class="skin-blue hold-transition " 
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
      <span class="logo-lg"><b>Guru AIIS-APPS</b></span>
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
                  <p><?php echo $ata['tahun']; ?> Semester <?php echo $ata['semester']; ?></p>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo $basegu; ?>a-guru/<?php echo md5('logout'); ?>/access" class="btn btn-default btn-flat"><i class="glyphicon glyphicon-off"></i> Sign out</a>
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

      <li >
        <a href="#">
          <i class="glyphicon glyphicon-menu-hamburger"></i>
          <span>Qiroati</span>
        </a>
        <ul class="treeview-menu">
          <li ><a href="<?php echo $basegu; ?>masterjilid"><i class="glyphicon glyphicon-star text-primary"></i> Data Jilid</a></li>
          <li ><a href="<?php echo $basegu; ?>naikjilid"><i class="glyphicon glyphicon-record text-primary"></i> Naik Jilid</a></li>

          <li ><a href="<?php echo $basegu; ?>summaryjilid"><i class="glyphicon glyphicon-record text-primary"></i> Summary Jilid</a></li>

          <li ><a href="<?php echo $basegu; ?>performansikelas"><i class="glyphicon glyphicon-stats text-primary"></i> Performansi Kelas</a></li>
          <li ><a href="<?php echo $basegu; ?>dataimtas"><i class="glyphicon glyphicon-star text-primary"></i> Data IMTAS</a></li>
        </ul>
      </li>

      <li >
        <a href="#">
          <i class="glyphicon glyphicon-book"></i>
          <span>Tahfidz</span>
        </a>
        <ul class="treeview-menu">
          <li ><a href="<?php echo $basegu; ?>masterjuz"><i class="glyphicon glyphicon-star text-primary"></i> Data Juz </a></li>
          <li ><a href="<?php echo $basegu; ?>naikjuz"><i class="glyphicon glyphicon-record text-primary"></i> Naik Juz </a></li>

          <li ><a href="<?php echo $basegu; ?>summaryjuz"><i class="glyphicon glyphicon-record text-primary"></i> Summary Juz </a></li>

          <li ><a href="<?php echo $basegu; ?>performansikelastahfidz"><i class="glyphicon glyphicon-stats text-primary"></i> Performansi Kelas</a></li>
          <li ><a href="<?php echo $basegu; ?>dataimtas"><i class="glyphicon glyphicon-star text-primary"></i> Data IMTAS</a></li>
        </ul>
      </li>

      <li>
        <a href="<?php echo $basegu; ?>">
          <i class="glyphicon glyphicon-th"></i> <span>Dashboard</span>
        </a>
      </li>
        <li class="header" style="color:#fff;">MATA PELAJARAN</li>
        <?php 
          $lkel=mysqli_query($con,"SELECT * FROM kelas order by kelas asc ");
          while($hlkel=mysqli_fetch_array($lkel)) { 
          $jma=mysqli_query($con,"SELECT * FROM gurumapel where c_guru='$_SESSION[c_guru]' and c_kelas='$hlkel[c_kelas]' ");
          $jmapel=mysqli_num_rows($jma); 
          if($jmapel>0) { 
        ?>
        <li 
        <?php 

          if(empty($_GET['r'])) {

          } else if($_GET['q'] == $hlkel['c_kelas']) {
            echo 'class="active"';
          } 
        ?>
        >
          <a href="#">
            <i class="glyphicon glyphicon-stats"></i>
            <span><?php echo $hlkel['kelas']; ?></span>
            <span class="pull-right-container">
              <small class="label pull-right bg-blue"><?php echo $jmapel; ?></small>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php while($hmapel=mysqli_fetch_array($jma)){ $mapel=mysqli_fetch_array(mysqli_query($con,"SELECT mapel from mapel where c_mapel='$hmapel[c_mapel]' ")); ?>
<?php /*jumlah tipe nilai*/ $jtn=mysqli_query($con,"SELECT * FROM tipenilai");$hjtn=mysqli_num_rows($jtn); $js=mysqli_query($con,"SELECT * FROM siswa where c_kelas='$hlkel[c_kelas]' ");$hjs=mysqli_num_rows($js);
/*rumusnya*/$harus=$hjtn*$hjs; echo ''; if($hjs==0){$persenan=0;}else{$persenan=100/$harus;}
/*nilai yg ada di database*/ $jn=mysqli_query($con,"SELECT * FROM nilai where c_ta='$c_ta' and c_mapel='$hmapel[c_mapel]' and c_kelas='$hlkel[c_kelas]' and nilai>0 "); $hjn=mysqli_num_rows($jn);
$presentase=number_format($hjn*$persenan);
?>
              <li <?php if(empty($_GET['r'])){}else if($_GET['r']==$hmapel['c_mapel']){echo 'class="active"';} ?>><a href="<?php echo $basegu.'inputnilai/'.$hlkel['c_kelas'].'/'.$hmapel['c_mapel'].'/_'; ?>"><?php echo $mapel['mapel']; ?>
              <span class="pull-right-container">
                <?php
                if($presentase>=0 and $presentase<=40){$bg='bg-red';}
                else if($presentase>=41 and $presentase<=75){$bg='bg-yellow';}
                else if($presentase>=76 and $presentase<=99){$bg='bg-blue';}
                else if($presentase==100){$bg='bg-green';}
                ?>
                <small class="label pull-right <?php echo $bg; ?>"><?php echo $presentase; ?>%</small>
              </span>
              </a></li>
            <?php } ?>
          </ul>
        </li>
      <?php } } ?>

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
  if(empty($_GET['on'])){require 'view/home.php';}
  else{
    $act=($_GET['on']);
    if($act=='inputnilai'){
      require 'view/inputnilai.php';
    }
    else if($act=='dataimtas'){
      require 'view/qiroati/dataimtas.php';
    }
    else if($act=='addimtas'){
      require 'view/qiroati/addimtas.php';
    }
    else if($act=='editimtas'){
      require 'view/qiroati/editimtas.php';
    }

    else if($act=='masterjilid'){
      require 'view/qiroati/a-master-jilid.php';
    }
    else if($act=='naikjilid'){
      require 'view/qiroati/a-naik-jilid.php';
    }
    else if($act=='pustaka'){
      require 'view/qiroati/a-pustaka.php';
    }
    else if($act=='performansikelas'){
      require 'view/qiroati/a-performansi-kelas.php';
    }
    else if($act=='summaryjilid'){
      require 'view/qiroati/summaryjilid.php';
    }

    #region tahfidz
    
    else if ( $act == 'masterjuz' ) {
      require 'view/tahfidz/a-master-juz.php';
    } else if ( $act == 'naikjuz' ) {
      require 'view/tahfidz/a-naik-juz.php';
    } else if ( $act == 'summaryjuz' ) {
      require 'view/tahfidz/summaryjuz.php';
    } else if ( $act == 'performansikelastahfidz' ) {
      require 'view/tahfidz/a-performansi-kelas-tahfidz.php';
    }

    #endregion tahfidz

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
   <strong>Copyright &copy; <?php echo date('Y'); ?> <a href="#"><?php echo $aplikasi['namasek']; ?></a></strong> by ATH
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>

<script src="<?php echo $base; ?>theme/js/summernote.min.js"></script>

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
<script src="<?php echo $base; ?>theme/plugins/chartjs/Chart.min.js"></script>
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
<!-- <script src="<?php echo $base; ?>theme/plugins/select2/select2.full.min.js"></script> -->

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
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
setTimeout(function(){$(".alert").fadeOut('fast');}, 5000);

</script>
</body>
</html>
