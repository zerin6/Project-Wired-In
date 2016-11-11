<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <title>Contact</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>

<body>


<div class = "mainContainer">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <a href="Homepage.php">Home     </a>&nbsp;
    <a href="login/Inloggen.php">Inloggen </a>&nbsp;
    <a href="Recensie.php">Recensie </a>&nbsp;
    <a href="login/logout.php"> Uitloggen</a>

    <img src="Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />

        <h1>Contactdetails:</h1> <br />

        <h3>Tel. nr.: 06-43183692</h3> <br />

        <h3>E-mail: sam.vanputten@outlook.com</h3><br /><br />

        <h3>Verstuur een bericht via de website:</h3>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <?php /*het formulier hieronder roept het bestand 'Dankuwel.php' op. De data die hier ingevoerd wordt
    gaat dus automatisch naar de database. */?>
    
        <form action="Dankuwel.php" method="POST">
            Voornaam:<br />
            <input type="text" name="Voornaam" required><br>

            Achternaam:<br />
            <input type="text" name="Achternaam" required><br>

            Emailadres:<br />
            <input type="text" name="Emailadres" required><br>

            Onderwerp:<br />
            <input type="text" name="Onderwerp" required><br>

            Bericht:<br />
            <input type="text" name="Bericht" required><br>
            <input type="submit" value="Verstuur"><br>
     <?php /*wanneer je op submit klikt word je doorverwezen naar een lege pagina met een bevestigingsbericht, 
            waarna je automatisch weer naar 'Contact.php' wordt doorverwezen */ ?>
        </form>
    </div>
    </body>
</html>

