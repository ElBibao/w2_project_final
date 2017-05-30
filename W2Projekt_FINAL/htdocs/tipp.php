<?php
session_start();
require_once("inc/config.inc.php");
require_once("inc/functions.inc.php");

$user = check_user();

include("templates/header.inc.php");
?>
<img id="bg" src="./img/keyboard-1621105_960_720.jpg" hight="600" width="500";>
<div allign="center">
<ul class="blocktext3">
<?php
        if (isset($_POST['Tipp'])) {
                    $statement = $pdo->prepare("insert into Tipp(user_id, Tipp) values (?, ?)");
                    $statement->execute(array($_SESSION['userid'], $_POST['Tipp']));
        }
    ?>
<div class="container">
        <h1>USER-TIPP</h1>
<?php
      if (isset($_POST['Tipp'])) {
        $statement = $pdo->prepare('SELECT u.username, t.tipp from Tipp as t join users as u on u.id = t.user_id');
        $statement->execute();
        if ($statement->rowCount() == 0) {
          echo "<p>Keine Ergebnisse gefunden</p>";
        } else {
          while ($row = $statement->fetch()) { 
            echo "<b><u>".$row['username']."</b></u>";
            echo "<br>";
            echo "<i>".$row['tipp']."</i>";
	    echo "<br><br>";
          }
        }
      }
        ?>
    </div>	

<form class="form-register" action=""  method="post">
<label for="Tipp" class="sr-only">Tipp</label>
            <textarea class="span6" rows="3" placeholder="Tipp" name="Tipp" required autofocus></textarea>
<br><br>
<button class="btn btn-lg btn-primary" type="submit">Posten</button>
</form>
</ul>
</div>








