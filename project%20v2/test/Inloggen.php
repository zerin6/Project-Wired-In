<!DOCTYPE html>
<html>
<header>
    <title>Inlog Pagina</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</header>

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
    <a href="Inloggen.php">Inloggen </a>&nbsp;
    <a href="Contact.php">Contact   </a>&nbsp;
    <a class="btn" href="Comments/index.php">Recensie </a>&nbsp;
    <a href="winkelwagen/index.php"> Winkelwagen</a>

    <img src="Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />



    <form action="connect.php" method="post">


            <div class="container">
                <label><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <button type="submit">Login</button>
                <input type="checkbox" checked="checked"> Remember me
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" class="cancelbtn">Cancel</button>
                <span class="psw"> <a href="hier komt link naar password vergeetscherm">Forgot password?</a></span>
            </div>
        </form>

</body>
</html>


