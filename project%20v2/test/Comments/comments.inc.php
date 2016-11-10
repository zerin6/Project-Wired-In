<?php

function SetComments($conn) {
 if (isset($_POST['commentSubmit'])) {
    $uid = $_POST ['uid'];
     $date = $_POST ['date'];
     $message = $_POST ['message'];
$sql = "INSERT INTO comments (uid, date, message) VALUES ('$uid', '$date', '$message')";
     $result = mysqli_query($conn, $sql);
 }
}

function getComments($conn) {
    $sql = "SELECT * FROM comments";
    $result = mysqli_query($conn, $sql);
    while ($row = $result->fetch_assoc()) {
        echo "<div class='comment-box'><p>";
        echo $row['uid']."<br>";
        echo $row['date']."<br>";
        echo nl2br($row['message']);
        echo "</p></div>";

    }

}


function getLogin($conn) {
    if (isset($_POST['loginSubmit'])) {
        $uid = $_POST['uid'];
        $pwd = $_POST['pwd'];

        $sql = "SELECT * FROM user uid='$uid' AND pwd='$pwd''";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            if ($row = $result->fetch_assoc()) {
                $_SESSION['id'] = $row['id'];
                header("Location: index.php?loginsuccess");
                exit();
            }

        } else {
            header("Location: index.php?loginfailed");
            exit();
        }
    }
}



?>