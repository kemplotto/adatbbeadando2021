<?php
	include_once 'adatb.php';
	$query = oci_parse($conn, "DELETE FROM COMPANY_PROFILE WHERE ID='" . $_GET["company_id"] . "'");
	$result = oci_execute($query, OCI_DEFAULT);  
	if($result)  
	{  
		oci_commit($conn); //*** Commit Transaction ***// 
		echo "Data Deleted Successfully.";
		// 301 Moved Permanently
		header("Location: 5.php", true, 301);
exit();
	}
	else{
		echo "Error.";
	}
?>