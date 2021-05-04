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
  <form action="reg.php" method="POST" enctype="multipart/form-data" autocomplete="off" >
        <label class="urlap">Keresztnév: <br><input type="text" name="firstname" maxlength="15"  required value="<?php echo $_POST['firstname']; ?>" /></label>
        <br />
		   <label class="urlap">Vezetéknév: <br><input type="text" name="lastname" maxlength="15" required value="<?php echo $_POST['lastname']; ?>" /></label>
        <br />
        <label class="urlap">Jelszó: <br><input type="password" name="password" maxlength="15" placeholder="******" required value="<?php echo $_POST['password']; ?>"/></label>
        <br />
        <label class="urlap">Jelszó ismét: <br><input type="password" name="password2" maxlength="15" placeholder="******" required value="<?php echo $_POST["password2"]; ?>"/></label>
        <br />

        <label class="urlap">E-mail cím: <br><input type="email" name="email" placeholder="valami@valami.com" value="<?php echo $_POST["email"]; ?>"/></label>
        <br />
               <label class="urlap">Telefonszám: <br><input type="phone" name="contact_number" placeholder="70/1234562" value="<?php echo $_POST['contact_number']; ?>"/></label>
        <br />
        <input type="reset" name="reset" value="Visszaállítás" />
        <input type="submit" name="submit" value="Regisztráció" />
</form>

<?php


$isql="insert into USER_PROFILE( USER_TYPE_ID, EMAIL, PASSWORD, CONTACT_NUMBER, FIRST_NAME, LAST_NAME)
values (:user_type_id_bv, :email_bv, :password_bv, :contact_number_bv, :first_name_bv, :last_name_bv)";
$stmt = oci_parse($conn,$isql);
$email = $_POST["email"];
$password = $_POST["password"];
$contact_number = $_POST["contact_number"];
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];

$utid = 0;
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

oci_bind_by_name($stmt, ':user_type_id_bv', $utid);
oci_bind_by_name($stmt, ':email_bv', $email);
oci_bind_by_name($stmt, ':password_bv', $hashed_password);
oci_bind_by_name($stmt, ':contact_number_bv', $contact_number);
oci_bind_by_name($stmt, ':first_name_bv', $firstname);
oci_bind_by_name($stmt, ':last_name_bv',$lastname);


oci_execute($stmt);
oci_free_statement($stmt);
oci_close($conn);
   
?>

</div>
</main>


</body>
</html>