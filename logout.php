<?php
 include_once "adatb.php";
 session_start();
 unset($_SESSION['loggedin']);
 header('Location: index.php');// user is redirected to the sign up page.
  ?>