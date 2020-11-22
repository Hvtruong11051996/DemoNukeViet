<?php
$conn = mysqli_connect("localhost", "root", "", "thuchanh") or die("kết nối thất bại !!!");
$conn->query("SET NAME 'UTF-8'");

$sql = "SELECT * FROM nv4_vi_location_province";
$query = mysqli_query($conn, $sql);

$district = "SELECT * FROM nv4_vi_location_district";
$qr_district = mysqli_query($conn, $district);

$conn = mysqli_connect("localhost", "root", "", "nukeviet4") or die("kết nối thất bại !!!");
$conn->query("SET NAME 'UTF-8'");

$samples = "SELECT * FROM nv4_vi_samples";
$qr_samples = mysqli_query($conn, $samples);


// if ($exe) {
//     if ($post['id'] > 0) {
//         $error[] = "Update ok!";
//     } else {
//         $error[] = "Insert ok!";
//     }
// } else {
//     $error[] = "Lỗi !";
// }