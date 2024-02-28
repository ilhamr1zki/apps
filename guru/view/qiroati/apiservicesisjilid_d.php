<?php require '../../../php/config.php'; require '../../../php/function.php';
$sjh2=mysqli_query($con,"select concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
(
select tbl1.* from
(select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, sh.c_siswa, tj.seqjilid, DATE_FORMAT(sh.tglnaikjilid, '%d %M %Y')tglnaikjilid from tbl_jilid tj
left join sisjilid_d sh on tj.id = sh.idjilid 
left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
on tj.parentid  = tbl1.id
where tj.parentid != 0
group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid, sh.c_siswa
order by tj.seqjilid) as tbl1
union 
select tbl2.* from
(
select tj.id, '' nmjilid, tj.nmjilid as nmbagian,sh.c_siswa, tj.seqjilid, DATE_FORMAT(sh.tglnaikjilid, '%d %M %Y')tglnaikjilid  from tbl_jilid tj
left join sisjilid_d sh on tj.id = sh.idjilid  
where tj.parentid = 0 and tj.seqjilid  > 14
group by tj.id, tj.nmjilid, tj.seqjilid, sh.c_siswa
order by tj.seqjilid) as tbl2) as tblall where coalesce(c_siswa, '') = '".$_GET['c_siswa']."'
order by tglnaikjilid desc ");

//header("Content-Type: application/json");
//echo json_encode($sjh2);

//create an array
$emparray = array();
while($row =mysqli_fetch_assoc($sjh2))
{
    $emparray[] = $row;
}
echo json_encode($emparray);

?>