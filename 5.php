<?php
session_start();
include_once("adatb.php");
	if (!isset($_SESSION['loggedin']))
    header("Location: login2.php");
?>

<!DOCTYPE html>
<html>
<head>
    <title>
        Müsorújság
    </title>
    <link rel="stylesheet" type="text/css" href="stilus.css" />
    <?php include "menu.php"; ?>
</head>

<body>

<div id="content">


<?php
echo "Cégek adatainek módosítása\n";
$stid = oci_parse($conn, 'SELECT * FROM COMPANY_PROFILE');
if (!$stid) {
    $e = oci_error($conn);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$r = oci_execute($stid);
if (!$r) {
    $e = oci_error($stid);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}


function hello() {
  alert(clicked);
  return false;
}



echo '<table border=1>';
while ($record= oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
    echo sprintf('<p><td>%s </td><td> %s</td><td> Leírás: %s<td> Email: %s</p><td> Tel: %s</p></td></p>', $record['COMPANY_NAME'], $record['LOCATION'], $record['COMPANY_DESCRIPTION'], $record['CONTACT_EMAIL'], $record['CONTACT_PHONE']);

		?>
	<td><a href="5_delete_process.php?company_id=<?php echo $record["ID"]; ?>">Delete</a></td>
		<?php
    echo "</tr>\n";
}



oci_free_statement($stid);
oci_close($conn); ?>


</div>
</body>
</html>