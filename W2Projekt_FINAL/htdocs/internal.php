<?php
session_start();
require_once("inc/config.inc.php");
require_once("inc/functions.inc.php");

$user = check_user();

include("templates/header.inc.php");
?>

<div class="container main-container" id="schwarzeschrift">
<img id="bg" src="./img/hotel-389256_960_720.jpg" hight="600" width="500";>
<h1>Herzlich Willkommen!</h1>

Hallo <?php echo htmlentities($user['username']); ?>,<br>
Herzlich Willkommen im internen Bereich!<br><br>

<h4>Hier können Sie unter dem Menüpunkt Einstellungen Ihre Mail, Ihr Passwort oder Ihren Usernamen ändern.</h4>
<h1> </h1>

<h4> Folgende Hotels werden für Sie empfohlen: </h4>
</div>
   <div class="row">  
        <div class="col-md-4">
          <ul class="blocktext"><b>
                <h2>Dom Hotel Worms: </h2>
		<td><img src="img/Dom_Hotel.gif" alt="Dom Hotel" width="200" height="109"/><br /></td>
	                <?php
			$statement=$pdo->prepare('SELECT Beschreibung FROM Hotelbeschreibung WHERE Hotelbeschreibung_ID = ?'); 
			$statement->execute(array(2));
			$bes=$statement->fetch();
			echo $bes['Beschreibung'];?> 
             	</div>
		</ul></b>
	<div class="col-md-4">
	 <ul class="blocktext"><b>
		<h2>Parkhotel Prinz Carl: </h2>
		<td><img src="img/Park_Hotel.gif" alt="Parkhotel Prinz Carl" width"200" height="109"/><br /></td>
                <?php
			$statement=$pdo->prepare('SELECT Beschreibung FROM Hotelbeschreibung WHERE Hotelbeschreibung_ID = ?'); 
			$statement->execute(array(1));
			$bes=$statement->fetch();
			echo $bes['Beschreibung'];?> 
		</div>
		</ul></b>
	<div class="col-md-4">
	 <ul class="blocktext"><b>
		<h2> Asgard Hotel: </h2>
		<td><img src="img/Asgard_Hotel.gif" alt="Asgrad Hotel" width"200" height="109"/><br /></td>
                <?php
			$statement=$pdo->prepare('SELECT Beschreibung FROM Hotelbeschreibung WHERE Hotelbeschreibung_ID = ?'); 
			$statement->execute(array(3));
			$bes=$statement->fetch();
			echo $bes['Beschreibung'];?> 
		</div>
		</ul></b>
      </div>
        </div> 


</div>
<?php 
include("templates/footer.inc.php")
?>
