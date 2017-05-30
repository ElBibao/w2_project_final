<?php 
session_start();
require_once("inc/config.inc.php");
require_once("inc/functions.inc.php");

include("templates/header.inc.php")
?>
<div class="container main-container registration-form">
<h1>Dem Club beitreten</h1>
<?php
$showFormular = true; 
 
if(isset($_GET['register'])) {
	$error = false;
	$username = trim($_POST['Username']);
	$email = trim($_POST['email']);
	$passwort = $_POST['passwort'];
	$passwort2 = $_POST['passwort2'];
	
	if(empty($username) || empty($email)) {
		echo 'Bitte alle Felder ausfüllen<br>';
		$error = true;
	}
  
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo 'Bitte eine gültige E-Mail-Adresse eingeben<br>';
		$error = true;
	} 	
	if(strlen($passwort) == 0) {
		echo 'Bitte ein Passwort angeben<br>';
		$error = true;
	}
	if($passwort != $passwort2) {
		echo 'Die Passwörter müssen übereinstimmen<br>';
		$error = true;
	}

	if(!$error) { 
		$statement = $pdo->prepare("SELECT * FROM users WHERE email = :email");
		$result = $statement->execute(array('email' => $email));
		$user = $statement->fetch();
		
		if($user !== false) {
			echo 'Diese E-Mail-Adresse ist bereits vergeben<br>';
			$error = true;
		}	
	}
	
	if(!$error) {	
		$passwort_hash = password_hash($passwort, PASSWORD_DEFAULT);
		
		$statement = $pdo->prepare("INSERT INTO users (email, passwort, username) VALUES (:email, :passwort, :username)");
		$result = $statement->execute(array('email' => $email, 'passwort' => $passwort_hash, 'username' => $username));
		
		if($result) {		
			echo 'Du wurdest erfolgreich registriert. <a href="login.php">Zum Login</a>';
			$showFormular = false;
		} else {
			echo 'Beim Abspeichern ist leider ein Fehler aufgetreten<br>';
		}
	} 
}
 
if($showFormular) {
?>

<form action="?register=1" method="post">
<img id="bg" src="./img/maldives-666122_960_720.jpg" hight="600" width="500";>
<div class="form-group">
<label for="inputUsername">Username:</label>
<input type="text" id="inputUsername" size="40" maxlength="250" name="Username" class="form-control" required>
</div>

<div class="form-group">
<label for="inputEmail">E-Mail:</label>
<input type="email" id="inputEmail" size="40" maxlength="250" name="email" class="form-control" required>
</div>

<div class="form-group">
<label for="inputPasswort">Dein Passwort:</label>
<input type="password" id="inputPasswort" size="40"  maxlength="250" name="passwort" class="form-control" required>
</div> 

<div class="form-group">
<label for="inputPasswort2">Passwort wiederholen:</label>
<input type="password" id="inputPasswort2" size="40" maxlength="250" name="passwort2" class="form-control" required>
</div> 
<button type="submit" class="btn btn-lg btn-primary btn-block">Beitreten</button>
</form>
 
<?php
} 
	

?>
</div>
<?php 
include("templates/footer.inc.php")
?>
