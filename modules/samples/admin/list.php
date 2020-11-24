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

$page_title = $lang_module['main'];

// =========================================== //
// =========== Phân trang dữ liệu ============= //
// =========================================== //


$perpage = 5;
$page = $nv_Request->get_int('page', 'get', 1);


$db->sqlreset()
    ->select('COUNT(*)')
    ->from('nv4_vi_samples');
$sql = $db->sql();
$total = $db->query($sql)->fetchColumn();

$db->select('*')
    ->order("id ASC")
    ->limit($perpage)
    ->offset(($page - 1) * $perpage);
$sql = $db->sql();
// print_r($sql);
$result = $db->query($sql);

while ($row = $result->fetch()) {
    $array_row[$row['id']] = $row;
}


// =========================================== //
// =========== Phân trang dữ liệu ============= //
// =========================================== //

// =========================================== //
// =========== Xóa dữ liệu =================== //
// =========================================== //
if ($nv_Request->isset_request("action", "post,get")) {
    $id_delete = $nv_Request->get_int('id', 'post,get', 0);
    $checksess = $nv_Request->get_title('checksess', 'post,get', 0);
    if ($id_delete > 0 and $checksess == md5($id_delete . NV_CHECK_SESSION)) {
        $db->query("DELETE FROM `nv4_vi_samples` WHERE id=" . $id_delete);
    }
}
// =========================================== //
// =========== Xóa dữ liệu =================== //
// =========================================== //

// =========================================== //
// == Thay đổi trạng thái người dùng=========  //
// =========================================== //
if ($nv_Request->isset_request("change_active", "post,get")) {
    $id = $nv_Request->get_int('id', 'post,get', 0);
    $sql = "SELECT id,active FROM nv4_vi_samples WHERE id=" . $id;
    $result = $db->query($sql);
    if ($row = $result->fetch()) {
        $active = $row['active'] == 1 ? 0 : 1;
        $exe = $db->query("UPDATE `nv4_vi_samples` SET active=" . $active . " WHERE id=" . $id);
        if ($exe) {
            die("OK!");
        }
    }
    die("Error");
}
// =========================================== //
// =========== Thay đổi Số thứ tự  ============= //
// =========================================== //
if ($nv_Request->isset_request("change_weight", "post,get")) {
    $id = $nv_Request->get_int('id', 'post,get', 0);
    $new_weight = $nv_Request->get_int('new_weight', 'post,get', 0);
    if ($id > 0 and $new_weight > 0) {
        $sql = "SELECT id,weight FROM nv4_vi_samples WHERE id != " . $id;
        $result = $db->query($sql);
        $weight = 0;
        while ($list = $result->fetch()) {
            ++$weight;
            if ($weight == $new_weight) {
                ++$weight;
            }
            $exe = $db->query("UPDATE `nv4_vi_samples` SET weight=" . $weight . " WHERE id=" . $list['id']);
        }
        $exe = $db->query("UPDATE `nv4_vi_samples` SET weight=" . $new_weight . " WHERE id=" . $id);
    }
    if ($exe) {
        die("OK!");
    }
    die("Error");
}
// =========================================== //
// =========== Thay đổi Số thứ tự  ============= //
// =========================================== //


//------------------------------
// Viết code xử lý chung vào đây
//------------------------------

$xtpl = new XTemplate('list.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);

// =========== Truyền dữ liệu sang View ============= //

$i = ($page - 1) * $perpage;

foreach ($array_row as $list) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $list['stt'] = $i;
    $list['stt'] = $i + 1;

    for ($j = 1; $j < 10; $j++) {
        $xtpl->assign('J', $j);
        $xtpl->assign('J_SELECT', $j == $list['weight'] ? 'selected="selected"' : '');

        $xtpl->parse('main.list.stt');
    }
    $list['url_edit'] = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
        '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=main&amp;id=' . $list['id'];
    $list['url_delete'] = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
        '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=list&amp;id=' . $list['id'] . '&action=delete&checksess=' . md5($list['id'] . NV_CHECK_SESSION);
    $list['gender'] = !empty($arr_gender[$list['gender']]) ? $arr_gender[$list['gender']] : '';
    $list['adress'] = !empty($arr_province[$list['province']]) ? $arr_province[$list['province']]['title'] : '';
    $list['active'] = $list['active'] == 1 ?  'checked="checked"' : '';
    $xtpl->assign('LIST', $list);
    $xtpl->parse('main.list');
    $i++;
}

// ========Phân Trang ======== //
$base_url = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE .
    '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=list';
$generate_page = nv_generate_page($base_url, $total, $perpage, $page);
$xtpl->assign('GP', $generate_page);

// ========Phân Trang ======== //

// =========== Truyền dữ liệu sang View ============= //

//-------------------------------
// Viết code xuất ra site vào đây
//-------------------------------

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';