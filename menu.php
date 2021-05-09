<?php

include_once("adatb.php");

?>
	<link rel="stylesheet" type="text/css" href="stilus.css" />
<div class="menu">

    <div id="menu_header">

    <ul>
				<li><a href="index.php">Főoldal</a></li>
				<li><a href="2.php">2</a></li>
				<li><a href="3.php">3</a></li>
			
<?php
$pfirstname="";
$plastname="";
  if (isset($_SESSION['loggedin'])){ 
  echo '<li><a href="Company_add.php">Cég hozzáadása</a></li>';
		echo '<li><a href="5.php">Cég módosítása</a></li>';
      echo '<li><a href="logout.php">Kijelentkezés</a></li>';
	  echo ' <li><a href="profile.php">Profil</a></li>';
	  
	  $email=$_SESSION['loggedin'];
$stid = oci_parse($conn, "select * from USER_PROFILE where email=:email");
					oci_bind_by_name($stid, ":email", $email);
					oci_execute($stid);
					
					while ( ($row = oci_fetch_array($stid, OCI_ASSOC)) != false) {
						
						$plastname= $row['LAST_NAME'];
						$pfirstname= $row['FIRST_NAME'];
						$pemail=$row['EMAIL'];
					}
					echo 'Üdvözöllek az oldalon '  . $pfirstname . " " .  $plastname;
			
  }
  else {echo '<li><a href="login2.php">Bejelentkezés</a></li>';
		echo '<li><a href="reg2.php">Regisztráció</a></li>';
  }
  ?>
    </ul>
   </div>
</div>
