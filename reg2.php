<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
$email = "";
$password = "";
$hashed_password = "";


?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <title>Regisztráció</title>
  <link rel="stylesheet" href="stilus.css">
</head>

<body>

<header>

    <h1 class="topic">Regisztráció</h1>



</header>

<main>

<div id="reg-form">
  <form action="reg2.php" method="POST" enctype="multipart/form-data" autocomplete="off" >
     
	 <label class="urlap">E-mail cím: <br><input type="email" name="email" placeholder="valami@valami.com" value=""/></label>
        <br />
	 
        <label class="urlap">Jelszó: <br><input type="password" name="password" maxlength="15" placeholder="******" required value=""/></label>
  
        <br />

        
   
        <input type="submit" name="submit" value="Regisztráció" />
</form>
</div>
<?php
$email="";
$password="";
$remail="";
	if (isset($_POST["submit"])){
$isql="insert into USER_PROFILE(EMAIL, PASSWORD)
values (:email_bv, :password_bv)";
$stmt = oci_parse($conn,$isql);
$password =  $_POST['password'];
$email = $_POST['email'];
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

oci_bind_by_name($stmt, ':email_bv', $email);
oci_bind_by_name($stmt, ':password_bv', $hashed_password);



$stmt2 = oci_parse($conn, "select EMAIL from USER_PROFILE where EMAIL=:email_bv");
					oci_bind_by_name($stmt2, ":email_bv", $email);
					oci_execute($stmt2);


while ( ($row = oci_fetch_array($stmt2, OCI_ASSOC+ OCI_RETURN_NULLS)) != false) {
						$remail=$row['EMAIL'];
					}
					if ($remail!=null){
						echo '<script>alert("Ez az E-mail cím már létezik.")</script>';
					} else {

oci_execute($stmt);
					}
oci_free_statement($stmt);
oci_close($conn);
	}
?>

</div>
</main>


</body>
</html>