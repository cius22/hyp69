<?php
    $servername = "ftp.hyp69.altervista.org";
    $username = "hyp69";
    $password = "rebgafimra50";
    $dbname = "my_hyp69";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 
    
    
    $where=$_GET["ID"];
    $sql = "SELECT * FROM Prodotto WHERE ".$where;
    $result = $conn->query($sql);

    if ($result->num_rows==1) {
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        echo "0 results";
    }
    $conn->close();
?>