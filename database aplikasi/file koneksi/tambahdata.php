<?php
    include 'conn.php';

    $judul = $_POST ['judul'];
    $pengarang = $_POST ['pengarang'];
    $tahun = $_POST ['tahun'];
    $jumlah = $_POST ['jumlah'];
    $rak = $_POST ['rak'];

    $connect->query("INSERT INTO tb_item (judul, pengarang, tahun, jumlah, rak) VALUES ('".$judul."','".$pengarang."','".$tahun."','".$jumlah."','".$rak."')")
?>