<?php 
	
	require '../../../php/config.php'; 
	require '../../../php/function.php';

	$sjh2 = mysqli_query($con,
		"select concat(tblall.juz_atau_keterangan_ayat,' ', nmbagian) as nmjuzall, tblall.* from 
		(
			select tbl1.* from
			(
				select tj.id, tbl1.juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian, sh.c_siswa, tj.seqjuz, DATE_FORMAT(sh.tglnaikjuz, '%d %M %Y')tglnaikjuz from tbl_juz tj
				left join sisjuz_d sh on tj.id = sh.idjuz 
				left join (select distinct tj2.id, tj2.juz_atau_keterangan_ayat from tbl_juz tj2 ) as tbl1 
				on tj.parentid  = tbl1.id
				where tj.parentid != 0
				group by tj.id, tj.juz_atau_keterangan_ayat, tbl1.juz_atau_keterangan_ayat, tj.seqjuz, sh.c_siswa
				order by tj.seqjuz
			) as tbl1
			union 
			select tbl2.* from
			(
				select tj.id, '' juz_atau_keterangan_ayat, tj.juz_atau_keterangan_ayat as nmbagian,sh.c_siswa, tj.seqjuz, DATE_FORMAT(sh.tglnaikjuz, '%d %M %Y')tglnaikjuz  from tbl_juz tj
				left join sisjuz_d sh on tj.id = sh.idjuz  
				where tj.parentid = 0 and tj.seqjuz  > 14
				group by tj.id, tj.juz_atau_keterangan_ayat, tj.seqjuz, sh.c_siswa
				order by tj.seqjuz
			) as tbl2
		) as tblall 
		where coalesce(c_siswa, '') = '".$_GET['c_siswa']."'
		order by tglnaikjuz desc "
	);

	//header("Content-Type: application/json");
	//echo json_encode($sjh2);

	//create an array
	$emparray = array();

	while($row = mysqli_fetch_assoc($sjh2)) {

		// echo $row;
	    $emparray["tglnaikjuz"] = tgl($row['tglnaikjuz']);
	}
	echo json_encode($emparray);

?>