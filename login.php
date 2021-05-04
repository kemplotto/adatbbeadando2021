
  <html>
  <body>
<h1>Login</h1>
 
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
	<input type="text" name="email" value="" placeholder="Email">
	<input type="password" name="password" value="" placeholder="Password">
	<button type="submit" name="submit">Submit</button>
</form>
 
<?php 
require_once("adatb.php");
if(isset($_POST['submit'])){
	$email = trim($_POST['email']);
	$password = trim($_POST['password']);
	
	$sql = 'select * from USER_PROFILE where email = :email_bv';
	$stid = oci_parse($conn,$sql);

if (isset($_POST['email']) ||isset($_POST['password'])){           
$email = $_POST['email'];
$password=$_POST['paassword'];
}
oci_bind_by_name($stid, ':email_bv', $email);
oci_bind_by_name($stid, ':password', $pass);
	
oci_execute($stid);
$row = oci_fetch_array($stid, OCI_ASSOC);	
	
 if ($row) {
 $_SESSION['user']=$_POST['user'];
 echo"log in successful";
  }
 else {
echo("The person " . $email . " is not found .
Please check the spelling and try again or check password");
exit;
}
$ID = $row['ID']; 
oci_free_statement($stid);
oci_close($con);
header('Location: index.php');
 ?>
 </body>
 </html>