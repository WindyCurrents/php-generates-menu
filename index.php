<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $connection = new mysqli("localhost","root","","baza2p");
    $raw_result = mysqli_query($connection, "SELECT * FROM config ORDER BY ID_Menu ASC");
    ?>
    <div id="container">
        <?php
            while($result = mysqli_fetch_array($raw_result)){
                echo "<div class=menuitem><a target=_blank href=".$result['Funkcja'].">".$result['Treść']."</a></div>";
            }
        ?>
    </div>
</body>
</html>