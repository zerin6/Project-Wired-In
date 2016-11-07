<?php
session_start();

include 'dbh.php';


    $uid = $_POST['uid'];
    $pwd = $_POST['pwd'];

    echo $uid."<br>";
    echo $pwd."<br>";

$sql = "SELECT * FROM user WHERE uid='$uid' AND pwd='$pwd'" ;
$result = mysqli_query($conn, $sql);

if (!$row = $result-> fetch_assoc()){
    echo "your username of password is incorrect!"
} else {
    $_SESSION['id'] = $row['id'];
}

header("Location: index.php");
?>