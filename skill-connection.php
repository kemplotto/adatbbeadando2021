<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
$skill = "";

?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <title>Letmetrythis</title>
  <link rel="stylesheet" href="stilus.css">
</head>

<body>

<header>



</header>

<main>


<?php $isql="SELECT USER_PROFILE.id AS uid, USER_PROFILE.email AS uemail, USER_SKILL.id AS uskill, USER_SKILL.skill_level AS usl FROM USER_PROFILE, USER_SKILL WHERE USER_PROFILE.email = :email";


$stmt = oci_parse($conn,$isql);
oci_bind_by_name($stmt, ":email", $email);
$email=$_SESSION['loggedin'];
oci_execute($stmt);

while ( ($row = oci_fetch_array($stmt, OCI_ASSOC+OCI_RETURN_LOBS+OCI_RETURN_NULLS)) != false) {
						$skill= $row['uskill'];
						$level= $row['usl'];
						
						
					}

echo $skill;
?>