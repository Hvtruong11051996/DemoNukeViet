<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 31 Oct 2020 02:20:33 GMT
 */

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$page_title = $lang_module['admin'];

$post = [];

//------------------------------
// Viết code xử lý chung vào đây
//------------------------------

$xtpl = new XTemplate('admin.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);
$xtpl->assign('POST', $post);  

//-------------------------------
// Viết code xuất ra site vào đây
//-------------------------------
// 

$sql = "SELECT `id`, `name`, `password`, `activated` FROM `shop_admin` ORDER BY name ASC";
$result = $db->query($sql);
$array_admin = [];
while ($admin = $result->fetch()){
//   print_r($admin);die; 
//  $array_admin= $admin['id'] = $admin;
}

$xtpl->parse('main');
$contents = $xtpl->text('main');


foreach ($array_admin as $key=> $admin) {
    $xtpl->assign('ADMIN', array(
        "key" => $key,
        "title"=> $admin
    ));
    $xtpl->parse('main.admin');
}

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';