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
    <title>Hozzáad</title>
    <style>
 		<?php include "stilus.css"; ?>
	</style>
</head>

<body>

<header>

    <h1 class="topic">Végzettség hozzáadása</h1>



</header>

<main>


<div id="reg">
  <form action="Education_add.php" method="POST" enctype="multipart/form-data" autocomplete="off" >
        <label class="urlap">Végzettség szintje: <br><input type="number" name="degree_level" maxlength="45"  required value="<?php echo $_POST['degree_level']; ?>" /></label>
        <br />
		   <label class="urlap">Képzés kezdése:: <br><input type="date" name="start_date" maxlength="45" required value="<?php echo $_POST['start_date']; ?>" /></label>
        <br />
				   <label class="urlap">Leírás: <br><input type="date" name="end_date" maxlength="300" required value="<?php echo $_POST['end_date']; ?>" /></label>
        <br />

        <input type="submit" name="submit" value="Hozzáad" />
</form>

<?php
 if (!isset($_SESSION)) {
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

$isql="insert into EDUCATION( USER_PROFILE_ID, DEGREE_NAME, DEGREE_ID, DEGREE_LEVEL, START_DATE, END_DATE)
values (:USER_PROFILE_ID_bk, :DEGREE_NAME_bk, :DEGREE_ID_bk, :DEGREE_LEVEL_Bk, :START_DATE_bk, :END_DATE_bk)";
$stmt = oci_parse($conn,$isql);
$degree_level = $_POST["degree_level"];
$start_date = $_POST["start_date"];
$end_date = $_POST["end_date"];
$pfirstname="";
$plastname="";


$stid = oci_parse($conn, "select * from USER_PROFILE where email=:email");
					oci_bind_by_name($stid, ":email", $email);
					oci_execute($stid);
					
					while ( ($row = oci_fetch_array($stid, OCI_ASSOC)) != false) {
						
						$plastname= $row['LAST_NAME'];
						$pfirstname= $row['FIRST_NAME'];
						$pid=$row['ID'];
					}
					$degree_name= $pfirstname . " " . $plastname;
					$user_profile_id= $pid;
	/*				
$degree_name = "Kiss József";
$user_profile_id = 2;*/
 
$adid = 1;
$degree_id = "select max(DEGREE_ID) FROM EDUCATION";
$degree_id+= 1; 

oci_bind_by_name($stmt, ':USER_PROFILE_ID_bk', $user_profile_id);
oci_bind_by_name($stmt, ':DEGREE_NAME_bk', $degree_name);
oci_bind_by_name($stmt, ':degree_id_bk', $degree_id);
oci_bind_by_name($stmt, ':DEGREE_LEVEL_Bk', $degree_level);
oci_bind_by_name($stmt, ':START_DATE_bk', $start_date);
oci_bind_by_name($stmt, ':END_DATE_bk', $end_date);



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