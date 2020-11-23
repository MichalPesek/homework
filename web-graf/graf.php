<!DOCTYPE html>
<html>
    <head>
        <title>web</title>
        <meta charset="UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <?php
        $data = filter_input(INPUT_GET, "data");
        $pole = explode(",", $data);
        for ($i = 0; $i < count($pole); $i++) {
            $pole[$i] = intval($pole[$i]);
        }
        foreach ($pole as $val) {
            echo "<p>";
            for ($i = 0; $i < $val; $i++) {
                echo '*';
            }
            echo "</p>\n";
        }
        ?>
        <form action="help.php" method="GET">
            <input type="text" name="data" value="<?php echo $data ?>">
            <input type="submit" value="Go">
            
        </form>
    </body>
</html>
