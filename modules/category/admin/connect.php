<?php
$conn = mysqli_connect("localhost", "root", "", "shop_dienthoai") or die("kết nối thất bại !!!");
$conn->query("SET NAME 'UTF-8'");

$sql = "SELECT * FROM shop_category";
$category = mysqli_query($conn, $sql);
$arr_category = [];
while ($categorys = $category->fetch_array()) {

    $arr_category[$categorys['id']] = $categorys;
}

$sql = "SELECT * FROM shop_products";
$products = mysqli_query($conn, $sql);