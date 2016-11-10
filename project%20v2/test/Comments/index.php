<?php
session_start();
?>

<?php
date_default_timezone_set('Europe/Amsterdam');
include 'comments.inc.php';
include 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
<style>

    .mainContainer {
        margin: 0 auto;
        width: 1200px;
        min-height: 0px;

        background-color: #e3e3e3;
        border: solid-white 2px;

        border-radius: 15px;
        border-color: #8e385d;

        padding-top: 20px;
        padding-left: 20px;
        padding-right: 20px;
    }

    /* Bordered form */
    form {
        border: 3px solid #f1f1f1;
    }

    /* Full-width inputs */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
        background-color: #af3c17;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 38%;
    }


    /* Center the avatar image inside this container */
    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    /* Avatar image */
    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    /* Add padding to containers */
    .container {
        padding: 16px;
    }

    /* The "Forgot password" text */
    span.psw {
        float: right;
        padding-top: 16px;
    }


    }

    *{margin: 0; padding: 0;}
    ul {
        list-style: none;
    }
    ul li {
        width: 150px;
        background: #9d2d05;
        paddig: 20px;
        border-top: 5px solid #000000;
        transition: opacity .2s, margin-left .5s;
    }
    ul li a {
        text-decoration: none;
        color: #fff;
        font-size: 1em;;
        text-transform: uppercase;
        text-shadow: 0 0 1px rgb(0, 0, 0);
    }
    ul li:hover{
        opacity: .9;
        margin-left: 7px;
    }


    textarea {
        width: 449px;
        height: 100px;
        background-color: cornsilk;
        resize:none;
    }
.comment-box {
    width: 449px;
    padding: 20px;
    margin-bottom; 4px;
    background-color: #fff;
    border-radius: 4px;
}

</style>
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
    <!--top links-->
    <a class="btn" href="../Homepage.php">Home     </a>&nbsp;
    <a class="btn" href="../login/Inloggen.php">Inloggen </a>&nbsp;
    <a class="btn" href="../Contact.php">Contact   </a>&nbsp;
    <a class="btn" href="index.php">Recensie </a>&nbsp;
    <a href="../login/logout.php"> Uitloggen</a>
    <a href="../winkelwagen/index.php"> Winkelwagen</a>

    <img src="../Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />


    <!--side menu + opmaak-->
    <ul>
        <li><a href="../bar_v2/catagorie.php">Catagorie</a></li>
        <li><a href="../bar_v2/audiokabel.php">Audiokabels</a></li>
        <li><a href="../bar_v2/tvkabel.php">TvKabels</a></li>
        <li><a href="../bar_v2/netwerkkabel.php">Netwerkkabels</a></li>
        <li><a href="../bar_v2/verlengsnoer.php">Verlengsnoeren</a></li>
        <li><a href="../bar_v2/hdmikabel.php">HDMIkabels</a></li>
        <li><a href="../bar_v2/smartphone.php">Smartphones</a></li>
        <li><a href="../bar_v2/usbkabel.php">USBkabels</a></li>
        <li><a href="../bar_v2/spelcomputer.php">Spelcomputers</a></li>
        <li><a href="../bar_v2/vastetelefoon.php">Vaste telefonie</a></li>
        <li><a href="../bar_v2/fotoencamera.php">Foto en Camera</a></li>
    </ul>

<?php

if(isset($_SESSION['id'])) {
    echo "<form method='post' action='".setcomments($conn)."'>
        <input type='hidden' name='uid' value='anonymous'>
        <input type='hidden' name='date' value=".date('Y-m-d H:i:s').">
        <textarea name='message'></textarea> <br/>
        <button type='submit' name='commentSubmit'> Plaats </button> </form>";
} else {
    echo "<br><br> Je moet ingelogd zijn om te commente!";
}


getComments($conn)

?>






</body>
</html>

