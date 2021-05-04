<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
$email = "";
$password = "";
$hashed_password = "";
error_reporting(0);

?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <title>Regisztráció</title>
    <style>
 		<?php include "stilus.css"; ?>
	</style>
</head>

<body>

<header>

    <h1 class="topic">Regisztráció</h1>



</header>

<main>

<div id="reg">
  <form action="reg2.php" method="POST" enctype="multipart/form-data" autocomplete="off" >
     
        <label class="urlap">Jelszó: <br><input type="password" name="password" maxlength="15" placeholder="******" required value="<?php echo $_POST['password']; ?>"/></label>
  
        <br />

        <label class="urlap">E-mail cím: <br><input type="email" name="email" placeholder="valami@valami.com" value="<?php echo $_POST['email']; ?>"/></label>
        <br />
   
        <input type="submit" name="submit" value="Regisztráció" />
</form>

<?php


$isql="insert into USER_PROFILE(EMAIL, PASSWORD)
values (:email_bv, :password_bv)";
$stmt = oci_parse($conn,$isql);
$password =  $_POST['password'];
$email = $_POST['email'];

$hashed_password = password_hash($password, PASSWORD_DEFAULT);

oci_bind_by_name($stmt, ':email_bv', $email);
oci_bind_by_name($stmt, ':password_bv', $hashed_password);



oci_execute($stmt);
oci_free_statement($stmt);
oci_close($conn);
  
?>

</div>
</main>


</body>
</html>