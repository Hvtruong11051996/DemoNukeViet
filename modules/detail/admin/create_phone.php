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

$page_title = $lang_module['create_phone'];

//------------------------------
// Viết code xử lý chung vào đây

$post = [];
$error = [];
$post['id'] = $nv_Request->get_int('id', 'post,get', 0);
$post['product_id'] = $nv_Request->get_int('product_id ', 'post', '');
$post['screen'] = $nv_Request->get_title('screen', 'post', '');
$post['operating'] = $nv_Request->get_title('operating', 'post', '');
$post['front_camera'] = $nv_Request->get_title('front_camera', 'post', '');
$post['rear_camera'] = $nv_Request->get_title('rear_camera', 'post', '');
$post['CPU'] = $nv_Request->get_title('CPU', 'post', '');
$post['RAM'] = $nv_Request->get_title('RAM', 'post', '');
$post['internal_memory'] = $nv_Request->get_title('internal_memory', 'post', '');
$post['SIM'] = $nv_Request->get_title('SIM', 'post', '');
$post['battery_capacity'] = $nv_Request->get_title('battery_capacity', 'post', '');
$post['submit'] = $nv_Request->get_title('submit', 'post', '');

if (!empty($post['submit'])) {

    if (empty($error)) {
        if ($post['id'] > 0) {
            // update
            $sql = "UPDATE `shop_phone_details` SET
            product_id=:product_id,screen=:screen,operating=:operating,front_camera=:front_camera,rear_camera=:rear_camera,
            CPU=:CPU,RAM=:RAM,internal_memory=:internal_memory,SIM=:SIM,battery_capacity=:battery_capacity WHERE id = " . $post['id'];
            $s = $db->prepare($sql);
        } else {
            //  Insert
            $sql = "INSERT INTO `shop_phone_details`
            (`product_id`,`screen`,`operating`,`front_camera`,`rear_camera`,`CPU`, `RAM`, `internal_memory`, `SIM`, `battery_capacity`,`weight`) 
            VALUES ( :product_id,:screen, :operating, :front_camera, :rear_camera, :CPU, :RAM, :internal_memory, :SIM, :battery_capacity, :weight)";
            $s = $db->prepare($sql);
            $s->bindValue('weight', 1);
        }
        $s->bindParam('product_id', $post['product_id']);
        $s->bindParam('screen', $post['screen']);
        $s->bindParam('operating', $post['operating']);
        $s->bindParam('front_camera', $post['front_camera']);
        $s->bindParam('rear_camera', $post['rear_camera']);
        $s->bindParam('CPU', $post['CPU']);
        $s->bindParam('RAM', $post['RAM']);
        $s->bindParam('internal_memory', $post['internal_memory']);
        $s->bindParam('SIM', $post['SIM']);
        $s->bindParam('battery_capacity', $post['battery_capacity']);
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

    $sql = "SELECT * FROM `shop_phone_details` WHERE id = "  . $post['id'];
    $post =  $db->query($sql)->fetch();
}

// ====================================== //

//------------------------------

$xtpl = new XTemplate('create_phone.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
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

foreach ($products as $products) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $xtpl->assign('PD', $products);
    $xtpl->parse('main.products');
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