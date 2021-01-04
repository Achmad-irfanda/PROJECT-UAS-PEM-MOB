<?php
    include 'conn.php';

    $nama = $_POST ['nama'];
    $notelp = $_POST ['notelp'];
    $email = $_POST ['email'];
    $password = $_POST ['password'];

    $connect->query("INSERT INTO admin (nama, notelp, email, password) VALUES ('".$nama."','".$notelp."','".$email."','".$password."')")
?>