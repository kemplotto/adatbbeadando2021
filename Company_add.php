<?php 
    session_start();
 	include "menu.php";
	include "adatb.php";
	if (!isset($_SESSION['loggedin']))
    header("Location: login2.php");
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
  <form action="Company_add.php" method="POST" enctype="multipart/form-data" autocomplete="off" >
        <label class="urlap">Cégnév: <br><input type="text" name="company_name" maxlength="45"  required value="<?php echo $_POST['company_name']; ?>" /></label>
        <br />
		   <label class="urlap">E-mail cím: <br><input type="email" name="contact_email" placeholder="valami@valami.com"maxlength="45" required value="<?php echo $_POST['contact_email']; ?>" /></label>
        <br />
				   <label class="urlap">Leírás: <br><input type="text" name="company_description" maxlength="300" required value="<?php echo $_POST['company_description']; ?>" /></label>
        <br />

        <label class="urlap">Telefonszám: <br><input type="phone" name="contact_phone" placeholder="70/1234562" value="<?php echo $_POST["contact_phone"]; ?>"/></label>
        <br />
               <label class="urlap">Cím: <br><input type="text" name="location" placeholder="" value="<?php echo $_POST['location']; ?>"/></label>
        <br />
        <input type="submit" name="submit" value="Hozzáad" />
</form>

<?php
 if (!isset($_SESSION)) {
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

$isql="insert into COMPANY_PROFILE( ID, ADMIN_ID, COMPANY_NAME, COMPANY_DESCRIPTION, CONTACT_EMAIL, CONTACT_PHONE, LOCATION)
values (:ID, :ADMIN_ID, :company_name_bv, :company_description_bv, :contact_email_bv, :contact_phone_bv, :location_bv)";
$stmt = oci_parse($conn,$isql);
$contact_phone = $_POST["contact_phone"];
$company_description = $_POST["company_description"];
$location = $_POST["location"];
$company_name = $_POST["company_name"];
$contact_email = $_POST["contact_email"];
 
$adid = 1;
$ID = "select max(ID) FROM COMPANY_PROFILE";
$ID+= 1; 

oci_bind_by_name($stmt, ':ID', $ID);
oci_bind_by_name($stmt, ':ADMIN_ID', $adid);
oci_bind_by_name($stmt, ':company_name_bv', $company_name);
oci_bind_by_name($stmt, ':company_description_bv', $company_description);
oci_bind_by_name($stmt, ':contact_email_bv', $contact_email);
oci_bind_by_name($stmt, ':contact_phone_bv', $contact_phone);
oci_bind_by_name($stmt, ':location_bv',$location);



oci_execute($stmt);
oci_free_statement($stmt);
oci_close($conn);

    $_SESSION['postdata'] = $_POST;
    unset($_POST);
    header("Location: ".$_SERVER['PHP_SELF']);
    exit;
}
?>


</div>
</main>


</body>
</html>