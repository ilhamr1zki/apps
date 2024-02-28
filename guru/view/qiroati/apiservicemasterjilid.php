<?php require '../../../php/config.php'; require '../../../php/function.php';
$sjh2=mysqli_fetch_array(mysqli_query($con,"select case when tblall.nmjilid = '' then nmbagian else tblall.nmjilid end as nmjilid2, concat(tblall.nmjilid,' ', nmbagian) as nmjilidall, tblall.* from 
(
select tbl1.* from
(select tj.id, tbl1.nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid 
left join (select distinct tj2.id, tj2.nmjilid from tbl_jilid tj2 ) as tbl1 
on tj.parentid  = tbl1.id
where tj.parentid != 0
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tbl1.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl1
union 
select tbl2.* from
(
select tj.id, '' nmjilid, tj.nmjilid as nmbagian, count(sh.c_siswa) as jml, tj.seqjilid  from tbl_jilid tj
left join sisjilid_h sh on tj.id = sh.idjilid  
where tj.parentid = 0 and tj.seqjilid  > 14
and coalesce(sh.flag, 'N') = 'N'
group by tj.id, tj.nmjilid, tj.seqjilid
order by tj.seqjilid) as tbl2) as tblall where tblall.id='".$_GET['idjilid']."'  limit 1 "));

header("Content-Type: application/json");
echo json_encode($sjh2);

?>