<?php
session_start();
include_once("adatb.php");

?>

<!DOCTYPE html>
<html>
<head>
    <title>
        Álláskeresés
    </title>
    <link rel="stylesheet" type="text/css" href="stilus.css" />
    <?php include "menu.php"; ?>
</head>

<body>

<div id="content">

<?php
echo "1\n";
$stid = oci_parse($conn, 'SELECT * FROM SIMON.COMPANY_PROFILE');
if (!$stid) {
    $e = oci_error($conn);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

$r = oci_execute($stid);
if (!$r) {
    $e = oci_error($stid);
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}

echo '<table border=1>';
while ($record= oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
    echo "<tr>\n";
    echo sprintf('<p><td>%s </td><td> %s</td><td> Leírás: %s</p></td>', $record['COMPANY_NAME'], $record['LOCATION'], $record['COMPANY_DESCRIPTION']);
    echo "</tr>\n";
}

oci_free_statement($stid);
oci_close($conn); ?>

</div>
</body>
</html>