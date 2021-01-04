<?php
    include 'conn.php';
     
    $id = $_POST ['id'];
    $judul = $_POST ['judul'];
    $pengarang = $_POST ['pengarang'];
    $tahun = $_POST ['tahun'];
    $jumlah = $_POST ['jumlah'];
    $rak = $_POST ['rak'];

    $connect->query("UPDATE tb_item SET judul='".$judul."', pengarang='".$pengarang."', tahun='".$tahun."', rak='".$rak."' WHERE id=".$id);
?>