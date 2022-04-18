<?php
        $dataArray = array();
        $conn = mysqli_connect("localhost", "root", "", "project");
        mysqli_set_charset($conn, "utf8mb4");
        $sql = "SELECT * FROM book";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $dataArray[] = $row;
            }
            echo json_encode($dataArray, JSON_UNESCAPED_UNICODE);
        } else {
            echo "No Results";
        }
        ?>