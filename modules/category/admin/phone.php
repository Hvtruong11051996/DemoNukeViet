<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 31 Oct 2020 02:20:33 GMT
 */
include "connect.php";

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$page_title = $lang_module['phone'];

//------------------------------
// Viết code xử lý chung vào đây

// ========= Xóa dữ liệu ========== //

if ($nv_Request->isset_request("action", "post,get")) {
    $id_delete = $nv_Request->get_int('product_id', 'post,get', 0);
    $checksess = $nv_Request->get_title('checksess', 'post,get', 0);
    if ($id_delete > 0 and $checksess == md5($id_delete . NV_CHECK_SESSION)) {
        $db->query("DELETE FROM `shop_products` WHERE product_id=" . $id_delete);
    }
}
// =============================== //


// ============== Phân trang Dữ Liệu ================= //

$perpage = 9;
$page = $nv_Request->get_int('page', 'get', 1);


$db->sqlreset()
    ->select('COUNT(*)')
    ->from('shop_products');
$sql = $db->sql();
$total = $db->query($sql)->fetchColumn();
// print_r($total);
// die();

$db->select('*')
    ->order("weight ASC")
    ->limit($perpage)
    ->offset(($page - 1) * $perpage);
$sql = $db->sql();

$result = $db->query($sql);


while ($row = $result->fetch()) {
    $array_row[$row['product_id']] = $row;
}



// ================================================== //

// =========================================== //
// =========== Thay đổi Số thứ tự  ============= //
// =========================================== //
if ($nv_Request->isset_request("change_weight", "post,get")) {
    $product_id = $nv_Request->get_int('product_id', 'post,get', 0);
    $new_weight = $nv_Request->get_int('new_weight', 'post,get', 0);

    if ($product_id > 0 and $new_weight > 0) {
        $sql = "SELECT product_id,weight FROM shop_products WHERE product_id != " . $product_id;
        $result = $db->query($sql);
        $weight = 0;
        while ($products = $result->fetch()) {
            ++$weight;
            if ($weight == $new_weight) {
                ++$weight;
            }
            $exe = $db->query("UPDATE `shop_products` SET weight=" . $weight . " WHERE product_id=" . $products['product_id']);
        }
        $exe = $db->query("UPDATE `shop_products` SET weight=" . $new_weight . " WHERE product_id=" . $product_id);
    }
    if ($exe) {
        die("OK!");
    }
    die("Error");
}
// =========================================== //
// =========== Thay đổi Số thứ tự  ============= //
// =========================================== //
//------------------------------ //

$xtpl = new XTemplate('phone.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);

//-------------------------------
// Viết code xuất ra site vào đây

$i = ($page - 1) * $perpage;


foreach ($array_row as $products) {
    $products['stt'] = $i;
    $products['stt'] = $i + 1;

    for ($j = 1; $j <= $total; $j++) {
        $xtpl->assign('J', $j);
        $xtpl->assign('J_SELECT', $j == $products['weight'] ? 'selected="selected"' : '');

        $xtpl->parse('main.products.stt');
    }

    $products['cate'] = !empty($arr_category[$products['category_id']]) ? $arr_category[$products['category_id']]['name'] : '';
    $products['url_edit'] = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
        '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=create_phone&amp;product_id=' . $products['product_id'];
    $products['url_delete'] = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
        '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=phone&amp;product_id=' . $products['product_id'] . '&action=delete&checksess=' . md5($products['product_id'] . NV_CHECK_SESSION);
    $xtpl->assign('PD', $products);
    $xtpl->parse('main.products');
    $i++;
}

// ========Phân Trang ======== //

$base_url = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
    '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=phone';
$generate_page = nv_generate_page($base_url, $total, $perpage, $page);


//Nếu số bản ghi > 5 thì hiển thị khối phân trang
if ($total > 5) {
    $xtpl->assign('GP', $generate_page);
}
/* end code xuất ra site */


// ========Phân Trang ======== //



//-------------------------------

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
include NV_ROOTDIR . '/includes/footer.php';