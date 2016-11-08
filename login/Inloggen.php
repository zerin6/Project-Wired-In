<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Inlog Pagina</title>
    <link rel="stylesheet" type="text/css" href="../styles.css"/>
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

    <a href="../Homepage.php">Home     </a>&nbsp;
    <a href="Inloggen.php">Inloggen </a>&nbsp;
    <a href="../Contact.php">Contact   </a>&nbsp;
    <a href="../Recensie.php">Recensie </a>&nbsp;
    <a href="logout.php"> Uitloggen</a>&nbsp;

    <img src="../Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />


    <form action="login.php" method="post">


        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="first" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit">Inloggen</button>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <span class="psw"> <a href="registreren.php">Registreren</a></span>
        </div>
    </form>
    <br/>
    <?php if(isset($_SESSION['id']))  {
        echo "Ingeloged";
    } else {
        echo "Je bent niet ingelogd!";
    }
    ?>



</body>
</html>


