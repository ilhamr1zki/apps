<?php
    header('Content-Type: application/json');require '../../php/config.php'; require '../../php/function.php';
    $sqlQuery = "select tj.id, tj.nmjilid, count(sh.c_siswa)jml  from tbl_jilid tj
    left join sisjilid_h sh on tj.id = sh.idjilid
    group by tj.id, tj.nmjilid
    order by tj.seqjilid";
    $result = mysqli_query($con,$sqlQuery);
    $data = [];
    foreach ($result as $row) {
        $data[] = $row;
    }
    mysqli_close($conn);
    echo json_encode($data);
?>

<script src="<?php echo $base; ?>theme/plugins/jQuery/jquery-2.2.3.min.js"></script>