<?php 
  
  date_default_timezone_set('Asia/Jakarta');$date=date('Y-m-d'); 
  
  require '../php/config.php'; 
  require '../php/function.php'; 
  
  session_start(); 

  if(empty($_SESSION['c_admin'])) {
    header('location:../login');
  } 

  $na = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM admin where c_admin='$_SESSION[c_admin]' ")); 
  //$setting=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM setting limit 1 "));*/ 

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin AIIS-APPS</title>
  <link rel="icon" href="favicon.ico">
  
  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="<?php echo $base; ?>imgstatis/favicon.jpg">

  <!-- Jquery -->
  <script type="text/javascript" src="<?php echo $base; ?>jquery.js"></script> 

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <!-- Theme -->
  <link href="<?php echo $base; ?>theme/js/summernote.min.css" rel="stylesheet"/>
 
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

  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  
  <!-- datetime -->
  <link href="<?php echo $base; ?>theme/datetime/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/plugins/select2/select2.min.css">

  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/AdminLTE.min.css">

  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet" href="<?php echo $base; ?>theme/dist/css/overridecss.css">
  
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
    
    body {
      font-family:arial;
    }

    .judul {
      width: 100%; 
      background-color: #FFF; 
      padding: 10px;
      margin-bottom: 10px; 
    }

    .select2-container {
      width: 110% !important;
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
</head>
<body class="skin-blue hold-transition fixed" 
oncontextmenu="return false">
<!--modal ganti foto-->

<!-- Olahangka -->
<script src="<?php echo $base; ?>php/olahangka.js"></script>

<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>AKH</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin AIIS-APPS</b></span>
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
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="glyphicon glyphicon-search"></i> Cari Siswa
            </a>
            <ul class="dropdown-menu" style="border-bottom: 2px solid#aaa;">
              <li class="header text-center">Masukkan NISN Atau NAMA Siswa</li>
              <li>
              <form action="<?php echo $basead; ?>kesearch" method="get">
                <ul class="menu">
                  <li>
                    <input autofocus="" autocomplete="off" required="" type="text" name="search" class="form-control" style="margin-left:5%;width:90%;">
                  </li>
                </ul>
              </li>
              <li class="footer text-center" style="padding:10px;"><button class="btn btn-success btn-sm btn-flat" style="width:96%;">Mulai Mencari...</button></li>
              </form>
            </ul>
          </li>

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
                  <small></small>
                </p>
                <p><?php echo $aplikasi['namasek']; ?></p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo $basead; ?>a-control/<?php echo md5('logout'); ?>/access" class="btn btn-default btn-flat"><i class="glyphicon glyphicon-off"></i> Sign out</a>
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

        <!-- Qiroati -->
        <li>
          <a href="#">
            <i class="glyphicon glyphicon-menu-hamburger"></i>
            <span>Qiroati</span>
          </a>
          <ul class="treeview-menu">
        
          <li ><a href="<?php echo $basead; ?>masterjilid"><i class="glyphicon glyphicon-star text-primary"></i> Data Jilid</a></li>
          <li ><a href="<?php echo $basead; ?>performansikelas"><i class="glyphicon glyphicon-stats text-primary"></i> Performansi Kelas</a></li>

          </ul>
        </li>

        <!-- Tahfidz -->
        <li>
          <a href="#">
            <i class="glyphicon glyphicon-book"></i>
            <span>Tahfidz</span>
          </a>
          <ul class="treeview-menu">
          
          <li ><a href="<?php echo $basead; ?>masterjuz"><i class="glyphicon glyphicon-star text-primary"></i> Data Juz</a></li>
          <li ><a href="<?php echo $basead; ?>performansikelastahfidz"><i class="glyphicon glyphicon-stats text-primary"></i> Performansi Kelas</a></li>

          </ul>
        </li>

        <li>
          <a href="<?php echo $basead; ?>">
            <i class="glyphicon glyphicon-th"></i> <span>Dashboard</span>
          </a>
        </li>
        <li >
          <a href="#">
            <i class="glyphicon glyphicon-menu-hamburger"></i>
            <span>Master</span>
          </a>
          <ul class="treeview-menu">
            <li ><a href="<?php echo $basead; ?>setting"><i class="glyphicon glyphicon-cog"></i> Setting Aplikasi</a></li>
            <li ><a href="<?php echo $basead; ?>backup"><i class="glyphicon glyphicon-download-alt"></i> Backup Database</a></li>
          </ul>
        </li>
        <li >
          <a href="#">
            <i class="glyphicon glyphicon-log-in"></i>
            <span>Pengguna Aplikasi</span>
          </a>
          <ul class="treeview-menu">
            <li ><a href="<?php echo $basead; ?>gurumapel"><i class="glyphicon glyphicon-star-empty"></i> Guru Mapel</a></li>
            <li ><a href="<?php echo $basead; ?>walikelas"><i class="glyphicon glyphicon-star-empty"></i> Wali Kelas</a></li>
            <li ><a href="<?php echo $basead; ?>walimurid"><i class="glyphicon glyphicon-star-empty"></i> Wali Murid</a></li>
          </ul>
        </li>
        <li >
          <a href="<?php echo $basead; ?>kelas">
            <i class="glyphicon glyphicon-stats"></i> <span>Kelas</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>guru">
            <i class="glyphicon glyphicon-edit"></i> <span>Guru</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>siswa">
            <i class="glyphicon glyphicon-education"></i> <span>Siswa</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>mapel">
            <i class="glyphicon glyphicon-list-alt"></i> <span>Mata Pelajaran</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>extra">
            <i class="glyphicon glyphicon-heart-empty"></i> <span>Ekstrakulikuler</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>tahunakademik">
            <i class="glyphicon glyphicon-calendar"></i> <span>Tahun Akademik</span>
          </a>
        </li>
        <li >
          <a href="<?php echo $basead; ?>jenisnilai">
            <i class="glyphicon glyphicon-wrench"></i> <span>Jenis Nilai</span>
          </a>
        </li>

        
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
   <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content">

<?php
  if(empty($_GET['on'])){require 'view/home.php';}
  else{
    $act=($_GET['on']);
    if($act=='kelas'){
      require 'view/a-kelas.php';
    }
    else if($act=='siswa'){
      require 'view/a-siswa.php';
    }
    else if($act=='addsiswa'){
      require 'view/a-addsiswa.php';
    }
    else if($act=='editsiswa'){
      require 'view/a-editsiswa.php';
    }
    else if($act=='guru'){
      require 'view/a-guru.php';
    }
    else if($act=='addguru'){
      require 'view/a-addguru.php';
    }
    else if($act=='editguru'){
      require 'view/a-editguru.php';
    }
    else if($act=='orangtua'){
      require 'view/a-orangtua.php';
    }
    else if($act=='walimurid'){
      require 'view/a-walimurid.php';
    }
    else if($act=='search'){
      require 'view/search.php';
    }
    else if($act=='mapel'){
      require 'view/a-mapel.php';
    }
    else if($act=='gurumapel'){
      require 'view/a-gurumapel.php';
    }
    else if($act=='addgurumapel'){
      require 'view/a-addgurumapel.php';
    }
    else if($act=='editgurumapel'){
      require 'view/a-editgurumapel.php';
    }
    else if($act=='walikelas'){
      require 'view/a-walikelas.php';
    }
    else if($act=='addwalikelas'){
      require 'view/a-addwalikelas.php';
    }
    else if($act=='editwalikelas'){
      require 'view/a-editwalikelas.php';
    }
    else if($act=='tahunakademik'){
      require 'view/a-ta.php';
    }
    else if($act=='tahunakademik'){
      require 'view/a-ta.php';
    }
    else if($act=='jenisnilai'){
      require 'view/a-tipenilai.php';
    }
    else if($act=='walimurid'){
      require 'view/a-walimurid.php';
    }
    else if($act=='editwalimurid'){
      require 'view/a-editwalimurid.php';
    }
    else if($act=='setting'){
      require 'view/setting.php';
    }
    else if($act=='backup'){
      require 'view/a-backup.php';
    }
    else if($act=='extra'){
      require 'view/a-extra.php';
    }
    else if($act=='settinggurumapel'){
      require 'view/settinggurumapel.php';
    }

    #region qiroati
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

    #endregion qiroati

    #region tahfidz
    
    else if($act=='masterjuz') {
      require 'view/tahfidz/a-master-juz.php';
    } else if ($act == 'performansikelastahfidz') {
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
 
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>

<script src="<?php echo $base; ?>theme/js/summernote.min.js" crossorigin="anonymous"></script>

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
<!-- <script src="<?php echo $base; ?>theme/plugins/select2/select2.full.min.js"></script> -->
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

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<!-- Select2 -->
<script src="<?php echo $base; ?>theme/plugins/select2/select2.full.min.js"></script>
<script>
  $(function () {
    //Initialize Select2 Elements
    $("#select2").select2();
  });
  $(function () {
    //Initialize Select2 Elements
    $("#select3").select2();
  });
  $(function () {
    //Initialize Select2 Elements
    $("#select4").select2();
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
