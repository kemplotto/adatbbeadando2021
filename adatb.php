<?php
function connect()
{
    $conn = oci_connect('simon', 'medvecukor', "localhost/XE", 'AL32UTF8');
    if (!$conn) {
        $e = oci_error();
        trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
    } else {

    }

    return $conn;
}
