<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 31 Oct 2020 02:20:33 GMT
 */

if (!defined('NV_ADMIN') or !defined('NV_MAINFILE') or !defined('NV_IS_MODADMIN')) {
    die('Stop!!!');
}

define('NV_IS_FILE_ADMIN', true);

$allow_func = ['main', 'config', 'list', 'UploadFile'];

// ============== Kết nối data   ================

$conn = mysqli_connect("localhost", "root", "", "thuchanh") or die("kết nối thất bại !!!");
$conn->query("SET NAME 'UTF-8'");

$sql = "SELECT * FROM nv4_vi_location_province";
$query = mysqli_query($conn, $sql);
$arr_province = [];
while ($province = $query->fetch_array()) {

    $arr_province[$province['id']] = $province;
}

$district = "SELECT * FROM nv4_vi_location_district";
$qr_district = mysqli_query($conn, $district);

$conn = mysqli_connect("localhost", "root", "", "nukeviet4") or die("kết nối thất bại !!!");
$conn->query("SET NAME 'UTF-8'");

$samples = "SELECT * FROM nv4_vi_samples";
$qr_samples = mysqli_query($conn, $samples);

// ============  END ============================
$arr_gender = [];
$arr_gender[1] = "Nam";
$arr_gender[2] = "Nữ";