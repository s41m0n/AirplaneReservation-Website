<img src="res/CryinairLogo.png" alt="Cryinair logo">
<div>
	<span>Cryinair</span><br />

<?php
require_once "../utility/db.php";
require_once "../utility/utility.php";

sec_session_start();

if (login_check($conn) === true) {
	echo "<p>Welcome back: " . $_SESSION["username"] . "</p>";
}

?>

</div>