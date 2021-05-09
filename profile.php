<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
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
						$pcontact = $row['CONTACT_NUMBER'];
						$pemail=$row['EMAIL'];
						$plastname= $row['LAST_NAME'];
						$pfirstname= $row['FIRST_NAME'];
						
					}
					echo "E-mail: "; echo $pemail; echo"<br>";
					echo "Vezetéknév: "; echo $plastname; echo"<br>";
					echo "Keresztnév: "; echo $pfirstname; echo"<br>";
					echo "Telefonszám: "; echo $pcontact;  echo"<br>";
					
	if(isset($_POST['submit'])){	
	
	
$firstname =  $_POST['firstname'];	
$lastname = $_POST['lastname'];
$contactnumber = $_POST['contactnumber'];
$update = "update USER_PROFILE SET FIRST_NAME=:firstname, LAST_NAME = :lastname, CONTACT_NUMBER=:contact, WHERE EMAIL=:email";
$stmt = oci_parse($conn, $update);
oci_bind_by_name($stmt, ':firstname', $firstname);
oci_bind_by_name($stmt, ':lastname', $lastname);
oci_bind_by_name($stmt, ':contact', $contactnumber);
oci_bind_by_name($stmt, ':email', $email);
$result = oci_execute($stmt, OCI_COMMIT_ON_SUCCESS);
if (!$result) {
  echo oci_error();   
}
	}
?>

<button type="button" class="collapsible">Profil szerkesztése</button>
<div class="content">

<h1>Az adatok frissítéséhez töltsd ki a mezőket:</h1>
<form action="profile.php" method="post">
	<input type="text" name="firstname" value="" placeholder="Keresztnév">
	<input type="text" name="lastname" value="" placeholder="vezetéknév">
	<input type="text" name="contactnumber" value="" placeholder="Telefonszám">
	<button type="submit" name="submit">Submit</button>
</form>

</div>

</main>

<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });

}
</script>
</body>
</html>