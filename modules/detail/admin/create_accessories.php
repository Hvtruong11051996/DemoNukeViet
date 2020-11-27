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

$page_title = $lang_module['create_accessories'];

//------------------------------
// Viết code xử lý chung vào đây

$post = [];
$error = [];
$post['id'] = $nv_Request->get_int('id', 'post,get', 0);
$post['accessories_id'] = $nv_Request->get_int('accessories_id', 'post', '');
$post['slug'] = $nv_Request->get_title('slug', 'post', '');
$post['description'] = $nv_Request->get_textarea('description', 'post', '', NV_ALLOWED_HTML_TAGS);
$post['submit'] = $nv_Request->get_title('submit', 'post', '');

if (!empty($post['submit'])) {

    if (empty($error)) {
        if ($post['id'] > 0) {
            // update
            $sql = "UPDATE `shop_accessories_detail` SET
            accessories_id=:accessories_id,slug=:slug,description=:description WHERE id = " . $post['id'];
            $s = $db->prepare($sql);
        } else {
            //  Insert
            $sql = "INSERT INTO `shop_accessories_detail`
            (`accessories_id`, `slug`,`description`, `weight`) 
            VALUES (:accessories_id, :slug, :description, :weight)";
            $s = $db->prepare($sql);
            $s->bindValue('weight', 1);
        }
        $s->bindParam('accessories_id', $post['accessories_id']);
        $s->bindParam('slug', $post['slug']);
        $s->bindParam('description', $post['description']);
        $exe = $s->execute();

        if ($post['id'] > 0) {
            $error[] = "Update ok!";
        } else {
            $error[] = "Insert ok !";
        }
    }
}

// ============= Edit dữ liệu ============ //
if ($post['id'] > 0) {

    $sql = "SELECT * FROM `shop_accessories_detail` WHERE id = "  . $post['id'];
    $post =  $db->query($sql)->fetch();
}

//------------------------------

$xtpl = new XTemplate('create_accessories.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);
$xtpl->assign('Error', implode('<br>', $error));
$xtpl->assign('POST', $post);


//-------------------------------
// Viết code xuất ra site vào đây

foreach ($accessories as $accessories) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $xtpl->assign('PD', $accessories);
    $xtpl->parse('main.accessories');
}

//-------------------------------

if (!empty($error)) {
    $xtpl->parse('main.error');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';