<?php 

	require '../../../php/config.php'; 
	require '../../../php/function.php';

	$sjh2 = mysqli_fetch_array(mysqli_query($con,

	"select case when tblall.juz_atau_keterangan_ayat = '' then nmbagian else tblall.juz_atau_keterangan_ayat end as nmjuz2, concat(tblall.juz_atau_keterangan_ayat,' ', nmbagian) as nmjuzall, tblall.* from 
	(
		select tbl1.* from
		(
			select tj.id, tbl1.juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, count(sh.c_siswa) as jml, tj.seqjuz from tbl_juz tj
			left join sisjuz_h sh on tj.id = sh.idjuz 
			left join (select distinct tj2.id, tj2.juz_atau_keterangan_ayat from tbl_juz tj2 ) as tbl1 
			on tj.parentid  = tbl1.id
			where tj.parentid != 0
			and coalesce(sh.flag, 'N') = 'N'
			group by tj.id, tj.juz_atau_keterangan_ayat, tbl1.juz_atau_keterangan_ayat, tj.seqjuz
			order by tj.seqjuz
		) as tbl1
		union 
		select tbl2.* from
		(
			select tj.id, '' juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, count(sh.c_siswa) as jml, tj.seqjuz  from tbl_juz tj
			left join sisjuz_h sh on tj.id = sh.idjuz  
			where tj.parentid = 0 and tj.seqjuz  > 14
			and coalesce(sh.flag, 'N') = 'N'
			group by tj.id, tj.juz_atau_keterangan_ayat, tj.seqjuz
			order by tj.seqjuz) as tbl2
		) as tblall 
	where tblall.id='".$_GET['idjuz']."' limit 1 "));

	header("Content-Type: application/json");
	echo json_encode($sjh2);

?>