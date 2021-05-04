<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
error_reporting(0);
?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <title>Profil</title>
    <style>
 		<?php include "stilus.css"; ?>
	</style>
</head>

<body>

<header>

   



</header>

<main>



<?php
$plastname="";
$pfirstname="";
$pemail="";
$email=$_SESSION['loggedin'];
$stid = oci_parse($conn, "select * from USER_PROFILE where email=:email");
					oci_bind_by_name($stid, ":email", $email);
					oci_execute($stid);
					
					while ( ($row = oci_fetch_array($stid, OCI_ASSOC)) != false) {
						
						$pemail=$row['EMAIL'];
						$plastname= $row['LAST_NAME'];
						$pfirstname= $row['FIRST_NAME'];
						$pcontact = $row['CONTACT_NUMBER'];
					}
					echo "E-mail: "; echo $pemail; echo"<br>";
					echo "Vezetéknév: "; echo $plastname; echo"<br>";
					echo "Keresztnév: "; echo $pfirstname; echo"<br>";
					echo "Telefonszám: "; echo $pcontact;  echo"<br>";
					
	if(isset($_POST['submit'])){	
	
	
$firstname =  $_POST['firstname'];	
$lastname = $_POST['lastname'];
$update = "update USER_PROFILE SET FIRST_NAME=:firstname, LAST_NAME = :lastname WHERE EMAIL=:email";
$stmt = oci_parse($conn, $update);
oci_bind_by_name($stmt, ':firstname', $firstname);
oci_bind_by_name($stmt, ':lastname', $lastname);
oci_bind_by_name($stmt, ':email', $email);
$result = oci_execute($stmt, OCI_COMMIT_ON_SUCCESS);
if (!$result) {
  echo oci_error();   
}
	}
?>
<h1>Az adatok frissítéséhez töltsd ki a mezőket:</h1>
<form action="profile.php" method="post">
	<input type="text" name="firstname" value="" placeholder="Keresztnév">
	<input type="text" name="lastname" value="" placeholder="vezetéknév">
	<button type="submit" name="submit">Submit</button>
</form>

</div>
</main>


</body>
</html>