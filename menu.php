<php session_start(); ?>	

	<link rel="stylesheet" type="text/css" href="stilus.css" />
<div class="menu">

    <div id="menu_header">

    <ul>
				<li><a href="index.php">Főoldal</a></li>
				<li><a href="2.php">2</a></li>
				<li><a href="3.php">3</a></li>
				<li><a href="4.php">4</a></li>
				<li><a href="5.php">5</a></li>
<?php
  if (isset($_SESSION['loggedin'])){ 
      echo '<li><a href="logout.php">Kijelentkezés</a></li>';
	  echo ' <li><a href="profile.php">Profil</a></li>';
  }
  else {echo '<li><a href="login2.php">Bejelentkezés</a></li>';
		echo '<li><a href="reg.php">Regisztráció</a></li>';
  }
  ?>
    </ul>
   </div>
</div>
