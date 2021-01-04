<?php
include 'conn.php';

$query_Result=$connect->query("SELECT * FROM tb_item");

$result=array();

while($fetchData=$query_Result->fetch_assoc()){
    $result[]=$fetchData; 
}

echo json_encode($result);

?>