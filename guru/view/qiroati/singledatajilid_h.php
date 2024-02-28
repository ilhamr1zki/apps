<?php require '../../../php/config.php'; require '../../../php/function.php';
$sjh2=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM sisjilid_h where c_siswa='".$_GET['c_siswa']."'  limit 1 "));

header("Content-Type: application/json");
echo json_encode($sjh2);

?>