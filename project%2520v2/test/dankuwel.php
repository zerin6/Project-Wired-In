
<?php
session_start();
require('dbh.php');
$firstname = $_POST['Voornaam'];
$lastname = $_POST['Achternaam'];
$email = $_POST['Emailadres'];
$subject = $_POST['Onderwerp'];
$message = $_POST['Bericht'];
$sql = "INSERT into contactformulieren (Voornaam, Achternaam, Emailadres, Onderwerp, Bericht)
VALUES ('$firstname','$lastname','$email','$subject','$message')";
$result = mysqli_query($conn, $sql);
header( "refresh:3;url=Contact.php" );
?>
<html>
<h4>Dank voor uw bericht. Wij zullen zo spoedig mogelijk contact opnemen.</h4>
</html>