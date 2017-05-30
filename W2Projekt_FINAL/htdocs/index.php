<?php 
session_start();
require_once("inc/config.inc.php");
require_once("inc/functions.inc.php");
include("templates/header.inc.php")
?>
<div>
	<img id="bg" src="./img/hotel-1330841_960_720.jpg" hight="600" width="500";>
	<div class="oben">

        <h1><center>Genießen Sie unsere handverlesene Auswahl an Hotels</center></h1>
	<p><center><a class="btn btn-primary btn-lg" href="register.php" role="button">Jetzt Mitglied werden</a></center></p>
        </div>
	<div allign="center">
          <ul class="blocktext2"><b>
		<h2>Ihre Vorteile: </h2>
                <li>Werden Sie Mitglied in DEM Hotel-Club</li> 
                <li>Bei uns finden Sie Berichte von anderen anspruchsvollen Urlaubern</li>
                <li>Vergleichen Sie Hotels und finden Sie herraus, ob diese Ihren Ansprüchen wirklich genügen.</li>
                <li>Und das Alles ist vollkommen kostenlos für Sie</li>
	     </ul></b>
      	</div>

  
<?php 
include("templates/footer.inc.php")
?>
