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
						$plastname= $row['FIRST_NAME'];
						$pcontact = $row['CONTACT_NUMBER'];
					}
					echo "E-mail: "; echo $pemail; echo"<br>";
					echo "Last name:"; echo $plastname; echo"<br>";
					echo "First name:"; echo $pfirstname; echo"<br>";
					echo "Telefonszám: "; echo $pcontact;  echo"<br>";
	if(isset($_POST['submit'])){				
$update = "update USER_PROFILE SET FIRST_NAME = :firstname WHERE EMAIL=:email";
$stmt = oci_parse($conn, $update);
oci_bind_by_name($stmt, ':firstname', $firstname);
oci_bind_by_name($stmt, ':email', $email);
$result = oci_execute($stmt, OCI_DEFAULT);
if (!$result) {
  echo oci_error();   
}
	}
?>

<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<input type="text" name="firstname" value="" placeholder="firstname">
	<button type="submit" name="submit">Submit</button>
</form>

</div>
</main>


</body>
</html>