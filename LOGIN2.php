<?php
session_start();
include_once("adatb.php");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Bejelentkezés</title>
    <link rel="stylesheet" href="stilus.css">


</head>

<body>

   <?php
$password = "";
$email="";
$dbpass="";
		
		if (isset($_POST["submit"])){
				if(isset($_POST["email"]) && isset($_POST["password"]) && $_POST["email"]!="" && $_POST["password"]!=""){
					$email = $_POST["email"];
					$password=$_POST["password"];
				
					
					
					
					$stid = oci_parse($conn, "select password from USER_PROFILE where email=:email");
					oci_bind_by_name($stid, ":email", $email);
					oci_execute($stid);
					$dbpass="";
					while ( ($row = oci_fetch_array($stid, OCI_ASSOC)) != false) {
						
						$dbpass=$row['PASSWORD'];		
					}
					$result = password_verify($password,$dbpass);

							
					if($result==1){
							$_SESSION["loggedin"] = $email;
							echo '<script>window.location="index.php"</script>';
					} else {
						echo '<script>alert("Az E-mail cím vagy a jelszó helytelen.")</script>';
					}					
				}else {
						echo '<script>alert("Az E-mail cím vagy a jelszó helytelen.")</script>';
				}
		}
			?>
			</body>
<main>
        <div class="container">
            <div class="login">
			<form action="login2.php" method="post" enctype="multipart/form-data">	
                <h1> Bejelentkezés </h1>
                <p class="szukadatok">E-mail:</p>
                <input class="adatbeker" type="email" name="email" value="" placeholder="Add meg az E-mail címedet:"
                    tabindex="3" />
                <p class="szukadatok">Jelszó:</p>
                <input class="adatbeker" type="password" name="password" id="password" value="" placeholder="Add meg a jelszavadat:"
                    tabindex="4" />
                <p><input type="submit" name="submit" >Bejelentkezés</button></p>
            </form>
			</div>
			
			

    </main>
</html>